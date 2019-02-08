<?php

function getAll($tbl){
     include('connect.php');
     //include();函数

     $queryAll = 'SELECT * FROM '.$tbl;//from 后面要留space
     $runAll = $pdo->query($queryAll);

     if($runAll){
       return $runAll;
     }else{
        $error = 'there was a problem accessing this info';
        return $error;
     }

}
   


  
?>