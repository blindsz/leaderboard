<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Leader_Board_Controller extends REST_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('base_model');
	}


	public function index_get() {
		$data['current_page'] = 'leader_board';
		$this->load->view($data['current_page'] . '/index', $data);
	}

	public function get_all_persons_get(){

		$persons_repo = new Persons_Repository($this->base_model->get_db_instance());
		$persons = $persons_repo->get_all_persons();
		$data = array();

		foreach($persons as $person) {
			array_push($data, array(
				'id' => $person->id,
				'first_name' => $person->first_name,
				'middle_name' => $person->middle_name,
				'last_name' => $person->last_name,
				'age' => $person->age,
				'time' => $person->time,
				'created_at' => $person->created_at,
				'updated_at' => $person->updated_at
			));
		}

		$this->response($data);
	}
}
