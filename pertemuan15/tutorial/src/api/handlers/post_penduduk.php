<?php

// POST content: $_POST
// JSON POST content: file_get_contents('php://input')

function postPenduduk(){
  $output = new stdClass();
  $output->data = (object)array('nama'=> 'Durmeo', 'isi_post'=> json_decode(file_get_contents('php://input')));

  echo json_encode($output);
};
