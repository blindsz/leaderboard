<?php

class Persons_Repository implements Persons_Repository_Interface {
	private $db;

	function __construct($db) {
		$this->db = $db;
	}

	public function get_all_persons() {

		$query = $this->db->query('SELECT * FROM persons ORDER BY time DESC');
		$result = $query->result();
		$persons = array();

		foreach($result as $row) {
			array_push($persons,
				new Person(
					$row->id,
					$row->first_name,
					$row->middle_name,
					$row->last_name,
					$row->age,
					$row->time,
					$row->created_at,
					$row->updated_at
				)
			);
		}

		return $persons;
	}
}