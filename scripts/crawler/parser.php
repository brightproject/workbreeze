<?php

interface IParser {
	public function getSiteCode();
	public function getSiteName();
	public function getSiteFolder();
	public function getParserName();
	public function getUrl();

	public function processJobList();
	public function processJob($id, $url);
}

class Parser {

	const Agent = 'workbreeze crawler';
	
	private $db;

	private $queue;
	private $jobs;
	
	private $queuedCount = 0;

	public function __construct($db) {
		$this->db = $db;
		
		$this->queue = $db->queue;
		$this->jobs  = $db->jobs;
	}
	
	public function getQueuedCount() {
		return $this->queuedCount;
	}
	
	protected function log($info) {
		$tmp = $this->db->log->findOne($info);
		
		if (null === $tmp) {
			$info['stamp'] = time();
			$this->db->log->insert($info);
		}
		
		if (isset($info['msg']))
			echo $info['msg'] . "\n";
	}
	
	protected function queueJobLink($jobId, $link) {
		$info = array(
			'site' => $this->getSiteCode(),
			'id'   => $jobId
		);
	
		$tmp = $this->jobs->findOne($info);
		
		if (null != $tmp)
			return false;
			
		$info['type'] = 'job';
			
		$tmp = $this->queue->findOne($info);
		
		if (null != $tmp)
			return false;
			
		echo 'Queueing job [' . $link . "]\n";
		
		$info['url'] = $link;
		
		$this->queue->insert($info);
		
		$this->queuedCount++;
		
		return true;
	}
	
	private function getJobPagePath($id) {
		return PUBLIC_JOBS_DIR . $this->getSiteFolder() . DIRECTORY_SEPARATOR . $id . '.html';
	}
	
	private function generateJobPage($info) {
		$fname = $this->getJobPagePath($info['id']);
		
		if (!file_exists(dirname($fname))) {
			mkdir(dirname($fname), 0777, true);
		}
		
		$content = <<<EOF
<!DOCTYPE html>
<html>
        <title>WorkBreeze - {$info['title']}</title>

        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="/css/main.css" type="text/css" />
<body>
<div id="logo"><a href="/index.html">WorkBreeze</a></div>
<br />

{$info['desc']}
<br /><br />

<a href="{$info['url']}">&gt; {$this->getSiteName()}</a>
</body>
</html>
EOF;

		$content = str_replace(array("\t", "\r", "\n"), '', $content);
		$content = str_replace('  ', ' ', $content);
		
		file_put_contents($fname, $content);
		
		$out = system('gzip -c9 ' . $fname . ' > ' . $fname . '.gz');
	}
	
	protected function addJob($info) {
		$info['site']  = $this->getSiteCode();
		$info['stamp'] = time();
		
		if (
			isset($info['categories'])
			&& 0 === count($info['categories'])
		) {
			unset($info['categories']);
		}
	
		$this->db->jobs->insert($info);
		
		$this->generateJobPage($info);
		
		echo 'Job ' . $info['id'] . " added\n";

		return true;
	}
	
	protected function afterRequest($data) {
		return $data;
	}

	protected function getRequest($url) {
		$c = curl_init();
		
		echo $url . '... ';
		
		curl_setopt($c, CURLOPT_URL, $url);
		curl_setopt($c, CURLOPT_USERAGENT, Parser::Agent);
		curl_setopt($c, CURLOPT_ENCODING, 'gzip');
		curl_setopt($c, CURLOPT_RETURNTRANSFER, true);
		
		$result = curl_exec($c);
			
		$info = curl_getinfo($c);
		
		curl_close($c);
		
		if (
			isset($info['size_download'])
		) {
			$bytes = (int) $info['size_download'];
			$symbol = array('b', 'kb', 'mb');

			$exp = 0;
			$converted_value = 0;
			if ($bytes > 0) {
				$exp = floor( log($bytes)/log(1024) );
				$converted_value = ( $bytes/pow(1024,floor($exp)) );
			}

			echo '[' . sprintf( '%.2f '.$symbol[$exp], $converted_value ) . "]\n";
		}
		
		if (
			isset($info['http_code'])
			&& 200 != $info['http_code']
		) {
			if (404 == $info['http_code']) {
				return 404;
			} else		
				return false; 
		}
	
		$result = $this->afterRequest($result);
		
		return $result;
	}

}