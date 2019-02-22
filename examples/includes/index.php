<?php

include 'functions.php';


if (isset($_GET['work'])) {
    // pass the connection and the movie id to a function
    $data = get_single_work($pdo, $_GET['work']);
    echo json_encode($data);
}

else {
    // pass the connection and the movie id to a function
    $data = get_all_works($pdo);
    echo json_encode($data);
}
?>