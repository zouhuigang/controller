<?php
#http://127.0.0.1/index.php/testsqlserver/view
class Testsqlserver extends CI_Controller {
	//初始化数据
	public function __construct(){
		parent::__construct();
		$this->load->model('sqlserverModel', '', TRUE);
	}
	
	
public function view() {
var_dump($this->sqlserverModel->getCount());
var_dump($this->sqlserverModel->getRows());
}
}
?>