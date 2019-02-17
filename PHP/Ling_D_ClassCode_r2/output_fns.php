
<?php
function do_html_header($title){

	?>

	<!DOCTYPE html>
	<html>
	<head>
		<title>Welcom Ninjia School</title>
	</head>
	<body>
	 <img src="LOGO.png" alt="ninjia shcool logo" width="300px" >
	 <h2>Ninjia School <?php echo $title; ?></h2>
	 <hr>
	
	<?php //if($title){do_html_heading($title);}
}
function display_site_info(){
	?>
	<ul>
		<li>Store your personal document with us!</li>
		<li>See what other users use!</li>
		<li>Share your favorite team with others!</li>
	</ul>
	<?php
}

function display_login_form(){
	?>
    <h3>Members login here &#9749;~</h3>
	<a href="register_form.php">Not a number?</a><br><br>

	<form action="member.php" method="post">
		<label>Username:</label>
	    <input type="text" name="username" required><br><br>
        <label>Password:</label>
	    <input type="password" name="passwd" required>
	<br><br>
        <input type="submit" value="Go!">
	</form>
	<br>
	<a href="#">Forgot your password?</a>

	<?php
}





function display_registration_from(){
	?>
	<h3>Create your space ! &#x270d;</h3>
    <form action="register_new.php" method="post">
    	<label for="email">Email Address:</label>
    	<input  id="email" name="email" ><br><br>
    	<!-- if write type="email" here (dont need reg) -->
    	<!-- required for username   -->

    	<label for="username">Preferred username:</label>
    	<input type="text" id="username" name="username" required><br><br>

    	<label for="password">Password:</label> 
    	<input type="text" id="password" name="passwd" ><br><br>

    	<label>Confrim Password:</label>
    	<input type="text" name="passwd2" ><br><br>

    	<button type="submit" name="submit">Create User</button>

    </form>

	<?php
}

function display_user_menu(){
	?>
	<h3 style="color: red;">This is home for members 0-0!</h3>
    <img src="desktop-home.png" width="400px" alt="whlcome" ><br>
    <a href="logout.php">Log out</a>
	<?php
}

function do_html_footer(){
	?>

	<hr>
	<p>Copyright 2019.Ninjia School</p>
	  
	</body>
	</html>
	<?php

}
