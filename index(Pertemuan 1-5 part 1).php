<?php
session_start();
if(isset($_SESSION["gagal"])){
        if ($_SESSION["gagal"]>=3){
            echo '<h1>ANDA DI BLOKIR</h1>';
            exit();
        }
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>LOGIN</title>
        <link rel="icon" href="assets/images/favicon.ico">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/floating-labels.css">
        <script>
              function hallo(){
                  var email = document.getElementById("inputEmail").value;
                  alert("Selamat Datang : "+email)
              }
        </script>
    </head>
    <body>
        
        <form id="frm01" name="frm01" method="POST" action="login.php" class="form-signin">
            <div class="text-center mb-4">
                <img class="mb-1" src="assets/images/bootstrap-solid.svg" width="75" height="75">
            <h1 style="color: skyblue">Welcome</h1>
            </div>
            <div class="form-label-group">
                <input name="inEmail" class="form-control" type="email" id="inputEmail" placeholder="Email Address" autofocus="yes"
                   autocomplete="no" required="yes">
                <label for="inputEmail">Email Address</label>
            </div>
            <div class="form-label-group">
                <input name="inPass" class="form-control" type="password" id="inputpassword" placeholder="Password" required="yes">
                <label for="inputpassword">Password</label>
                </div>
            <div class="checkbox mb-3">
                <label>
            <input type="checkbox"> Remeber Me ?
                </label>
            </div>
            <button type="submit" class="btn btn-lg btn-primary btn-block">SIGN IN</button>
            <p style="text-align: center"><a href="google.com">Lupa Password</p></a>
        </form>
    </body>
</html>
