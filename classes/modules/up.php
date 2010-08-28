<?php

require dirname(dirname(__FILE__)) . DIRECTORY_SEPARATOR . 'job.php';

class MUp extends Module {

	const VSITES = 1;
	const VCATS  = 1;
	
	private function getLang($ver = 0) {
		$l = array(
			'v' => 2,
			'vl' => array(
				'kwds' => '�������� ����� ����� �������',
				'on'   => '��',
				'pl'   => '������',
				'pa'   => '�����',
				'mt'   => '�����',
				
				'c' . Job::CAT_OTHER       => '������',
				'c' . Job::CAT_AUDIOVIDEO  => '�����/�����',
				'c' . Job::CAT_DESIGN      => '������',
				'c' . Job::CAT_PHOTO       => '����',
				'c' . Job::CAT_PROGRAMMING => '����������������',
				'c' . Job::CAT_WEBPROG     => '���-����������',
				'c' . Job::CAT_TRANSLATE   => '�������',
				'c' . Job::CAT_TEXT        => '������ � �������',
				'c' . Job::CAT_ADVERTISING => '�������',
				'c' . Job::CAT_SYSADM      => '�����������������'
			)
		);
		
		if ($l['v'] != $ver)
			return $l;
			
		return false;
	}	
	
	private function getCats($ver = 0) {
		if (self::VCATS === $ver)
			return false;
			
		$items = array();
		
		foreach(array(
			Job::CAT_OTHER, Job::CAT_AUDIOVIDEO, Job::CAT_DESIGN, Job::CAT_PHOTO, Job::CAT_PROGRAMMING, 
			Job::CAT_WEBPROG, Job::CAT_TRANSLATE, Job::CAT_TEXT, Job::CAT_ADVERTISING, Job::CAT_SYSADM
		) as $el) {
			$items[] = array(
				'i' => $el,
				'l' => 'c' . $el
			);
		}
			
		return array(
			'v' => self::VCATS,
			'vl' => $items
		);
	}

	private function getSites($ver = 0) {
		if (self::VSITES === $ver)
			return false;
	
		$db = $this->db();
		
		$c = $db->sites;
		
		$sites = array();
		
		$cursor = $c->find();
		
		while ($site = $cursor->getNext()) {
			$sites[] = array(
				'i' => $site['code'], 
				'f' => $site['folder'], 
				'n' => $site['name'], 
				'u' => $site['url']
			);
		}
		
		return array(
			'v'  => self::VSITES,
			'vl' => $sites
		);
	}

	private function getJobs($stamp) {
		$db = $this->db();
		
		$c = $db->jobs;
		
		$jobs = array();
		
		$cursor = $c->find(array(
			'stamp' => array(
				'$gt' => $stamp
			)
		));
		$cursor->sort(array(
			'stamp' => -1
		));
		$cursor->limit(15);
		
		while ($job = $cursor->getNext()) {
			$jobs[] = array(
				's'  => $job['site'],
				'i'  => $job['id'],
				'st' => $job['stamp'],
				't'  => $job['title'],
				'd'  => isset($job['short']) ? $job['short'] : $job['desc']
			);
		}
		
		if (0 == count($jobs))
			return false;
		
		return $jobs;
	}
	
	private function getIntParam($name) {
		if (!isset($_POST[$name]))
			return false;
			
		return intval($_POST[$name]);
	}

	protected function runModule() {
		$r = array();
	
		// check for outdated language pack
		$vlang = $this->getIntParam('lang');
		if ($vlang) {
			$lang = $this->getLang($vlang);
			
			if ($lang) {
				$r['l'] = $lang;
			}
		}
		
		// check for outdates sites
		$vsites = $this->getIntParam('sites');
		if ($vsites) {
			$sites = $this->getSites($vsites);
			
			if ($sites) {
				$r['s'] = $sites;
			}
		}

		// check for outdates categories
		$vcats = $this->getIntParam('cats');
		if ($vcats) {
			$cats = $this->getCats($vcats);
			
			if ($cats) {
				$r['c'] = $cats;
			}
		}
		
		// check for jobs
		$jstamp = $this->getIntParam('jstamp');
		if ($jstamp) {
			$jobs = $this->getJobs($jstamp);
			
			if ($jobs) {
				$r['j'] = $jobs;
			}
		}
	
		return $r;	
	}

}
