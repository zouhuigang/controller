<?php
use QL\QueryList;
defined('BASEPATH') OR exit('No direct script access allowed');
class Welcome extends CI_Controller {
	public function index()
	{

	//	$html=$this->getHtml();
	//	$html =iconv('GBK','UTF-8',$html);
		//$html=file_get_contents('qq.txt');
		
		//$html=$this->special_filter($html);
	//	$arr=json_decode($html,true);
		//	print_r($html);die;
	   $data=array();
   	   $html= file_get_contents('http://www.controller.com/listings/aircraft/for-sale/1432393/2006-bell-206b-iii');
           $rules1 = array(
             'Description' => array('.information-box','text')
          );
	   $data1 = QueryList::Query($html,$rules1)->data;

	    $rules2 = array(
		    'img' => array('.media-element>img','data-src')
          );
	   $data2 = QueryList::Query($html,$rules2)->data;

	   $rules3 = array(
              'Specifications' => array('.information-box >.row','html')
          );
	   $data3 = QueryList::Query($html,$rules3)->data;
	   $data[]=array(
		   "data1"=>$data1,
		   "data2"=>$data2,
		    "data3"=>$data3,
	   	);

	   //保存图片
	   if($data2){
		   foreach($data2 as $v){
			   echo $this->saveimg($v['img']);
			   print_r($v['img']);die;
		   }
	   }



print_r($data);
	}


	//下载远程图片到本地
	public function saveimg($url,$filename=''){
		// $img = base64_decode($base64);
	        $num=mt_rand(1, 100);
	          $a = @file_put_contents(time().$num.'.jpg', $url);//返回的是字节数

	}


	/通过curl方式获取远程的图片到本地
    public function get_remote_file($url = "", $filename = "") {
        if(is_dir(basename($filename))) {
            echo "The Dir was not exits";
            return false;
        }
        //去除URL连接上面可能的引号
        $url = preg_replace( '/(?:^[\'"]+|[\'"\/]+$)/', '', $url );
        $hander = curl_init();
        $fp = fopen($filename,'wb');
        curl_setopt($hander,CURLOPT_URL,$url);
        curl_setopt($hander,CURLOPT_FILE,$fp);
        curl_setopt($hander,CURLOPT_HEADER,0);
        curl_setopt($hander,CURLOPT_FOLLOWLOCATION,1);        
        curl_setopt($hander,CURLOPT_TIMEOUT,60);
        curl_exec($hander);
        curl_close($hander);
        fclose($fp);
        Return true;
    }

    $src=$gocn_host.'/uploads/data/'.$src;
    $f_is_exists=check_remote_file_exists($src);
    if($f_is_exists){          
        $ext=strtolower(substr($src,strrpos($src,'.')+1));
        if($ext){                  
            $y=date('Y',time()); $m=date('m',time());
            $dir="./usr/attach/cosside/{$y}/{$m}";                
            if(!is_dir($dir)) mkdir($dir,0777,true);              
            $filename='gs_'.md5(date('his',time()).rand(0,99)).'.'.$ext;
            get_remote_file($src,$dir.'/'.$filename);
        }



/**
 * 中文可能转json时会出错，如口0001,口eefe等根据ascii码过滤控制字符
 * @param type $string
 */
public  function special_filter($string)
{
 if(!$string) return '';
 $new_string = '';
 for($i =0; isset($string[$i]); $i++)
 {
  $asc_code = ord($string[$i]);    //得到其asc码
  //以下代码旨在过滤非法字符
  if($asc_code == 9 || $asc_code == 10 || $asc_code == 13){
   $new_string .= ' ';
  }
  else if($asc_code > 31 && $asc_code != 127){
   $new_string .= $string[$i];
  }
 }
$new_string =str_replace(PHP_EOL, '', $new_string);
//$html=strip_tags($html);//去除html php等标签
 return trim($new_string);
}


	private function getHtml(){
			
	header('Content-type:text/html;charset=utf-8');
	
	$url= 'http://www.controller.com/listings/aircraft/for-sale/1432393/2006-bell-206b-iii';
	// 测试用的浏览器信息
    $user_agent="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0";
	$language ="zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3";
	$cookie="__cfduid=d6bf766550ea9113fd1befa90e71870511474358651; ASP.NET_SessionId=51lkcr5qmmg1ng0yng2i0ovq; USERID
=109888200; UserSettings=currency-preference=EEK&override-currency=False&listingbreadcrumb=detail%7c2006
%2bBELL%2b206B%2bIII%7c%252flistings%252faircraft%252ffor-sale%252f1432393%252f2006-bell-206b-iii&screen-height
=1080&screen-width=1920; UserSettingsSession=Geo=CN%7cChina%7c23%7cShanghai%7c%7c31.0455932617188%7c121
.399688720703%7c0%7c0%7c%7c; __RequestVerificationToken=I4dXNKJV6rKjOb1xtVUrztKsyvbCAIAPDVhlAHKhdJQ6ALS445Jnycw21W0oc2rXTNqNBg2
; BIGipServerwww.controller.com_http_pool=1048684736.20480.0000; TS0140436f=01094368286bdf5a3e111a0d
c6ea70d3b05b747439d2982b13810ead486e248ba1b756af823e2709d36a6656b508465b63c05f64bf202aaced5d6d829700
38de05f9c042cfbcd22804c20bdbe4456dcf6f867d7c93913354e43edd9c564b862dbdea91d3928ff6d95448fdc68571a3ef
518fabb1a362b8ff3ad629706afe13ed4986c55dd1103d933304519560b78d4a5aa031339a0e4fb274f326f1c22176b34cc9156184b4405f51aead6f9ac7fe2d682e843ada5ad26311024a6795dc1493efbea3afaa
; TS0140436f_27=0173c61f90fbdc9c935229558b7ecaffc515cd8aed9868d71ffb93f0f3a1f64755f59b3d6d6e2a89f016b6287082699b25eeef5a83
; TS0140436f_77=1183_88d70b69d3dc6633_rsb_0_rs_%2Flistings%2Faircraft%2Ffor-sale%2F1432393%2F2006-bell-206b-iii_rs_1_rs_0
; TRACKING=SessionStarted=1&GUID=8f0e2c4dd3fb4ee29064c4ba9e8f0bae&UserReferrer=";
	
        $ch = curl_init();
        // 设置 url
        curl_setopt($ch, CURLOPT_URL, $url);
        // 设置浏览器的特定header
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        		"Accept:text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
                "User-Agent: {$user_agent}",
                "Accept-Language: {$language}",
               // "content-type: text/html; charset=utf-8",
                "Accept-Encoding:gzip, deflate",
                "Connection:keep-alive"
            ));
			
		//设置查看请求的头
		curl_setopt($ch, CURLINFO_HEADER_OUT, 1);
		//得到返回的头
	    curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt ($ch,CURLOPT_REFERER,$url);
		curl_setopt ($ch, CURLOPT_COOKIE , $cookie );
		
		$output = curl_exec($ch);
		
          //请求发生后得到请求的头
		//$RequestHeaders=curl_getinfo($ch,CURLINFO_HEADER_OUT);
		//print_r($RequestHeaders);
        curl_close($ch);
     
        return $output;
    
			
	}


}
