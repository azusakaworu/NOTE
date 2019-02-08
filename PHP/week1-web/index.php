<?php require_once('admin/read.php');?>
<!--require_once  确保一个文件只能被引入一次-->


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>movie-review</title>
</head>
<body>
<!--外部header.html 可随时更新外部header 不用每一页改-->
	<?php include('templates/header.html');?> 

   <h1>this si the movie site</h1>



<?php
$results = getAll('tbl_movies');

while($row = $results->fetch(PDO::FETCH_ASSOC)){
  echo '<h3>'.$row['movies_title'].'</h3>';
}

?>

<?php
$results = getAll('tbl_movies');

while($row = $results->fetch(PDO::FETCH_ASSOC)){
  echo '<p>'.$row['movies_storyline'].'</p>';
}

?>


<?php
$results = getAll('tbl_movies');

while($row = $results->fetch(PDO::FETCH_ASSOC)){
  echo '<p>'.$row['movies_cover'].'</p>';
}

?>

<?php
$results = getAll('tbl_movies');

while($row = $results->fetch(PDO::FETCH_ASSOC)){
  echo '<p>'.$row['movies_release'].'</p>';
}

?>
<!--外部footer.html 可随时更新外部footer 不用每一页改-->
<?php include('templates/footer.html');?>

</body>
</html>