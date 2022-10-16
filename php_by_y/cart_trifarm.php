<?php
/* Câu trúc sản phẩm của mảng lưu giỏ hàng:
$giohang = array($key=>array(id, ten, soluong, dongia...))
Session gio hàng:
$_SESSION['giohang'] = $giohang
*/
    //session_start();
    function themhangvaogio($hang)
    {
    if (isset($_SESSION['giohang'])) {
        $giohang = $_SESSION['giohang'];
        if (!array_key_exists($hang["id"], $giohang)) { //nêu hàng chưa có trong giỏ mới cho thêm
            $giohang[$hang["id"]] = $hang; //key của mảng sẽ được xây theo id của sản phẩm
            $_SESSION['giohang'] = $giohang;
        } else {
            $giohang[$hang["id"]] = $hang;
            $_SESSION['giohang'] = $giohang;
        }
    }
    }
    function xoahangkhoigio($key)
    {
        if (isset($_SESSION['giohang'])) {
            $giohang = $_SESSION['giohang'];
            unset($giohang[$key ]);
            $_SESSION['giohang'] = $giohang;
        }
    };
        
    
    function xoahet(){
        if (isset($_SESSION['giohang'])) {
            $giohang = $_SESSION['giohang'];
        };
        foreach ($giohang as $key=>$v)
        unset($giohang[$key]);
        $_SESSION['giohang'] = $giohang;
    }

    function capnhathangtronggio($key, $soluong)
    {
    if (isset($_SESSION['giohang'])) {
        $giohang = $_SESSION['giohang'];
        $giohang[$key]['soluong'] = $soluong;
        $_SESSION['giohang'] = $giohang;
    }
    }
function tinhtien()
{
    $sum = 0;
    $giohang = $_SESSION['giohang'];    
    foreach ($giohang as $v)
        $sum += $v['soluong'] * $v['price'];
    return number_format($sum);
}
 ?>