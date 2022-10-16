<body>
    <?php
    require_once("db_trifarm.php");
    ?>
    <div id="container">
        <div id="banner"></div>
        <div id="limenu">
            <div>
                <?php include_once("cart.php"); ?>
                <?php
            if (isset($_SESSION['giohang'])) {
                $giohang = $_SESSION['giohang'];
                foreach ($giohang as $k => $v)
                    echo " 
                        <form method='post' action='xulygiohang.php'>
                        <input type='hidden' name='id' value='" . $k . "'>
                        <span>" . $v['name'] . "</span> 
                        <span>" . $v['id'] . "</span> 
                        <span>" . $v['price'] . "</span>
                        <input type='number' value='" . $v['soluong'] . "' name='soluong' min='1'>
                        <input type='submit' name='action' value='Cap nhat'>
                        <input type='submit' name='action' value='Xoa hang'>
                        </form>";
                        echo "
                        <form method='post' action='xulygiohang.php'>
                        <input type='submit' name='action' value='xoahetchotao'>
                        <input type='submit' name='action' value='trolaimuahang'>
                        </form>";
            }
            ?>
            </div>
        </div>  
        </div>
    </div>
</body>