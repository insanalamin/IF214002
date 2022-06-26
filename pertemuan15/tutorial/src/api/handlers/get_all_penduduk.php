<?php

function getAllPenduduk(){

  global $dbConnection;

  $sqlStatement = $dbConnection->prepare("SELECT id, nama_lengkap, kode_kabupaten FROM penduduk");
  $sqlStatement->execute();

  $output = new stdClass();
  $output->data = $sqlStatement->fetchall();

  echo json_encode($output);
};
