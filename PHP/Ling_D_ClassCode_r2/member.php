<?php
//start to log in

require_once('config.php');
session_start();

//var a name from login form 
$username = $_POST['username'];
$passwd = $_POST['passwd'];

print_r($_POST);

if($username && $passwd){
	try{
	      login($username,$passwd);
	      $_SESSION['valid_user']= $username;

	}catch(Exception $exception){
			//if login not successfully
			do_html_header('Login Failed... ');
			echo 'You could not logged in.
			      You must be logged in to view this page.';
			 do_html_url('loginPage.php','Login');
			 do_html_footer();
			 exit;
		}
}


do_html_header('Home');
check_valid_user();//display echo 'logged in as' valid_user in array session

if($url_array = get_user_urls($_SESSION['valid_user'])){
	display_user_urls($url_array);

}

display_user_menu();
do_html_footer();


?>