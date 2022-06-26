<?php

require_once($_SERVER['DOCUMENT_ROOT']."/api/connection.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/route.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/post_penduduk.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/delete_penduduk_by_nik.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/get_all_penduduk.php");
require_once($_SERVER['DOCUMENT_ROOT']."/api/handlers/get_penduduk_by_nik.php");

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS, DELETE, PUT');
header('Content-Type: application/json; charset=utf-8');

// OPERASIONAL
// Tambah Penduduk
Route::add('/api/index.php/penduduk', function() {postPenduduk();}, 'post');

// Hapus Penduduk berdasarkan NIK
Route::add('/api/index.php/penduduk/([0-9]{16})', function($nik) {deletePendudukByNIK($nik);}, 'get');

// Lihat semua Penduduk
Route::add('/api/index.php/penduduk', function() {getAllPenduduk();}, 'get');

// Lihat Penduduk berdasarkan NIK
Route::add('/api/index.php/penduduk/([0-9]{16})', function($nik) {getPendudukByNIK($nik);}, 'get');

// BUSINESS INTELLIGENCE
// Jumlah Penduduk per kabupaten - Grafik batang 
Route::add('/api/index.php/bi/penduduk/distribusi-kabupaten', function($nik) {getBIPendudukPerKab();}, 'get');

// Jumlah Penduduk per rentang usia - Grafik batang
Route::add('/api/index.php/bi/penduduk/distribusi-usia', function($nik) {getBIPendudukPerUsia($nik);}, 'get');

// Bulan tahun terbanyak lahir - Grafik kalender
Route::add('/api/index.php/bi/penduduk/bulan-tahun-lahir', function($nik) {getBIPendudukBulanTahunLahir($nik);}, 'get');

Route::run('/');
