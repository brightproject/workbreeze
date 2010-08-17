<?php

class Parser_freelance extends Parser implements IParser {

	public function getSiteCode() {
		return 1;
	}
	
	public function getSiteName() {
		return 'Free-Lance.ru';
	}
	
	public function getSiteFolder() {
		return 'freelance';
	}

	public function getParserName() {
		return 'Free-Lance.ru parser 0.1';
	}
	
	public function getUrl() {
		return 'http://www.free-lance.ru';
	}
	
	public function isProxyfied() {
		return true;
	}

	protected function afterRequest($data) {
		return iconv('cp1251', 'utf-8', $data);
	}

	public function processJobList() {
		$res = $this->getRequest('http://www.free-lance.ru/?kind=5');
		
		if (!$res)
			return false;
			
/*
	<a class="prjlnk" name="prj468407" href="/projects/?pid=468407">
*/

		preg_match_all('/href="(\/projects\/\?pid=(\d+))"/', $res, $matches);
		
		array_shift($matches);
	
		if (0 === count($matches))
			return;
			
		$matches = array_combine($matches[1], $matches[0]);

		foreach($matches as $key => $match) {
				$this->queueJobLink($key, 'http://www.free-lance.ru' . $match);
		}
	}
	
	public function processJob($id, $url) {
		$res = $this->getRequest($url);
		
//		$res = file_get_contents('test.txt');
	
		if (!$res)
			return false;
			
		if (404 === $res)
			// drop queued jobs that are not found
			return true;
			
		$info = array(
			'id'  => $id,
			'url' => $url
		);
		
/*
<h2 class="prj_name">Курьер в компанию Free-lance.ru</h2>
<div class="prj_text" id="projectp468008"> 
	Здравствуйте.&nbsp; &nbsp;<br/>
	<br/> <br/>
	Обязательные требования: проживание в Москве, ежедневная возможность доставки из пункта А в пункт Б в какой-либо половине дня, аккуратность, 
	внимательность, пунктуальность.&nbsp; &nbsp;<br/><br/>
	Возможно совмещение с учебой.&nbsp; &nbsp;<br/>
	Доставка только в рабочие дни.&nbsp; &nbsp;<br/>
	Количество доставок &#150; 20-30 в месяц, в декабре больше. <br/>
	Оплата одной доставки &#150; 200 рублей. <br/>
	В конце каждой недели &#150; отчет. Сам отчет предоставим, заполнять научим.<br/>
	Руководитель &#150; Ирина Котова. <br/> <br/>
	От вас хочется увидеть:&nbsp; &nbsp;<br/>– небольшой рассказ о себе;&nbsp; &nbsp;<br/>– срок, в течении которого вы готовы работать на данной позиции. <br/> <br/>
	Пожалуйста, отвечайте прямо в проект. <br/> <br/>
	---&nbsp; &nbsp;<br/>С наилучшими пожеланиями,&nbsp; &nbsp;<br/>Василий Воропаев.
</div> 
*/

		$contest = false;

		if (
			preg_match('/<h3>(.*?)<\/h3>/', $res, $matches)
			&& 2 === count($matches)
		) {
			$info['title'] = trim($matches[1]);
			
			$contest = true;
		} else
			if (preg_match('/<h2 class="prj_name">(.*?)<\/h2>/', $res, $matches)) {
		
			if (2 != count($matches)) {
				$this->log(array(
					'url'  => $url, 
					'msg'  => 'can\'t extract title' 
				));
				return true;
			}
		
			$info['title'] = trim($matches[1]);
		} else {
				$this->log(array(
					'url'  => $url, 
					'msg'  => 'can\'t extract title' 
				));
				return true;
		}
		
		if (!$contest) {
			preg_match('/prj_text"(.*?)>(.*?)<\/div>/is', $res, $matches);
			
			if (3 != count($matches)) {
				$this->log(array(
					'url'  => $url, 
					'msg'  => 'can\'t extract description' 
				));
				return true;
			}
		
			array_shift($matches);
			array_shift($matches);
		
			$description = array_shift($matches);
		} else {
			preg_match('/<\/h3>(.*?)<\/div/is', $res, $matches);
			
			if (2 != count($matches)) {
				$this->log(array(
					'url'  => $url, 
					'msg'  => 'can\'t extract contest description' 
				));
				return true;
			}
					
			$description = $matches[1];
		}
		
		$description = str_replace('&nbsp;', '', $description);
		$description = str_replace('  ', ' ', $description);
		$description = str_replace('> ', '>', $description);
		$description = str_replace('<br/>', "\n", $description);
		$description = str_replace("\n\n\n", "\n\n", $description);
		
		$description = strip_tags($description, '<a>');
		$description = trim($description);
		
		$description = str_replace(array("\r\n", "\r", "\n"), '<br />', $description);
		
		if (preg_match_all('/a href="\/a.php\?href=(.*?)"/', $description, $matches)) {
			array_shift($matches);
			
			$urls = array_shift($matches);
			
			foreach($urls as $url) {
				$urlnew = urldecode($url);

				$description = str_replace('/a.php?href=' . $url, $urlnew, $description);
			}
			
			$description = str_replace('target="_blank"', '', $description);
			$description = str_replace('  ', ' ', $description);
		}
		
		$info['desc'] = str_replace('<br /><br />', '<br />', $description);
		
		if (preg_match('/([^ \n\r]+[ \n\r]+){30}/s', $info['desc'], $match))
			$info['short'] = $match[0] . '...';
		
		$this->addJob($info);
		
		return true;
	}

}























