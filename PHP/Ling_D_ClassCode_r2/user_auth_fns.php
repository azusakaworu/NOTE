<?php
//submit user msg to database
function register($username,$email,$password){

	include('db_fns.php');//dont use the require_once -->$dbh outside the function scope
	
	//check if the username is unique
	//select row from table where conditions
	$result = $dbh->prepare("SELECT user_name FROM usersystem WHERE user_name = :username");

	$result->execute(array(':username'=>$username));

//if username exist throw new Exception
	//rowCount() dbh == MySQLi  num_rows()
   if($result->rowCount() > 0){throw new Exception("That username is taken--- go back and choose another one.") ;}



	//if ok：insert data to database
   //INSERT INTO tbl_name（row）VALUES （''）
   $result = $dbh->prepare('INSERT INTO usersystem (user_name,user_pw,user_email) values(:username,:password,:email)');

   $result->execute(array(':username'=>$username,
				          ':password'=>$password,
				          ':email'=>$email));

   if(!$result){
   	throw new Exception("Could not register you in database- plase try again later");
   	
   }
   return true;
}


/*---------------------------------------------------------------------------*/



function login($username,$password){
	include('db_fns.php');
	
	//check the username and pw that are in database

	$result = $dbh->prepare('SELECT * FROM usersystem WHERE user_name = :username AND user_pw = :password');
	$result->execute(array(
				':username'=>$username,
				':password'=>$password
			));


	if(!$result){throw new Exception('Could not log you in');}

	if($result->rowCount()>0){
		return true;
	}else{throw new Exception("Could not log you in..");
	}
}


/*---------------------------------------------------------------------------*/

function check_valid_user(){

   if(isset($_SESSION['valid_user'])){

   	echo 'logged in as ' .$_SESSION['valid_user'];

   }else{
   	do_html_header('problem:');
   	echo 'you are not logged in';
   	//do_html_url('loginPage.php','Login');
   	do_html_footer();
   	exit;
   }
}


/*---------------------------------------------------------------------------*/
function reset_password($username){

}


/*---------------------------------------------------------------------------*/
function get_random_word(){

}


/*-----------------------------send email-----------------------------------------*/
function notify_password($username,$password){

    include('db_fns.php');
    $result = $dbh->query("SELECT user_email FROM usersystem WHERE user_name = '".$username."'");
    
    if(!$result){
    	throw new Exception('Could not find email address1');}
    elseif ($result->rowCount() == 0) {
    	throw new Exception('Could not find email address2');}
    else{

    	$row = $result->fetch(PDO::FETCH_OBJ); //PDO fectch a object
    	$email = $row->user_email;
    	$from = 'From: research2@loginsystem \r\n';
    	$msg = 'Your username:'.$password.'and you '. $username.'\r\n'.
    	       'please try to login in this page :loginpage.php  \r\n';

    	if(mail($email,'Ninjia shcool login information', $msg,$from)){
    		return true;
    	}else{throw new Exception('Could not send email');}

    }

}


?>