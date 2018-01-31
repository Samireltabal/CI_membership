<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {
    public function index(){
      $this->load->view('main/header');
      $this->load->view('login');
      $this->load->view('main/footer');
    }
    public function register() {
      $this->load->view('main/header');
      $this->load->view('register');
      $this->load->view('main/footer');
    }
}
?>