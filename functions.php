<?php
// KONEKSI KE DATABASE MYSQL
$connDB = mysqli_connect("localhost", "root", "", "pariwisata2");


// MEMBUAT FUNCTION UNTUK MENGISI ARRAY ASOSIATIF DENGAN DATA DARI TABEL
function query($query) {
  global $connDB;
  // QUERY AMBIL TABEL music
  $result = mysqli_query($connDB, $query);

  $data = [];
  while($wisata = mysqli_fetch_assoc($result)) {
    $data[] = $wisata;
  }

  return $data;
};


// MEMBUAT FUNCTION TAMBAH DATA
function tambahKomentar($post) {
  global $connDB;
  // AMBIL DATA DARI TIAP ELEMEN DALAM FORM
  $namaUser = htmlspecialchars($post["namaUser"]);
  $komentar = htmlspecialchars($post["komentar"]);
  
  // QUERY INSERT DATA
  $query = "INSERT INTO testimoni VALUES('', '$namaUser', '$komentar')";
  mysqli_query($connDB, $query);

  return mysqli_affected_rows($connDB);
}


// MEMBUAT FUNGSI HAPUS DATA
function hapusData($id) {
  global $connDB;
  mysqli_query($connDB, "DELETE FROM testimoni WHERE id = $id");

  return mysqli_affected_rows($connDB);
}


// MEMBUAT FUNCTION UBAH DATA
function ubahData($post) {
  global $connDB;
  // AMBIL DATA DARI TIAP ELEMEN DALAM FORM
  $namaUser = htmlspecialchars($post["namaUser"]);
  $komentar = htmlspecialchars($post["komentar"]);
  $id = $post["id"];
  
  // QUERY INSERT DATA
  $query = "UPDATE testimoni SET
            namaUser = '$namaUser',
            komentar = '$komentar'
            WHERE id = $id
            ";
  mysqli_query($connDB, $query);

  return mysqli_affected_rows($connDB);
}


// MEMBUAT FUNCTION REGESTRASI
function register($data) {
  global $connDB;

  $username = strtolower(stripslashes($data["username"]));
  $password = mysqli_real_escape_string($connDB, $data["password"]);
  $config = mysqli_real_escape_string($connDB, $data["config"]);

  // CEK USERNAME SUDAH ADA ATAU BELUM
    $result = mysqli_query($connDB, "SELECT username FROM user WHERE username = '$username'");
    
    if(mysqli_fetch_assoc($result)) {
      echo "<script>alert('username sudah daftarkan')</script>";
      return false;
    }

  // CEK KONFIRMASI PASSWORD
  if($password !== $config) {
    echo "<script>alert('username berhasil di daftarkan')</script>";
    return false;
  }

  // ENKRIPSI PASSWORD
  $password = password_hash($password, PASSWORD_DEFAULT);

  // TAMBAHKAN USERNAME DAN PASSWORD
  mysqli_query($connDB, "INSERT INTO user VALUES('', '$username', '$password')");

  return mysqli_affected_rows($connDB);
}