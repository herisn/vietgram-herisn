<?php
//1301184382_HERI SETYO NUGROHO_IF-42-06
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "vietgram";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 
    // echo "Connected successfully";
?>