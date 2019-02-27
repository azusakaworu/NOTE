<?php 
	function createUser($fname,$username,$password,$email){
		include('connect.php');
	
		$create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email)';
		$create_user_query .= ' VALUES(:fname,:username,:password,:email)';

		$create_user_set = $pdo->prepare($create_user_query);
		$create_user_set->execute(
			array(
				':fname'=>$fname,
				':username'=>$username,
				':password'=>$password,
				':email'=>$email
			)
		);

		if($create_user_set->rowCount()){
			redirect_to('index.php');
		}else{
			$message = 'Your hiring practices have failed you.. this individual sucks...';
			return $message;
		}

}



function editUser($id,$fname,$username,$password,$email){

		include('connect.php');
	
		$edit_user_query = '
		UPDATE  tbl_user 
		SET user_fname = :fname,user_name=:username,user_pass=:password,user_email=:email
		WHERE user_id=:id';

		$edit_user_set = $pdo->prepare($edit_user_query);
		$edit_user_set->execute(
			array(
				':fname'=>$fname,
				':username'=>$username,
				':password'=>$password,
				':email'=>$email,
				':id'=>$id
			)
		);

		if($edit_user_set->rowCount()){
			redirect_to('index.php');
		}else{
			$message = 'somthing worng';
			return $message;
		}


}