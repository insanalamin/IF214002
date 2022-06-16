<?php

require_once($_SERVER['DOCUMENT_ROOT']."/api/router.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/get_all_penduduk.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/get_penduduk_by_nik.php");

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS, DELETE, PUT');
header('Content-Type: application/json; charset=utf-8');

$router = new Router();
$router->addRoute('GET', '/penduduk', function(){getAllPenduduk();});
$router->addRoute('GET', '/penduduk/:nik', function(){getPendudukByNIK($nik);});
$router->doRouting(); 
