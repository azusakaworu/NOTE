<?php
   $db_dsn = array(
     'host' => 'localhost',
     'dbname' => 'db_r1',
     'charset' => 'utf8'
   ); 

//print_r($db_dsn);
   $dsn ='mysql:'.http_build_query($db_dsn,'',';');
   
   $db_user ='root';
   $db_pass ='';

   try{
   	$pdo = new PDO($dsn,$db_user,$db_pass);
   	
   }catch(PDOException $e){
   	die ('Connection Error'.$e->getMessage());
   	
   }

?>