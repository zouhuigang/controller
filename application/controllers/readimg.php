<?php
#http://127.0.0.1/index.php/readurl
use QL\QueryList;
class Readimg extends CI_Controller {
	
	//初始化数据
	public function __construct(){
		parent::__construct();
		$this->load->model('commonModel', '', TRUE);
		$this->save_path='D:\software\wamp\www\upload/';
		$this->img_size=0;
	}
	
	public function index()
	{
	
	//保存图片
	$domain_url="http://media.sandhills.com/";
	$url1="http://media.sandhills.com/img.axd?id=3011232650&wid=&p=&ext=&w=426&h=320&t=&lp=CNT&c=True&wt=False&sz=Max&rt=0&checksum=K4slyTGPXF9%2fzXv%2bXNTWt7wIWc3TPjPeEAUUj0WEgEmtM%2bU86f1GprYH66J4oqw19%2fnx4nPlTohgRyN4qlIvI3fqn9mg4HvUAUlwQnI%2fkKxR4AzwFARm3N7lw7KL9lRI";
	$url="http://media.sandhills.com/img.axd?id=3011232386&wid=&p=&ext=&w=426&h=320&t=&lp=CNT&c=True&wt=False&sz=Max&rt=0&checksum=K4slyTGPXF%2fYJR1%2f1mrTeOHTifIK3PQaOVTbmvAdfGDzTQ4R60ccPRNnwstJpRpZExBnzlef7vhj4nq3gsRuwkfF6R83GDGtDn9n0Ib3K0bSb6wWmZSJuaKQIZHTzWw2";
	$this->save_one_img($url);
		
	echo "成功";
	}
	
	public function save_one_img($img_url)
    {       
         
        $pic_name=time().'.jpg';   //获取图片的名字
                   
        //将图片内容读入一个字符串
		$img_data = $this->curl_get_contents($img_url);
		//print_r($img_data);
        $img_size = file_put_contents($this->save_path . $pic_name, $img_data);
    } 
	
	
	
	
	function curl_get_contents($url)
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    $output = curl_exec($ch);
    curl_close($ch);
    return $output;
}
	


}
