<?php session_start(); ?>
<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>United document</title>
</head>

<body>
    <?php include_once "menu.php"; ?>
    <?php
    if (!isset($_SESSION['username']))
        header("Location: dangki.php");
    ?>
    <div>
        <h1>Đây là trang admin.</h1>
        <h2>Chào mừng bạn quay lại</h2>
    </div>
    <style>
        body {
            font-family: Tahoma, Geneva, sans-serif;
            font-size: 13px;
        }

        #menu {
            margin-bottom: 100px;
            text-align: right;
        }

        h1,
        h2 {
            text-align: center;
        }
    </style>
</body>

</html>