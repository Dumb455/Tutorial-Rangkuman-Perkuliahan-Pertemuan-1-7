<?php
session_start();
$user = $_POST["inEmail"];
$pass = $_POST["inPass"];
//=========================
$dbuser = "admin@gmail.com";
$dbpass = "admin123";
//=========================
if ($user == $dbuser && $pass == $dbpass){
    echo '<h1>ini menu</h1>';
}else{
    if(isset($_SESSION["gagal"])){
        $_SESSION["gagal"]++;
    }else{
        $_SESSION["gagal"]=1;
    }
    header("location:index.php");
}

