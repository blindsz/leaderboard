<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Leader_Board_Controller extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('base_model');
	}


	public function index() {
		$data['current_page'] = 'leader_board';
		$this->load->view($data['current_page'] . '/index', $data);
	}

	public function get_all_swimmers(){

		$swimmers_repo = new Swimmers_Repository($this->base_model->get_db_instance());
		$swimmers = $swimmers_repo->get_all_swimmers();
		$data = array();

		foreach($swimmers as $swimmer) {
			array_push($data, array(
				'id' => $swimmer->id,
				'transaction_id' => $swimmer->transaction_id,
				'fish_id' => $swimmer->fish_id,
				'first_name' => $swimmer->first_name,
				'last_initial' => $swimmer->last_initial,
				'age' => $swimmer->age,
				'challenge_time' => $swimmer->challenge_time,
				'city' => $swimmer->city,
				'state' => $swimmer->state,
				'created_at' => $swimmer->created_at,
				'updated_at' => $swimmer->updated_at
			));
		}

		echo json_encode($data);
	}
}
