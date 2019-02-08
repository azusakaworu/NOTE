<?php
if($post=$_POST){//如果存在post提交数据就执行

// 数据库连接
$db_type='mysql';  
$db_host='localhost'; 
$db_name='dangdang'; 
$db_user='root';  
$db_pass='';  

try{//$dbh 是PDO类的实例 可调用PDO类内部的方法
	$dbh = new PDO("{$db_type}:host={$db_host};dbname=$db_name",$db_user,$db_pass);
}catch(PDOException $e){die('error connection'.$e->getMessage());}
//PDOException异常处理




// 数据库操作
$user_name=$_POST['username'];//获取用户在表单里提交的用户名
$user_pw=$_POST['password']; //获取用户在表单里提交的密码
$res=$dbh->query("SELECT * FROM tb_user WHERE user_name='$user_name' AND user_pw='$user_pw'");   
$result=$res->fetch(PDO::FETCH_ASSOC); //数据存在返回数组，不存在返回false


if(!$result){//登陆失败
	$sql1 = "UPDATE tb_user SET error_times=error_times+1 WHERE user_name='$user_name'";
	$dbh->exec($sql1);
	if($user_name_seach['error_times']>=3){
				echo "Wrong password over 3 times admin blocked";
			}else{
				echo "Wrong password";
			}
	
}else{//登陆成功进入这里
	//更新登录时间
	$time=time();//一串数字 时间戳 更新在数据库里
	$sql1 = "UPDATE tb_user SET last_login_time=login_time,login_time='$time' WHERE user_name='$user_name' AND user_pw='$user_pw'";
	$dbh->exec($sql1);//exec 用于执行增删改操作 返回影响行数

	//获取登录信息
	$res=$dbh->query("SELECT * FROM tb_user WHERE user_name='$user_name' AND user_pw='$user_pw'");   
	$result=$res->fetch(PDO::FETCH_ASSOC); //数据存在返回数组，不存在返回false
	$user_id=$result['user_id']; //获取登录用户id
	$login_time=$result['login_time']; //获取登录时间
	$last_login_time=$result['last_login_time']; //获取上次登录时间	
	//seeeion设置当前登录用户
	session_start();
	$_SESSION["login"]=["user_id"=>$user_id,
	                    'user_name'=>$user_name,
	                    'login_time'=>$login_time,
	                    'last_login_time'=>$last_login_time];
	header('location:login_success.php'); //重定向
}
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Admin logoin</title>
</head>
<body>
	<!-- form 的属性action ：表单要提交到哪，（服务器地址） -->
	<!-- name属性：用户提交信息到服务器后，后端人员通过name起的名字来获取用户输入的信息 -->
	<!--action为空表单提交到当前页 -->
	<form action=""  method="post">
    <fieldset style="width: 250px;"><br>    	
	   <label>Username:</label>
		 <input type="text" name="username"  required><br><br>
		 <label>Password:</label>
		 <input type="password" name="password" required ><br><br>	
		 <!-- type password 不显示具体数字 -->
    </fieldset>
		<br>
		<input type="submit" value="Log In">
		<!-- type="submit" 提交按钮 value 按钮上的字 -->
	</form>

</body>
</html>