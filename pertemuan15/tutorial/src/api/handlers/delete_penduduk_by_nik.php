<?php

function deletePendudukByNIK($nik){
  $output = new stdClass();
  $output->data = (object)array('nama'=> 'Durmeo', 'alamat'=> 'Jalan Kecambah Ingat No. 3', 'nik'=> $nik);

  echo json_encode($output);
};
