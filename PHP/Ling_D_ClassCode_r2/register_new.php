<?php
//when user try to reigester....

require_once('config.php');

//create varibles for form name 
$email=$_POST['email'];
$username=$_POST['username'];
$passwd=$_POST['passwd'];
$passwd2=$_POST['passwd2'];

print_r($_POST);

//start it before haders
session_start();

try{
//Eliminate abnormal:

  //1.test each variable has value
	// if(!filled_out($_POST)){
	// 	throw new Exception('you have not filled the form out correctly, please go back and try again');
	// }

	
  //2.if the emial address not valid
	if(!valid_email($email)){
		throw new Exception('Not a valid email address,please go back and try again');
	}
  //3.if the comfirm passwd is defferent with passwd
	if($passwd != $passwd2){
		throw new Exception('The passwords you entered do not match,please go back and try again');
	}

  //4.if the passwd was too long or to short
	if((strlen($passwd)<3) || (strlen($passwd)>6)){
		throw new Exception('Your password must be between 3 and 6 characters,please go back and try again');
	}





//pass arguments for register function
  register($username,$email,$passwd);

//put the current username into session array (valid_user : current uername
$_SESSION['valid_user'] = $username; 
do_html_header('Register Successful');
//get_random_word();
echo 'whelcom join us Ninjia Family 0-0!.<br>';
notify_password($username,$passwd);

echo ' your password and usrname has been emailed to you.<br>';
do_html_footer();


  
}catch (Exception $e){
	do_html_header('oppos!problem');
	echo $e -> getMessage();
	do_html_footer();
	exit;//php api： if no arguments ..dont need ()
}


?>