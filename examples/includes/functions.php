<?php
include 'connect.php';

function get_single_work($pdo, $vid) {
    $query = "SELECT * FROM tbl_works WHERE works_id = '$work'";

    $get_work = $pdo->query($query);
    $results = array();

    while($row = $get_work->fetch(PDO::FETCH_ASSOC)) {
        $results[] = $row;

        // you could run subresult queries here - just write another function and append.
    }

    return $results;
}

function get_all_works($pdo) {
    $query = "SELECT * FROM tbl_works";

    $get_work = $pdo->query($query);
    $results = array();

    while($row = $get_work->fetch(PDO::FETCH_ASSOC)) {
        $results[] = $row;
    }

    return $results;
}

?>