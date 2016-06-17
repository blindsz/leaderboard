<?php

class Swimmer {
	private $data = array();

	function __construct($id, $transaction_id, $fish_id, $first_name, $last_initial, $age, $challenge_time, $city, $state, $created_at, $updated_at) {
		$this->data['id'] = $id;
		$this->data['transaction_id'] = $transaction_id;
		$this->data['fish_id'] = $fish_id;
		$this->data['first_name'] = $first_name;
		$this->data['last_initial'] = $last_initial;
		$this->data['age'] = $age;
		$this->data['challenge_time'] = $challenge_time;
		$this->data['city'] = $city;
		$this->data['state'] = $state;
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