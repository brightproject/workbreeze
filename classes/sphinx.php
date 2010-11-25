<?php

/**
 * Class to work with sphinx
 * @author Kalashnikov Igor <igor.kalashnikov@gmail.com>
 */
class Sphinx {

	private static $instance = null;
	private $connection;

	private static function instance() {
		if (null === self::$instance) {
			self::$instance = new self();
		}

		return self::$instance;
	}

	// ------------------------
	
	public function __construct() {
		$this->connection = mysql_connect(SPHINX);

		if (!$this->connection) {
			echo "Can't connect to Sphinx\n";
			exit(1);
		}
	}

	private function escape($value) {
		return preg_replace('@\'@u', '\\\'', strip_tags($value));
// not working. how to really escape?
// return mysql_real_escape_string($value, $this->connection);
	}

	public function _add($index, $id, $values = array()) {
		foreach ($values as &$value) {
			if (is_string($value)) {
				$value = '\'' . $this->escape($value) . '\'';
			}
		}

		mysql_query('INSERT INTO ' . $index . ' VALUES (' . $id . ', ' .
			implode(',', $values) . ')', $this->connection);
	}

	public function _remove($index, $id) {
		mysql_query('DELETE FROM ' . $index . ' WHERE id = ' . $id, $this->connection);
	}

	// ------------------------

	public static function add($index, $id, $values = array()) {
		return self::instance()->_add($index, $id, $values);
	}

	public static function remove($index, $id) {
		return self::instance()->_remove($index, $id);
	}

}
