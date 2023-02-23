<?php
require 'functions.php';

// AMBIL DATA DARI URL (ID)
$id = $_GET["id"];

// QUERY DATA MUSIK BERDASRKAN ID
$testimoni = query("SELECT * FROM testimoni WHERE id = $id")[0];

// CEK APAKAH TOMBOL SUBMIT SUDAH DI TEKAN ATAU BELUM
if(isset($_POST["submit"])) {
  // CEK APAKAH DATA BERHASIL DIUBAH ATAU TIDAK
  if(ubahData($_POST) > 0) {
    echo "
      <script>
        alert('Data berhasil diubah!');
        document.location.href = 'index.php';
      </script>
    ";
  } else {
    echo "
      <script>
        alert('Data gagal diubah!');
        document.location.href = 'index.php';
      </script>
    ";
  }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tambah Daftar Musik</title>
</head>
<body>
  <h1>Ubah Data</h1>

  <form action="" method="post">
    <table border="0" cellspacing="0" cellpadding="13">
      <input type="hidden" name="id" value="<?php echo $testimoni["id"];?>">
      <tr>
        <td><label for="namaUser">Nama User</label></td>
        <td>: <input type="text" name="namaUser" id="namaUser" required value="<?php echo $testimoni["namaUser"];?>"></td>
      </tr>
      <tr>
        <td><label for="komentar">komentar</label></td>
        <td>: <input type="text" name="komentar" id="komentar" required value="<?php echo $testimoni["komentar"];?>"></td>
      </tr>
        <td colspan="2">
          <button type="submit" name="submit">Submit</button>
        </td>
      </tr>
    </table>
  </form>
</body>
</html>