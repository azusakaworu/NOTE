<?php


$db_type='mysql';  
$db_host='localhost';  
$db_name='dangdang'; 
$db_user='root';  
$db_pass='';  

    try {
        $dbh = new PDO("{$db_type}:host={$db_host};dbname=$db_name",$db_user,$db_pass);
        //var_dump($dbh);
    } catch(PDOException $exception) {
        echo 'connect error!' . $exception->getMessage();
    }


 

?>