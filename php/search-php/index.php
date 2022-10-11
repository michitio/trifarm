<!DOCTYPE html>
<html>

<head>
    <link href="bootstrap.min.css" rel="stylesheet" />
</head>

<body>
    <?php
    include_once("db_module.php");
    $link = NULL;
    taoKetNoi($link);
    ?>
    <div class="containe">
        <div class="row">
            <form class="col-12 form-control">
                <input class="form-input-control" name="keyword" />
                <input type="submit" class="btn btn_success" value="Tìm Kiếm" />
            </form>
        </div>
        <div class="row">
            <?php
            if (isset($_GET['keyword'])) { //chạy tìm kiếm
                $result = chayTruyVanTraVeDL($link, "select * from tb_sanpham where name like '%".$_GET['keyword']."%'");
                while ($rows = mysqli_fetch_assoc($result)) {
                    echo "
                            <div class='col-6 hoverable'>
                                <span class='h3'>" . $rows['name'] . "</span> </br>
                                <img 'img' style='height:200px;' src='" . $rows['img'] . "'/> </br>
                                <span>Giá: ".$rows['price']."</span></br>
                                <span>Mô tả: ".$rows['desc']."</span></br>
                            </div>
                        ";
                }
            } else { //chạy trang chủ
                $result = chayTruyVanTraVeDL($link, "select * from tb_sanpham");
                while ($rows = mysqli_fetch_assoc($result)) {
                    echo "
                            <div class='col-6 hoverable'>
                                <span class='h3'>" . $rows['name'] . "</span> </br>
                                <img 'img' style='height:200px;' src='" . $rows['img'] . "'/>  </br>
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