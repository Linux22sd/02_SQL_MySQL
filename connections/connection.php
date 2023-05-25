<?php
$server = "localhost";
$user = "alex";
$password = "linux";
$database = "tienda";

$connection = mysqli_connect("$server","$user","$password") or die();
$base = mysqli_select_db($connection, $database);
?>