-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2023 at 08:26 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata2`
--

-- --------------------------------------------------------

--
-- Table structure for table `overview`
--

CREATE TABLE `overview` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `overview`
--

INSERT INTO `overview` (`id`, `nama`, `gambar`, `deskripsi`, `keterangan`, `link`) VALUES
(1, 'Air Terjun Toroan - Sampang', 'Air Terjun Toroan - Sampang-1.jpg', 'Air Terjun Toroan berada di tepi Pantai Nepa, inilah mengapa alirannya langsung menuju...', 'trending', 'airterjuntoroan'),
(2, 'Bukit Arosbaya - Bangkalan', 'Bukit Arosbaya - Bangkalan-1.jpeg', 'Bukit Kapur Arosbaya adalah sebuah kawasan wisata yang terbentuk dari bekas sisa galian dan kerukan penambang...', 'trending', 'bukitarosbaya'),
(3, 'Gili Labak - Sumenep', 'Gili Labak - Sumenep-3.jpg', 'Gili Labak adalah sebuah pulau kecil yang terletak di sebelah tenggara Pulau Puteran atau Pulau Madura...', 'trending', 'gililabak'),
(4, 'Gua Blaban - Pamekasan', 'Gua Blaban - Pamekasan-3.jpg', 'Wisata Gua Blaban Pamekasan adalah salah satu tempat wisata yang berada di desa blabar , kecamatan batu mar mar . kabupaten pamekasan . provinsi jawa timur . negara indonesia Wisata Gua Blaban Pamekasan adalah...', 'top', 'guablaban');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `namaUser` varchar(100) NOT NULL,
  `komentar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id`, `namaUser`, `komentar`) VALUES
(5, 'Zacky', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum fuga perspiciatis saepe et, aut libero odit repellendus explicabo tenetur voluptatibus error nostrum non, quia harum! Voluptates sequi inve'),
(6, 'Firda Rahayu', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dignissimos perspiciatis nam reprehenderit sit debitis aperiam minima adipisci quis doloremque temporibus cum impedit, vel ut, voluptate, duci'),
(7, 'Andika Bayu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit delectus, aspernatur mollitia fuga nisi quis adipisci aut quam. Aliquam a libero corrupti corporis perferendis dicta ipsa sapiente sed m'),
(12, 'Evan Alifian Rafa', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dignissimos perspiciatis nam reprehenderit sit debitis aperiam minima adipisci quis doloremque temporibus cum impedit, vel ut, voluptate, duci'),
(13, 'Evan', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dignissimos perspiciatis nam reprehenderit sit debitis aperiam minima adipisci quis doloremque temporibus cum impedit, vel ut, voluptate, duci');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'evanalifian', '$2y$10$wWGZBRFa02fKa.6oI.oFPOVobVuplavbY6oGruaV03XtnG1Mkoyb2'),
(2, 'ali', '$2y$10$XtU0hIrDhMzG/wVwlcwLBetTRLqhzQs1aNHpvYVmQpa4JX4YVzByi'),
(3, 'admin', '$2y$10$ib.t3t/XKn3ahSHVh75rC.iRYDEPhQ4gfexKlAaapQnas9MSiR4Qy');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `gambar`, `deskripsi`, `keterangan`) VALUES
(1, 'AirTerjunToroan-Sampang', 'Air Terjun Toroan - Sampang-1.jpg', 'Air Terjun Toroan berada di tepi Pantai Nepa, inilah mengapa alirannya langsung menuju laut. Dan di Madura, hanya air terjun inilah yang berlokasi di tepi pantai. Air terjun yang memiliki ketinggian 20 meter ini sangatlah mempesona.\r\nDinding tebing air terjun berwarna kuning keemasan, berpadu dengan jernihnya air terjun. Air terjun akan semakin indah terlihat saat sedang pasang. Ditambah lagi, deburan ombak yang beradu dengan suara air terjun, begitu riuh bersahutan.\r\nObjek wisata air terjun ini berada di Desa Ketapang Daya, Kecamatan Ketapang, Kabupaten Sampang, Madura. Jarak dari kota Sampang kurang lebih 50 kilometer dan dapat ditempuh dalam waktu 1 jam berkendara. Tidak banyak angkutan umum publik yang tersedia. Jika tidak membawa kendaraan pribadi bisa menggunakan kendaraan sewa untuk mencapai air terjun ini.\r\n', 'trending'),
(4, 'AirTerjunToroan-Sampang', 'Air Terjun Toroan - Sampang-2.jpg', 'Air Terjun Toroan - Sampang', 'trending'),
(5, 'AirTerjunToroan-Sampang', 'Air Terjun Toroan - Sampang-3.jpg', 'Air Terjun Toroan - Sampang', 'trending'),
(6, 'BukitArosbaya-Bangkalan', 'Bukit Arosbaya - Bangkalan-1.jpeg', 'Bukit Kapur Arosbaya adalah sebuah kawasan wisata yang terbentuk dari bekas sisa galian dan kerukan penambang batu kapur dan tanah liat yang dilakukan oleh warga setempat. Bukit kapur Arosbaya memang masih tergolong destinasi wisata baru di Kabupaten Bangkalan Pulau Madura Jawa Timur. Bukit kapur Arosbaya Mulai populer sekitar tahun 2015 setelah ada beberapa selebgram yang memposting tempat keren ini.\r\nBukit kapur Arosbaya atau bisa disebut dengan Bukit Pelalangan ini terletak di Desa Berbeluk, Kecamatan Arosbaya Kabupaten Bangkalan Provinsi Jawa Timur. Buat kalian yang ingin ke Bukit kapur Arosbaya, aksesnya terbilang cukup mudah. Pertama kalian harus datang ke kota Bangkalan terlebih dahulu. Nah begitu tiba di Kota Bangkalan, lanjutkan perjalanan menuju Kecamatan Arosbaya.\r\n', 'trending'),
(7, 'BukitArosbaya-Bangkalan', 'Bukit Arosbaya - Bangkalan-2.jpeg', 'Bukit Arosbaya - Bangkalan', 'trending'),
(8, 'BukitArosbaya-Bangkalan', 'Bukit Arosbaya - Bangkalan-3.jpeg', 'Bukit Arosbaya - Bangkalan', 'trending'),
(9, 'GiliLabak-Sumenep', 'Gili Labak - Sumenep-1.jpg', 'Gili Labak adalah sebuah pulau kecil yang terletak di sebelah tenggara Pulau Puteran atau Pulau Madura. Secara administratif, pulau ini terletak di Desa Kombang, Kecamatan Talango, Kabupaten Sumenep, Jawa Timur. Ibu kota kecamatan Talango berada di Pulau Puteran. Pulaunya membentang sepanjang 5 hektar dan dapat dikelilingi kurang dari sejam.\r\nSebelumnya pulau ini dikenal dengan nama Pulau Tikus oleh masyarakat sekitar. Gili labak dikenal memiliki biota laut yang beragam, Selain itu pulaunya dikelilingi oleh pasir putih bersih. Pengunjung akan disambut oleh taburan pasir putih, air laut yang jernih, serta parairan pinggir pantai yang tenang. Warga asli Gili Labak ramah terhadap wisatawan namun perlu diperhatikan pula bahwa kebanyakan dari mereka hanya bisa berbahasa Madura\r\n', 'trending'),
(10, 'GiliLabak-Sumenep', 'Gili Labak - Sumenep-2.jpg', 'Gili Labak - Sumenep-1', 'trending'),
(11, 'GiliLabak-Sumenep', 'Gili Labak - Sumenep-3.jpg', 'Gili Labak - Sumenep-1', 'trending'),
(13, 'GuaBlaban-Pamekasan', 'Gua Blaban - Pamekasan-1.jpg', 'Wisata Gua Blaban Pamekasan adalah salah satu tempat wisata yang berada di desa blabar , kecamatan batu mar mar . kabupaten pamekasan . provinsi jawa timur . negara indonesia Wisata Gua Blaban Pamekasan adalah tempat wisata yang ramai dengan wisatawan pada hari biasa maupun hari liburan. Tempat ini sangat indah dan bisa memberikan sensasi yang berbeda dengan aktivitas kita sehari hari.\r\n            Wisata Gua Blaban Pamekasan memiliki pesona keindahan yang sangat menarik untuk dikunjungi. Sangat di sayangkan jika anda berada di kota pamekasan tidak mengunjungi wisata alam yang mempunyai keindahan yang tiada duanya tersebut.', 'top'),
(14, 'GuaBlaban-Pamekasan', 'Gua Blaban - Pamekasan-2.jpg', 'Gua Blaban - Pamekasan', 'top'),
(15, 'GuaBlaban-Pamekasan', 'Gua Blaban - Pamekasan-3.jpg', 'Gua Blaban - Pamekasan', 'top');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `overview`
--
ALTER TABLE `overview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `overview`
--
ALTER TABLE `overview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
