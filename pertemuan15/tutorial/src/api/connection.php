<?php

$host = "localhost";
$port = 3366;
$dbname = "penduduk";
$username = "root";
$password = "iguana";

global $dbConnection;

$dbConnection = new PDO("mysql:host=$host:$port;dbname=$dbname", $username, $password, array(
  PDO::ATTR_PERSISTENT => true
));
$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
