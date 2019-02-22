<?php
	//var_dump($_GET);

	$fields = array(
	'name'=>array(//name is a key in this case
		'type'=>'text',
		'label'=>'Name'
		),
	'email'=>array(
		'type'=>'email',
		'label'=>'Email'
		),
	'subject'=>array(
		'type'=>'text',
		'label'=>'Subject'
		),
	'message'=>array(
		'type'=>'textarea',
		'label'=>'Message'
		),
	);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <link href="css/foundation.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/main.css">
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.js"></script>
    <title>Anna Pancioli</title>
</head>

<body>

<section id="menuContainer" class="row">

    <div class="small-12 medium-12 large-12 columns">

    <div id="mainLogo"><img src="images/logo.png" id="imgLogo" alt="Logo"></div>
    <div id="nav-bg" class="btn"></div>
    <div id="toggle-btn" class="btn">
      <span></span>
      <span></span>
      <span></span>
    </div>
    
    <div id="menuNav">
      <nav>
        <ul>
            <li><a class="link" href="index.html">HOME</a></li>
            <li><a class="link" href="about.html">ABOUT</a></li>
            <li><a class="link" href="contact.php">CONTACT</a></li>
        </ul>
      </nav>
      </div>
        
</div>

</section>

<section class="row" id="formTitle">
	<div class="small-12 medium-10 medium-offset-1 large-6 large-offset-3 columns" id="formT">
		<h1>Get in touch with me :)</h1>
	</div>
</section>

<section class="row" id ="formContainer">

	<div class="small-12 medium-10 medium-offset-1 large-6 large-offset-3 columns" id="contactForm">

	<?php if(isset($_GET['status']) && $_GET['status']==='error'):?>
	<div class="alert alert-danger" role="alert">The form is missing some required fields!</div>
	<?php endif;?>

	<?php if(isset($_GET['status']) && $_GET['status']==='successful'):?>
	<div class="alert alert-success" role="alert">The form submitted succesfully!</div>
	<?php endif;?>

        <form action="./includes/sendEmail.php" method="POST">
        <?php foreach($fields as $field_name => $field_config):?>
            <?php if($field_config['type'] === 'textarea'):?>
                <label for="<?php echo $field_name;?>"><?php echo $field_config['label'];?></label>
                <textarea id="<?php echo $field_name;?>" placeholder="<?php echo $field_name;?>" name="<?php echo $field_name;?>"></textarea><br>
            <?php else:?>
                <label for="<?php echo $field_name;?>"><?php echo $field_config['label'];?></label>
                <input id="<?php echo $field_name;?>" placeholder="<?php echo $field_name;?>" type="<?php echo $field_config['type'];?>" name="<?php echo $field_name;?>"><br>
            <?php endif;?>
        <?php endforeach;?>
            <button type="submit" id="formBtn">Submit</button>
        </form> 

    </div>
    
</section>

<section id="footer" class="row">

<footer class="small-12 medium-12 large-12 columns">
    <div id="socialMedia">
        <ul>
            <a href="http://www.facebook.com/anna.pancioli" id="facebook"><li><img src="images/facebook.png"></li></a>
            <a href="https://github.com/annapancioli"><li><img src="images/git.png"></li></a>
            <a href="https://www.instagram.com/annapancioli"><li><img src="images/insta.png"></li></a>
        </ul>
    </div>
</footer>

</section>



<script src="js/vendor/jquery.js"></script>
<script src="js/vendor/what-input.js"></script>
 <script src="js/vendor/foundation.js"></script>
<script src="js/app.js"></script>
<script src="js/script.js"></script>

</body>

</html>