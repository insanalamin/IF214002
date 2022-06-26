<?php

function getAllPenduduk(){
  global $dbConnection;

  $params = $_SERVER['QUERY_STRING'];

  $sqlStatement = $dbConnection->prepare("SELECT id, nama_lengkap, kode_kabupaten FROM penduduk");
  $sqlStatement->execute();

  $output = new stdClass();
  $output->data = $sqlStatement->fetchall();
  $output->params = $params;

  echo json_encode($output);
};
