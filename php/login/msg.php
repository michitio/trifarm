<?php
if (isset($_GET['msg'])) {
    if ($_GET['msg'] == 'done') {
        echo "<div class='msg' style='background-color:green;color:white;'>
        Bạn đã đăng kí thành công! 
        </div>";
    } else if ($_GET['msg'] == "unvalid-data") {
        echo "<div class='msg' style='background-color:green;color:white;'>
        Vui lòng kiểm tra lại thông tin! </div>";
    } else if ($_GET['msg'] == "duplicate") {
        echo "<div class='msg' style='background-color:green;color:white;'>
        Tài khoản bạn đăng kí đã tồn tại, vui lòng chọn tên đăng nhập khác! </div>";
    } else if ($_GET['msg'] == "login-fail") {
        echo "<div class='msg' style='background-color:green;color:white;'>
        Username hoặc password không đúng. Vui lòng kiểm tra lại! </div>";
    }
}
?>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, sans-serif;
        font-size: 13px;
    }

    .msg {
        width: 450px;
        margin: 0px auto;
        padding: 5px;
        text-align: center;
    }

    form {
        width: 300px;
        margin: 0px auto;
    }

    .cls_caption {
        width: 150px;
        float: left;
        font-weight: bold;
        text-align: left !important;
    }

    .cls_input {
        width: 150px;
        float: left;
    }

    .img_row {
        text-align: center;
        padding: 5px 0px;
    }

    .frm_row {
        margin-top: 5px;
    }

    #menu {
        margin-bottom: 100px;
        text-align: right;
    }
</style>