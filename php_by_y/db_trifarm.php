<?php
require_once "config.php";

function taoKetNoi(&$link)
{
	$link = mysqli_connect(HOST, USER, PASSWORD, DB);
	if (mysqli_connect_errno()) {
		echo "Lỗi kết nối đến máy chủ: " . mysqli_connect_error();
		exit();
	}
}

function chayTruyVanTraVeDL($link, $q)
{
	$result = mysqli_query($link, $q);
	return $result;
}

function chayTruyVanKhongTraVeDL($link, $q) 
{
	$result = mysqli_query($link, $q);
	return $result;
}

function dispose($link)
{
	try {
		mysqli_close($link);
	} catch (TypeError $e) {
	}
}

function executeNonQuery($q) {
	$link = NULL;
	taoKetNoi($link);
	$result = chayTruyVanKhongTraVeDL($link, $q);
	dispose($link);
	return $result;
}

function executeQuery($q) {
	$link = NULL;
	taoKetNoi($link);
	$result = chayTruyVanTraVeDL($link, $q);
	dispose($link);
	return $result;
}