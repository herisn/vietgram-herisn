<?php
//1301184382_HERI SETYO NUGROHO_IF-42-06
    include_once('koneksi.php');
    $search = $_POST['caption'];
    $sql = "SELECT * FROM photo WHERE caption like '$search'";
    $result = $conn->query($sql);
    // $row = $result->fetch_assoc();
?>