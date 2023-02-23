<?php
require 'functions.php';

if(isset($_POST["register"])) {
  if(register($_POST) > 0) {
    echo "<script>alert('User baru berhasil di tambahkan!')</script>";
  } else {
    echo mysqli_error($connDB);
  }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Halaman Registrasi</title>
</head>
<body>
  <h1>Halaman Registrasi</h1>

  <form action="" method="post">
    <ul>
      <li>
        <label for="username">Username</label>
        <input type="text" name="username" id="username">
      </li>
      <li>
        <label for="password">Password</label>
        <input type="password" name="password" id="password">
      </li>
      <li>
        <label for="config">Konfirmasi Password</label>
        <input type="password" name="config" id="config">
      </li>
      <li>
        <button type="submit" name="register">Sumbit</button>
      </li>
    </ul>
  </form>
</body>
</html>