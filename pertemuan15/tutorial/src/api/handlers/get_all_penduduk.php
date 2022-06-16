<?php

require_once ($_SERVER['DOCUMENT_ROOT']."/api/connection.php");

function getAllPenduduk(){
  $output = new stdClass();
  $output->data = [
    (object)array('nama'=> 'Durmeo', 'alamat'=> 'Jalan Kecambah Ingat No. 3'),
    (object)array('nama'=> 'Bukucambah', 'alamat'=> 'Komplek Rindumayo Online No 44'),
  ];

  echo json_encode($output);
};
