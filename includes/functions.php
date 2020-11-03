<?php
    
    include("connect.php"); // Connect to Database

    $query = "SELECT * FROM tbl_favourite_things";

    $runQuery = $pdo->query($query);

    $result = array();

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
        $result[] = $row;
    }

    //return $result;
    echo(json_encode($result));