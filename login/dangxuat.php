<?php 
session_start();
require_once "db_module.php";
require_once "users_module.php";
$link=NULL;
taoKetNoi($link);
if(dangxuat()){
    giaiPhongBoNho ($link,true);
    header("Location: dangki.php");
}else{
    giaiPhongBoNho ($link,true);
    header("Content-type: text/html; charset=utf-8");
    echo "Không thể đăng xuất!";
}
?>