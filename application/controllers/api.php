<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require(APPPATH . "/libraries/REST_Controller.php");

class Api extends REST_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('base_model');
	}

	public function swimmer_post(){

		$items_repo = new Api_Repository($this->base_model->get_db_instance());
		$items_repo->new_swimmer(
			new Swimmer(
				$this->post('id'),
				$this->post('transaction_id'),
				$this->post('fish_id'),
				$this->post('first_name'),
				$this->post('last_initial'),
				$this->post('age'),
				$this->post('challenge_time'),
				$this->post('city'),
				$this->post('state'),
				null,
				null
			)
		);

	}
}
