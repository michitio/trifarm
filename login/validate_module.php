<?php 
//kiểm tra tính hợp lệ độ dài (độ dài từ 8 đến 30 kí tự)
function validateLenUP($up){
    return strlen($up) >=8&&strlen($up)<=30;
}
//kiểm tra tính hợp lệ của email. email phải có dạng abc@gmail.com
function validateEmail($email){
    return filter_var($email,FILTER_VALIDATE_EMAIL)!=false?true:false;
}
//kiểm tra tên của user name đã tồn tại trong cơ sở dữ liệu chưa
function exitsUsername($link,$username){
    $result=chayTruyVanTraVeDL($link,"select count(*) from tb_user where username='".$username."'");
    $row=mysqli_fetch_row($result);
    mysqli_free_result($result);
    return $row[0]>0;
}
?>