<?php
session_start();
require_once "cart_trifarm.php";
if (isset($_POST['action'])) {
    switch ($_POST['action']) {
        case "Them vao gio":
            $hang = array("id" => $_POST['id'], "name" => $_POST['name'], "price" => $_POST['price'], "soluong" =>  $_POST['soluong']);
            themhangvaogio($hang);
            header("Location: cart.php" );
            break;
        case "Cap nhat":
            capnhathangtronggio($_POST['id'], $_POST['soluong']);
            header("Location: cart.php");
            break;
        case "Xoa hang":
            xoahangkhoigio($_POST['id']);
            header("Location: cart.php");
            break;
        case "xoahetchotao":
            header("Location: cart.php");
            xoahet();
            break;
        case "trolaimuahang":
            header("Location: index.php");
            break;
        default:
        header("Location: cart.php");
            break;
    }
}
?>
