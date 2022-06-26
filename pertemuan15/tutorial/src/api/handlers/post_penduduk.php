<?php

// POST content: $_POST
// JSON POST content: file_get_contents('php://input')

function postPenduduk(){
  $payload = json_decode(file_get_contents('php://input'));

  // $sqlStatement = $dbConnection->prepare("INSERT INTO penduduk (nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
  // $sqlStatement->execute(array($namaLengkap, $kodeKabupaten, $nomorHP, $gender, $tanggalLahir, $ijazahTerakhir, $pekerjaan, $penghasilanBulanan));

  $output = new stdClass();
  // $output->data = $sqlStatement->fetchall();
  $output->params = $payload;

  echo json_encode($output);
};
