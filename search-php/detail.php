<!DOCTYPE html>
<html>

<head>
    <link href="bootstrap.min.css" rel="stylesheet"/>
</head>

<body>
    <?php
    include_once("db_module.php");
    $link = NULL;
    taoKetNoi($link);
    ?>
    <div class="containe">
        <div class="row">
            <?php
            if(isset($_GET['id_dm'])){
                $result = chayTruyVanTraVeDL($link, "select * from tb_sanpham where tb_danhmuc = ".$_GET['id']);
                while ($rows = mysqli_fetch_assoc($result)) {
                    echo "
                            <div class='col-12 hoverable'>
                                <span class='h3'>" . $rows['name'] . "</span> 
                                <img 'img' style='height:200px;' src='" . $rows['img'] . "'/> </br>
                                <span>Giá: ".$rows['price']."</span></br>
                                <span>Mô tả: ".$rows['desc']."</span></br>
                                
                            </div>
                        ";
                }
            }
            ?>
        </div>
    </div>
    <?php
    giaiPhongBoNho($link, $result);
    ?>
</body>

</html>