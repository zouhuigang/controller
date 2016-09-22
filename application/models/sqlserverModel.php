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
	
	public function getOneRows(){
		$sql = 'select top 1 * from dbo.Aircraft';
	    $query = $this->db->query ( $sql );
	    return $query->result_array();
	}
	
	
	public function getAddTable($table, $arr) {
    	//$this->db->cache_delete_all();//清除所有缓存
        if (is_array($arr) && $arr && $table) {
            $rs = $this->db->insert($table, $arr);
            $row = $this->db->insert_id();
            if ($row) {
                return $row;
            } else {
                return $rs;
            }
        } else {
            return false;
        }
    }

}
?>