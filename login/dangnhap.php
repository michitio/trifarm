<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng nhập</title>
</head>
<body>
    <?php require_once "menu.php"; ?>
    <form action="xulydangnhap.php" method="post">
        <h3 style="text-align: center;color:#f30;background:black;padding:5px;">Đăng Nhập</h3>
        <div class="frm_row">
            <div class="cls_caption">Tên tài khoản:</div>
            <div class="cls_input"><input type="text" name="username" /> </div>
        </div><br style="clear:both;" />
        <div class="frm_row">
            <div class="cls_caption">Mật khẩu:</div>
            <div class="cls_input"><input type="password" name="password" /> </div>
        </div><br style="clear:both;" />
        <div class="frm_row">
            <input type="submit" value="Đăng nhập" /> </div>
            <input type="reset" value="Xóa form" /> </div>
        </div><br style="clear:both;" />

    </form>
    <?php require_once "msg.php"; ?>
</body>
</html>