<?php

class Api_Repository implements Api_Repository_Interface {
	private $db;

	function __construct($db) {
		$this->db = $db;
	}

	public function new_swimmer(Swimmer $swimmer) {
		$this->db->insert('swimmers', array(
			'id' => $swimmer->id,
			'transaction_id' => $swimmer->transaction_id,
			'fish_id' => $swimmer->fish_id,
			'first_name' => $swimmer->first_name,
			'last_initial' => $swimmer->last_initial,
			'age' => $swimmer->age,
			'challenge_time' => "00:".$swimmer->challenge_time,
			'city' => $swimmer->city,
			'state' => $swimmer->state,
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s')
		));
	}
}