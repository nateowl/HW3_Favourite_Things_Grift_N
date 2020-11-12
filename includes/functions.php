<?php

    // Define Result for use in functions
    $result = array();


    // Get all users ID, title, and image url 
    function getAllUsers($pdo) {
        $query = "SELECT ID, title, image FROM tbl_favourite_things";

        $runQuery = $pdo->query($query);

        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        // Return Multiple results
        echo (json_encode($result));
    }

    // Get specific users information
    function getSingleUser($pdo, $id) {
        $query = "SELECT * FROM tbl_favourite_things WHERE id=" . $id;

        $runQuery = $pdo->query($query);

        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        // Return single result
        echo (json_encode($result));
    }