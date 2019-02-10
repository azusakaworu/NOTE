<?php
//log out 
require_once('config.php');

session_start();
$old_user = $_SESSION['valid_user'];

unset($_SESSION['valid_user']);//Unset a given variable
$result_dest = session_destroy();


//start output the html
do_html_header('Logging Out');

//if.....





do_html_footer();



?>