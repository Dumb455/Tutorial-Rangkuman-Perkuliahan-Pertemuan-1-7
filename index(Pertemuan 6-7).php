<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Data with Mysql</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="assets/images/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/floating-labels.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
    <?php
    include_once 'config/dao.php';
    $dao = new Dao();
    $result = $dao->read();
    ?>
    <div class="container text-center"">
            <p style="font-family: consolas"><h1><strong>USER DATA</strong></h1></p>
        <table class="table table-striped" class="mb-4">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">username</th>
                    <th scope="col">fullname</th>
                    <th scope="col">password</th>
                    <th scope="col">email</th>
                    <th scope="col">telp</th>
                    <th scope="col">band</th>
                    <th scope="col">logintime</th>
                    <th scope="col">akses</th>
                </tr>
            </thead>
            <tbody">
                <?php
                while ($row = mysqli_fetch_array($result)) {
                    echo "<tr>";
                    echo "<th scope='row'>" . $row['id'] . "</th>";
                    echo "<td>" . $row['username'] . "</td>";
                    echo "<td>" . $row['fullname'] . "</td>";
                    echo "<td>" . $row['password'] . "</td>";
                    echo "<td>" . $row['email'] . "</td>";
                    echo "<td>" . $row['telp'] . "</td>";
                    echo "<td>" . $row['banned'] . "</td>";
                    echo "<td>" . $row['logintime'] . "</td>";
                    echo "<td>" . $row['akses'] . "</td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>
