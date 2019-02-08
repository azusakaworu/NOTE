<?php



function login($username,$password,$ip){
  
	require_once('connect.php');
	//count(*):returns the number of rows that satisfy the WHERE clause of a SELECT statement
	$check_exist_query = 'SELECT count(*) FROM tbl_user WHERE user_name = :username';
	
	 //prepares an SQL statement
     $user_set = $pdo ->prepare($check_exist_query);
     //executes a prepared statement
     $user_set->execute(array(':username'=>$username));

	if($user_set->fetchColumn()>0){
		//echo "user exits";
		$get_user_query = 'SELECT * FROM tbl_user WHERE user_name = :username AND user_pass = :password';
		$get_user_set = $pdo -> prepare($get_user_query);
		$get_user_set -> execute(array(':username' => $username,':password' => $password));


		while($found_user = $get_user_set -> fetch(PDO::FETCH_ASSOC)){
			$id = $found_user['user_id'];
			$_SESSION['user_id'] =$id;
			$_SESSION['user_name'] = $found_user['user_name'];

			$update_ip_query ='UPDATE  tbl_user SET user_ip=:ip WHERE user_id = :id';
			$update_ip_set=$pdo->prepare($update_ip_query);
			$update_ip_set->execute(
				array(
					':ip' => $ip,
					':id' =>$id
				)


			);
		}

		if(empty($id)){
			$message =  'Wrong password0-0';
			return $message;
		}


		redirect_to('index.php');
	}else{
		$message= 'User does not exists';
		return $message;
	}




}
?>