<?php
//system first page
require_once('config.php');

do_html_header('Log in Page'); //must have '' for string msg

display_site_info();
display_login_form();

do_html_footer();

?>