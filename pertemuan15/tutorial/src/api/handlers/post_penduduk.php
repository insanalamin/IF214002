<?php

require_once ($_SERVER['DOCUMENT_ROOT']."/api/connection.php");

function postPenduduk(){
  $output = new stdClass();
  $output->data = (object)array('nama'=> 'Durmeo', 'isi_post'=> json_decode(file_get_contents('php://input')));

  echo json_encode($output);
};
