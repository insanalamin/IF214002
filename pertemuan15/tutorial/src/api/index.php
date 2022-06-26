<?php

require_once($_SERVER['DOCUMENT_ROOT']."/api/route.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/get_all_penduduk.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/post_penduduk.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/get_penduduk_by_nik.php");

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS, DELETE, PUT');
header('Content-Type: application/json; charset=utf-8');

// OPERASIONAL
// Tambah Penduduk
// Hapus Penduduk
// Lihat semua Penduduk
// Lihat Penduduk berdasarkan NIK

Route::add('/api/index.php/penduduk', function() {getAllPenduduk();}, 'get');

// POST content: $_POST
// JSON POST content: file_get_contents('php://input')
Route::add('/api/index.php/penduduk', function() {postPenduduk();}, 'post');

Route::add('/api/index.php/penduduk/([0-9]{16})', function($nik) {getPendudukByNIK($nik);}, 'get');

// BUSINESS INTELLIGENCE
// Jumlah Penduduk per kabupaten - Grafik batang 
// Jumlah Penduduk per rentang usia - Grafik batang
// Bulan tahun terbanyak lahir - Grafik kalender

Route::run('/');
