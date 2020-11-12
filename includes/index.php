<?php
    // Connect to Database
    include("connect.php");

    // Functions to be Used
    include("functions.php");

    // If request has specific ID then we return single description and info about the item selected
    if(isset($_GET["id"])) {
        $targetID = $_GET["id"];
        $result = getSingleUser($pdo, $targetID);

        return $result;
    } else {
        $allUsers = getAllUsers($pdo);

        return $allUsers;
    }