<?php
require_once "db_module.php";
function dangki($link, $username, $password, $fullname, $email)
{
    chayTruyVanKhongTraVeDL(
        $link,
        "INSERT INTO tb_user VALUES( NULL,
        '" . stringSQL($username) . "',
        '" . md5($password) . "',
        '" . stringSQL($fullname) . "',
        '" . $email . "'
        )"
    );
}
function dangnhap($link, $username, $password)
{
    $result = chayTruyVanTraVeDL($link, "SELECT count(*) from tb_user where username='" . mysqli_real_escape_string($link, $username) . "'
                                                                      and password='" . md5($password) . "'");
    $row = mysqli_fetch_row($result);
    mysqli_free_result($result);
    if ($row[0] > 0) {
        $_SESSION['username'] = $username;
        return true;
    } else
        return false;
}
function dangxuat()
{
    if (isset($_SESSION['username'])) {
        unset($_SESSION['username']);
        return true;
    } else
        return false;
}
