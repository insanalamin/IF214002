<?php 
  $alamatServer = "localhost";
  $userBasisData = "root";
  $passwordBasisData = "";
  $namaBasisData = "project";
	
  header("Access-Control-Allow-Origin: *");
  header("Access-Control-Allow-Credentials: true");
  header('Access-Control-Allow-Methods: GET, POST, OPTIONS, DELETE, PUT');
  header('Content-Type: application/json; charset=utf-8');
	
  $request = $_SERVER['REQUEST_URI'];
  
  function ambilSemuaDataPenduduk($alamatServer, $userBasisData, $passwordBasisData, $namaBasisData) {
    try {
			
      // Coba dulu apa yang ada di sini,
			
      // Biasanya dikasih nama $conn 
      $objekKoneksiBasisData = new PDO("mysql:localhost=$alamatServer;dbname=$namaBasisData", $userBasisData, $passwordBasisData);
			
      $objekKoneksiBasisData->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			
      $objekPerintah = $objekKoneksiBasisData->prepare("SELECT umur, jumlah_penduduk FROM sebaran_umur");
      $objekPerintah->execute();
			
      $hasilQuery = $objekPerintah->fetchAll();
			
      echo json_encode($hasilQuery);
			
      // Perintah query
			
      $objekKoneksiBasisData = null;
			
    } catch(PDOException $e) {
      // Kalo gagal, jalankan yang dibawah ini
			
      echo "Sebab gagalnya: " . $e->getMessage();
    }
  }
	
  switch ($request) {
    case '/penduduk':
      ambilSemuaDataPenduduk($alamatServer, $userBasisData, $passwordBasisData, $namaBasisData);
      break;
    default:
      $output = new stdClass();
      $output->pesan = "Ini respon default";
      
      echo json_encode($output);
  }
  
  
?>
