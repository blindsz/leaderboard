<?php

class Person {
	private $data = array();

	function __construct($id, $first_name, $middle_name, $last_name, $age, $time, $created_at, $updated_at) {
		$this->data['id'] = $id;
		$this->data['first_name'] = $first_name;
		$this->data['middle_name'] = $middle_name;
		$this->data['last_name'] = $last_name;
		$this->data['age'] = $age;
		$this->data['time'] = $time;
		$this->data['created_at'] = $created_at;
		$this->data['updated_at'] = $updated_at;
	}

	public function __set($key, $value) {
		$this->data[$key] = $value;
	}

	public function __get($key) {
		return isset($this->data[$key]) ? $this->data[$key] : null;
	}
}