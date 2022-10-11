<?php
session_start();
require_once "db_module.php";
require_once "validate_module.php";
require_once "users_module.php";
$link = NULL;
taoKetNoi($link);
if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['password2']) && isset($_POST['fullname']) && isset($_POST['email']) && isset($_POST['captcha'])) {

    $valid = $_POST['password'] == $_POST['password2'] //kiểm tra hai ô nhajao mật khẩu có giống nhau không
    && validateLenUP($_POST['username']) //username phải lớn hơn 8 và nhỏ hơn 30 kí tự
    && validateLenUP($_POST['password']) //password phải lớn hơn 8 kí tự và nhỏ hơn 30 kí tự
    && validateLenUP($_POST['fullname']) //fullname phải lớn hơn 8 và nhỏ hơn 30 kí tự
    && validateEmail($_POST['email']) //email phải đúng định dạng chuẩn abc@gmail.com
    && $_SESSION['captcha_text'] == $_POST['captcha']; //captcha nhập phải đúng

    if ($valid) { //nếu các điều kiện của dữ liệu nhâp vào thõa mãn
        if (exitsUsername($link, $_POST["username"])) { //nếu username đã tồn tại trong DB
            giaiPhongBoNho($link, true);
            header("Location: dangki.php?msg=duplicate&username=" . $_POST['username'] . "&fullname=" . $_POST['fullname'] . "&email=" . $_POST['email']);
        } else { //nếu username chưa tồn tại thì mới cho phép dùng username đó để đăng kí
            dangki($link, $_POST["username"], $_POST["password"], $_POST["fullname"], $_POST["email"]);
            giaiPhongBoNho($link, true);
            header("Location: dangki.php?msg=done");
        }
    } else { //nếu các điều kiện của dữ liệu nhập vào không thõa mãn
        giaiPhongBoNho($link, true);
        header("Location: dangki.php?msg=unvalid-data&username=" . $_POST['username'] . "&fullname=" . $_POST['fullname'] . "&email=" . $_POST['email']);
    }
}
