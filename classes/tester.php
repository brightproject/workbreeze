<?php

require(PATH_CLASSES . DIRECTORY_SEPARATOR . 'parser.php');

class Tester {

	private $db;
	private $job;
	
	private $rowcnt;
	
	public function __construct($db) {
		$this->job = new Job($db);
		$this->db = $db;
	}

	private function testCompacterFile($file) {
		$i = pathinfo($file);

		$outname = $i['dirname'] . DIRECTORY_SEPARATOR . $i['filename'] . '.po';
		
		$text = trim(file_get_contents($file));
		$out  = trim(file_get_contents($outname));
		
		$this->job->setDescription($text);	
	
		if ($out != $this->job->getHTMLDescription()) {
			return $this->job->getHTMLDescription() . 
				"\n---------------------------------------------------\n" . 
				$out . "\n";
		}
	
		return true;
	}

	private function printInfo($filename) {
		$p = pathinfo($filename);

		echo str_pad($p['filename'], 25, ' ');
	}
	
	private function testParserFile($parser, $filename) {
		$content = trim($parser->publicAfterRequest(file_get_contents($filename)));
		
		$title_out = trim(file_get_contents(str_replace('.i', '.ot', $filename)));
		$title = trim($parser->parseJobTitle($content));
		
		if ($title != $title_out) {
			$this->error($title);
			return false;
		};
		
		$desc_out = trim(file_get_contents(str_replace('.i', '.od', $filename)));
		$desc  = trim($parser->parseJobDescription($content));
		
		if ($desc != $desc_out) {
			$this->error($desc);
			return false;
		}
		
		$cats_out = trim(file_get_contents(str_replace('.i', '.oc', $filename)));
		$cats = trim($parser->parseJobCategories($content));
		
		if ($cats != $cats_out) {
			$this->error($cats);
			return false;
		}
		
		$money = $parser->parseJobMoney($content);
		
		if ($money) {
			switch ($money[1]) {
				case Job::CUR_RUBLE:
					$cur = 'руб.';
					break;
				case Job::CUR_DOLLAR:
					$cur = '$';
					break;
				case Job::CUR_EURO:
					$cur = 'euro';
					break;
			}
			
			$money = $money[0] . ' ' . $cur;
			
			$money_out = trim(file_get_contents(str_replace('.i', '.om', $filename)));
			
			if ($money != $money_out) {
				$this->error($money);
				return false;
			}
		} else {
			if (file_exists(str_replace('.i', '.om', $filename))) {
				$this->error('money exists in test file');
			}
		}
		
		$this->ok();
		return true;
	}

	private function testParsers($folder) {
		$s = $this->db->sites->find();

		foreach($s as $site) {
			$file  = $site['script'];
			$class = $site['class'];
			
			require(PATH_CLASSES . DIRECTORY_SEPARATOR . 'parsers' . DIRECTORY_SEPARATOR . $file);
			
			$parser = new $class($this->db);
			
			$fld = $folder . $parser->getSiteFolder() . DIRECTORY_SEPARATOR;
			
			if (!file_exists($fld))
				continue;
				
			$this->begin('Testing parser [' . $parser->getParserName() . ']');
			
			$in = glob($fld . '*.i');
			
			foreach($in as $file) {
				$this->printInfo($file);
				
				if (!$this->testParserFile($parser, $file)) {
					die();
				}
			}
		}
	}
	
	private function printSome($text) {	
		$this->rowcnt++;
		
		echo $text;
		
		if ($this->rowcnt >= 3) {
			echo "\n";
			$this->rowcnt = 0;
		} else {
			echo '   ';
		}
	}

	private function ok() {
		$this->printSome('[ OK ]');
	}
	
	private function error($res) {
		$this->printSome("[ ERROR ]\n" . $res);
	}

	private function begin($text) {
		echo "\n" . $text . "...\n";
		
		$this->rowcnt = 0;
	}
	
	private function testCompact($folder) {
		$this->begin('HTML compacter test');

		$in = glob($folder . '*.p');
		
		foreach($in as $file) {
			$this->printInfo($file);
			
			$res = $this->testCompacterFile($file);
			
			if (true === $res) {			
				$this->ok();
			} else {
				$this->error($res);
				return false;
			}
		}

		return true;
	}
	
	public static function testFolder($db, $folder) {
		$tester = new Tester($db);
		
		$tester->testParsers($folder);
		$tester->testCompact($folder);
		
		echo "\n";
	}

}
