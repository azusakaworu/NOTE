<?php
   $db_dsn = array(
     'host' => 'localhost',
     'dbname' => 'db_moviereview',
     'charset' => 'utf8'
   );
//这是一个数组 
  
   $dsn ='mysql:'.http_build_query($db_dsn,'',';');//查询字符串 http_build_query 从数组中生成...
   //this is teh DB credentials
   $db_user ='root';
   $db_pass ='';

 

//try ....catch... 处理异常
   try{
   	$pdo = new PDO($dsn,$db_user,$db_pass);//可能会导致的错误的代码
   	
   }catch(PDOException $exception){ //错误发生时怎么处理
   	echo 'Connection Error:'.$exception->getMessage();//getMessage 返回传递给构造函数的消息
   	exit();
   }

//echo 'echo语句用来打印字符串内的东西'; 


?>