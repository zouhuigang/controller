<?php
class SqlserverModel extends CI_Model {
	
	//初始化数据
	public function __construct(){
		parent::__construct();
	}


	public function getCount(){
	$sql = 'select count(*) as count from dbo.Aircraft';
	$query = $this->db->query ( $sql );
	return $query->row()->count;
	}

	public function getRows(){
	$sql = 'select top 10 * from dbo.Aircraft';
	$query = $this->db->query ( $sql );
	return $query->result_array();
	}

}
?>