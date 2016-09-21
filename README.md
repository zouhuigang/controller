##compose安装教程
###下载Composer-Setup.exe 

下载地址：https://getcomposer.org/download/

安装，选择php.exe程序

进入项目目录运行

    composer require jaeger/querylist-ext-dimage


##连接sqlserver2008

<code>

    Array
    (
    [0] => Array
        (
            [0] => IMSSP
            [SQLSTATE] => IMSSP
            [1] => -49
            [code] => -49
            [2] => This extension requires the ODBC Driver 11 for SQL Server. Access the following URL to download the ODBC Driver 11 for SQL Server for x86: http://go.microsoft.com/fwlink/?LinkId=163712
            [message] => This extension requires the ODBC Driver 11 for SQL Server. Access the following URL to download the ODBC Driver 11 for SQL Server for x86: http://go.microsoft.com/fwlink/?LinkId=163712
        )

    [1] => Array
        (
            [0] => IM002
            [SQLSTATE] => IM002
            [1] => 0
            [code] => 0
            [2] => [Microsoft][ODBC 驱动程序管理器] 未发现数据源名称并且未指定默认驱动程序
            [message] => [Microsoft][ODBC 驱动程序管理器] 未发现数据源名称并且未指定默认驱动程序
        )

)</coed>


A:安装msodbcsql.exe，已保存在百度云。
