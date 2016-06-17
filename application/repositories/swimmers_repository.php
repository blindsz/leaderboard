<?php

class Swimmers_Repository implements Swimmers_Repository_Interface {
	private $db;

	function __construct($db) {
		$this->db = $db;
	}

	public function get_all_swimmers() {

		$query = $this->db->query('SELECT * FROM swimmers ORDER BY challenge_time DESC');
		$result = $query->result();
		$swimmers = array();

		foreach($result as $row) {
			array_push($swimmers,
				new Swimmer(
					$row->id,
					$row->transaction_id,
					$row->fish_id,
					$row->first_name,
					$row->last_initial,
					$row->age,
					$row->challenge_time,
					$row->city,
					$row->state,
					$row->created_at,
					$row->updated_at
				)
			);
		}

		return $swimmers;
	}
}