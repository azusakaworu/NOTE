<?php require_once('scripts/config.php');
//var_dump($_POST);

if(!empty($_POST['username']) && !empty($_POST['password'])){
	//if user enterd the username and password 
		$username = $_POST['username'];
		$password = $_POST['password'];
		$ip = $_SERVER['REMOTE_ADDR'];
	    $message = login($username,$password,$ip);

	
}else{
	if(isset($_POST['username']) ||isset($_POST['password'])){
		$message ='fill the required fileds';
	}
	
}

?>



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Admin logoin</title>
	<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
	<?php if(!empty($message)):?>
		<p><?php echo $message;?></p>
    <?php endif; ?>

	<!-- form 的属性action ：表单要提交到哪，（服务器地址） -->
	<!-- name属性：用户提交信息到服务器后，后端人员通过name起的名字来获取用户输入的信息 -->
	<form action="admin_login.php" id="formArea" method="post">

    <fieldset id="loginArea"><br>
    	<!-- <legend>用户登录</legend> -->
	   <label>Username:</label>
		 <input type="text" name="username"  required><br><br>
		 <label>Password:</label>
		 <input type="password" name="password" required ><br><br>
		<!-- type="password" 输入不可见 -->
    </fieldset>
		<br>

		<input type="submit" value="Log In">
		<!-- type="submit" 提交按钮 value 按钮上的字 -->
	</form>

</body>
</html>