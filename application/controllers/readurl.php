<?php
#http://127.0.0.1/index.php/readurl
use QL\QueryList;
class Readurl extends CI_Controller {
	
	//��ʼ������
	public function __construct(){
		parent::__construct();
		$this->load->model('commonModel', '', TRUE);
	}
	
	//��ȡ��һ������
	public function index()
	{
		header("Content-type: text/html; charset=utf-8"); 
	   $data=array();
   	   $html= file_get_contents('http://www.controller.com/');
          $rules1 = array(
             'url' => array('.fluid-mobile>ul>li>a','href'),
			 'name' => array('.fluid-mobile>ul>li>a','text')
          );
	   $data1 = QueryList::Query($html,$rules1)->data;

	   if($data1){
		   
		   foreach($data1 as $v){
						$arr = array();
						$arr ['names'] = $v['name'];
						$arr ['urls'] = 'http://www.controller.com'.$v['url'];
						$this->commonModel->getUpdate('urls', '', $arr);
		   }
			
		}
		echo "��ȡ��һ�����...���ڽ���ڶ�������ȡ..";
		
		
		
	}
	
	//http://127.0.0.1/index.php/readurl/second
	public function second(){
		header("Content-type: text/html; charset=utf-8"); 
		//��ȡ��һ��������ַ
		$list = $this->commonModel->getList("urls", 'parentId=0', 'urls,id');
		if($list){
			foreach($list as $v){
				$this->secondUrl($v['urls'],$v['id']);
			}
		}
		echo "��ȡ�ڶ������...���ڽ������������ȡ..";
		
		
	}
	
	public function secondUrl($urls,$parentid){
		
		  $html= file_get_contents($urls);
          $rules1 = array(
             'url' => array('.p-bottom-30>.fluid-mobile>ul>li>a','href'),
			 'name' => array('.p-bottom-30>.fluid-mobile>ul>li>a','text')
          );
	   $data1 = QueryList::Query($html,$rules1)->data;
	   if($data1){
		   
		   foreach($data1 as $v){
						$arr = array();
						$arr ['names'] = $v['name'];
						$arr ['parentId'] = $parentid;
						$arr ['types'] = 2;
						$arr ['urls'] = 'http://www.controller.com'.$v['url'];
						$this->commonModel->getUpdate('urls', '', $arr);
		   }
			
		}
		
	}
	
	
	//�ٴ��ж϶��������е�������û�����ڶ������������
	//http://127.0.0.1/index.php/readurl/third
	public function third(){
		header("Content-type: text/html; charset=utf-8"); 
		//��ȡ�ڶ���������ַ
		$list = $this->commonModel->getList("urls", 'types=2', 'urls,id');
		if($list){
			foreach($list as $v){
				$this->secondUrl($v['urls'],$v['id']);//���ж������Ƿ�Ϊ��������
			}
		}
		echo "success";
		
		
	}
	
	
	public function thirdUrl($urls,$parentid){
		
		  $html= file_get_contents($urls);
          $rules1 = array(
             'url' => array('.p-bottom-30>.fluid-mobile>ul>li>a','href'),
			 'name' => array('.p-bottom-30>.fluid-mobile>ul>li>a','text')
          );
	   $data1 = QueryList::Query($html,$rules1)->data;
	   if($data1){
		   
		   foreach($data1 as $v){
						$arr = array();
						$arr ['names'] = $v['name'];
						$arr ['parentId'] = $parentid;
						$arr ['types'] = 3;
						$arr ['urls'] = 'http://www.controller.com'.$v['url'];
						$this->commonModel->getUpdate('urls', '', $arr);
		   }
			
		}
		
	}
	
	
	



}
