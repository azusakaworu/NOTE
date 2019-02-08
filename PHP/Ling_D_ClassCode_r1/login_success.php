<?php
session_start();
date_default_timezone_set('Canada/Eastern');//修改和格林时差问题
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>welcome 哔哩哔哩!</title>
</head>
<body>
	<h1>Admin dashboard</h1>
   <?php //intval 获取整数
      $login_time=intval(date('H',$_SESSION['login']['login_time']));
      if($login_time>=0 && $login_time<12){
         echo "good morning！";
      }else if($login_time>=12 && $login_time<18){
         echo "good afternoon！";
      }else{
         echo "good night！";
      }  
   ?>
	<h3>Welcome <?php echo $_SESSION['login']['user_name']; ?></h3>
   
   <h3>LAST successful login time: 
      <?php 
      
      //将时间戳改成年月日形式
   echo date('Y-m-d H:i:s',$_SESSION['login']['last_login_time']); ?></h3>

   this is your admin dashboard page
   <nav>
   	<ul>
   		<li><a href="#">Create User</a></li>
   		<li><a href="#">Edit User</a></li>
   		<li><a href="#">Delete User</a></li>
   		<li><a href="sign_out.php">Sign out</a></li>
   	</ul>
   </nav>


   
</body>
</html>