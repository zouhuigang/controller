<?php
#http://127.0.0.1/index.php/testsqlserver/view
class Testsqlserver extends CI_Controller {
	//初始化数据
	public function __construct(){
		parent::__construct();
		$this->load->model('sqlserverModel', '', TRUE);
	}
	
	
public function view() {
//var_dump($this->sqlserverModel->getCount());
//var_dump($this->sqlserverModel->getRows());
$data=$this->sqlserverModel->getOneRows();
print_r($data);die;
}
/*
CREATE TABLE [dbo].[Aircraft] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Type] nvarchar(32) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Subject] nvarchar(128) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Description] nvarchar(512) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Image] nvarchar(128) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Price] decimal(18) NOT NULL DEFAULT ((0)) ,
[Manufacturer] nvarchar(64) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Year] int NOT NULL DEFAULT ((1980)) ,
[Model] nvarchar(32) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[CumulativeHours] int NOT NULL DEFAULT ((0)) ,
[NumberOfSeats] int NOT NULL DEFAULT ((0)) ,
[Color] nvarchar(32) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[SeatsColor] nvarchar(32) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) ,
[SerialNumber] nvarchar(32) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Overview] ntext COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Characteristics] ntext COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Maintenance] ntext COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Equipment] ntext COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[EngineRoom] ntext COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[AdditionalEquipment] ntext COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Area] ntext COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[New] bit NOT NULL DEFAULT ((1)) ,
[VideoImage] nvarchar(128) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[VideoUrl] nvarchar(256) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[VideoImage1] nvarchar(128) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[VideoUrl1] nvarchar(256) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[Show] nvarchar(4) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' ,
[PriceDescription] nvarchar(64) COLLATE Chinese_PRC_CI_AS NOT NULL DEFAULT '' 
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
*/
public function install(){
	$arr=array();
	$arr['Subject']='test';///
	$arr['Type']='多发直升机';
	$arr['New']='0';
	$arr['Manufacturer']='Bell 贝尔';
	$arr['Description']='单发固定翼';///
	$arr['Image']='Data/upload/f580bc2d-25ee-474c-8a12-b3e232015a99.jpg';///
	$arr['Price']='0';
	$arr['PriceDescription']='CIF抵中国海岸价(含美国出口拆解运送)";//CIF抵中国海岸价(含美国出口拆解运送)';
	$arr['Year']='2006';
	$arr['CumulativeHours']='1935';
	$arr['NumberOfSeats']='5';///
	$arr['Color']='黑/金';
	$arr['SerialNumber']='TJ205K08';
	$arr['Overview']='整体概述';///
	$arr['Characteristics']='功能特点';///
	$arr['Maintenance']='维修记录';///
	$arr['Equipment']='电子设备';///
	$arr['EngineRoom']='机身/机仓';///
	$arr['AdditionalEquipment']='附加设备';///
	$this->sqlserverModel->getAddTable('Aircraft',$arr);
	echo "success";die;
}
}
?>