<?php

header("content-type:text/html; charset=gb2312");


$db_server = 'ms5813699.xincache4.cn';
$db_id = 'ms5813699';
$db_pwd = 'N3m7N5F6';
$db_name = 'ms5813699';


$con_info = array("Database" => $db_name, "UID" => $db_id, "PWD" =>$db_pwd);
global $con;
$con = sqlsrv_connect($db_server, $con_info);
//$con = mssql_connect($db_server,$db_id,$db_pwd);
if (!$con) {
print_r( sqlsrv_errors());
}else{
echo "connected!";
}


die;

$serverName = "ms5813699.xincache4.cn";
$uid ="ms5813699";
$pwd ="N3m7N5F6";

$connectionInfo = array("UID"=>$uid,"PWD"=>$pwd,"Database"=>"ms5813699");

$conn = sqlsrv_connect( $serverName,$connectionInfo);
if( $conn == false)
{
echo "¡¨Ω” ß∞‹";
die( print_r( sqlsrv_errors(), true));
}

$query = sqlsrv_query($conn, "select count(*) as count from dbo.Aircraft");

while($row = sqlsrv_fetch_array($query)){
	echo "cg";
//echo $row['id']."######".iconv(°ÆGB2312°‰,°ØUTF-8°Ø,$row[°Ætitle°Ø]).°±######°±.iconv(°ÆGB2312°‰,°ØUTF-8°Ø,$row[°Æcontent°Ø]).°±<br/>°±;
}

?>