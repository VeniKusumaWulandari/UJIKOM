-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2023 at 08:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding_orgaizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `gambar`, `nama`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'app/profile/1-1697710071-QNSzB.webp', 'Veni Kusuma Wulandari Amd.Kom', 'admin@gmail.com', '$2y$10$5uVKxB4OLVNAtuqpNB/TXup2/HMJy/6vCU0yUm1q9QYcvau/FLBUS', NULL, '2023-10-19 17:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `thumbnail` char(225) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `isi` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `thumbnail`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(2, 'app/artikel/-1697735137-hSLR0.jpg', 'Aturan Pelaksanaan Akad Nikah Di Tengah Pandemic', '<p>Penyebaran Covid-19 alias virus Corona masih terjadi di Indonesia. Kondisi ini menyebabkan banyak calon pasangan yang berencana menggelar akad dan resepsi pernikahan bingung akan nasib pesta pernikahannya.<br><br>Bagi kamu yang sudah memiliki rencana untuk menikah dalam waktu dekat, akad nikah tetap bisa dilaksanakan. Namun, ada beberapa aturan pelayanan nikah yang diberlakukan oleh Kantor Urusan Agama (KUA) selama masa tanggap darurat. Hal ini dilakukan untuk memfasilitasi pasangan yang akan menikah sekaligus menghindari penyebaran COVID-19. Seperti apa aturannya?<br><br><strong>1. Ruang terbuka atau ruangan berventilasi</strong><br>Pelaksanaan akad nikah yang dilakukan di KUA akan diatur sedemikian rupa agar jarak antar orang tetap sesuai anjuran pemerintah.<br>Sementara untuk akad nikah yang dilaksanakan di luar KUA, bisa di rumah pribadi atau gedung tertentu, perlu memperhatikan sirkulasi udara di ruangan tersebut. Jika memungkinkan, pilih tempat yang agak terbuka.<br><br><strong>2. Jumlah saksi prosesi akad nikah maksimal 10 orang</strong><br>KUA diminta Kementerian Agama untuk membatasi jumlah orang yang mengikuti prosesi akad nikah. Jumlah anggota keluarga dari kedua mempelai yang boleh hadir maksimal 10 orang saja.<br>Dengan pembatasan jumlah orang yang diizinkan menghadiri akad nikah kalian, sekarang waktunya bagi kalian untuk mensosialisasikan kebijakan tersebut kepada seluruh sanak keluarga. Jangan sampai pada hari-H pernikahan, terlalu banyak anggota keluarga yang hadir. Beri pengertian kepada mereka, bahwa kebijakan ini demi kebaikan dan kesehatan bersama.<br><br><strong>3. Tetap wajib cuci tangan, serta menggunakan masker dan sarung tangan</strong><br>Calon pengantin, petugas KUA, serta para saksi akad nikah juga tetap diwajibkan mencuci tangan, menggunakan masker, serta menggunakan sarung tangan selama mengikuti prosesi akad nikah.<br><br>Bagaimana? Sudah paham kan beberapa aturan melangsungkan pernikahan secara aman di tengah merebaknya Covid-19? Ikuti anjuran dan kebijakan pemerintah demi kebaikan bersama ya.<br><br>Toh kamu dan pasangan bisa menggelar pesta resepsi pernikahan setelah nanti wabah ini selesai. Karena yang paling penting dari pernikahan adalah&nbsp;<em>Sakinah, Mawaddah, dan Warrahmah-nya</em>&nbsp;bukan?<br><br>Setelah nanti kondisi sudah kondusif, kamu bisa mempersiapkan resepsi pernikahan bersama pasangan dengan mencari Gedung serta layanan vendor untuk kebutuhan resepsi tersebut.<br><br>Bagi kamu yang masih mencari paket akad nikah, ORIE menyediakan rincian paket akad nikah yang bisa kamu pilih selama masa&nbsp;</p>', '2023-10-20 00:05:37', '2023-10-20 00:14:50'),
(3, 'app/artikel/-1697736876-lXPyr.jpg', '5 Tips Lancar Mengucapkan Ijab Kabul', '<p>Buat kamu calon pengantin pria yang akan menikah sebentar lagi mungkin akan gugup ketika memikirkan prosesi ijab kabul. Pada akhirnya kamu berusaha sebisa mungkin agar tidak gugup saat ijab kabul nanti.&nbsp;Meskipun hanyalah rangkaian kata, dibalik kalimat ijab kabul terdapat tanggung jawab yang amat besar menantimu setelah kehidupan berkeluarga dimulai.</p>\r\n<p>Meskipun terkesan berat dan tak main-main dalam pengucapannya, jangan sampai kamu gugup dalam prosesi ijab kabul, ya. Nah, berikut adalah 5 tips yang dapat membantu memperlancar pengucapan ijab kabul ketika prosesi akad nikah berlangsung.</p>\r\n<ol>\r\n<li>Lakukan latihan pengucapan ijab kabul sebelum hari pernikahan tiba, agar lidah kamu terbiasa dalam melafalkan kalimat ijab kabul.</li>\r\n<li>Usahakan untuk tetap rileks, tarik nafas dari hidung lalu hembuskan dari mulut.</li>\r\n<li>Berdoa kepada Allah SWT agar diberikan kelancaran saat ijab kabul.</li>\r\n<li>Ijab kabul tak mesti dilakukan dengan menahan nafas. Kamu boleh menarik nafas di tengah pengucapan ijab qabul dan hal itu tidak akan merusak akad nikah. Yang dimaksud \'satu tarikan nafas\' yaitu, ucapan wali nikah langsung disambung oleh ucapan calon pengantin pria.</li>\r\n<li>Yakinkan diri kamu sendiri bahwa kamu bisa menyelesaikan prosesi sakral tersebut</li>\r\n</ol>\r\n<p>Demikian sekilas pembahasan mengenai tips lancar mengucapkan ijab kabul. Mudah-mudahan sedikit informasi ini dapat membantu kamu dalam memperlancar pengucapan ijab kabul ketika prosesi akad nikah berlangsung. Sekian dan selamat beraktivitas kembali.</p>', '2023-10-20 00:34:36', '2023-10-20 00:34:36'),
(4, 'app/artikel/-1697736939-x5j04.jpg', 'Cara Menentukan Konsep Foto Pre-Wedding Yang Berkesan', '<p>Konsep merupakan bagian awal dari satu kegiatan atau acara. Bagi calon pengantin yang sedang mempersiapkan pernikahan, menentukan konsep pernikahan merupakan hal yang paling utama dilakukan. Selain menentukan konsep pernikahan, menentukan konsep pre-wedding juga tak kalah penting.<br><br>Foto pre-wedding akhir-akhir ini memang sangat diminati oleh pasangan yang ingin menikah. Tak jarang mereka melakukan konsep yang berbeda untuk pre-wedding ini. setelah itu, mereka bisa memamerkannya di undangan bahkan menjadi dekorasi pesta pernikahan. Untuk itu, tak mudah memang menentukan konsep foto yang nantinya akan dilihat oleh banyak orang. Berikut cara menentukan konsep foto pre-wedding agar berkesan.<br><br><strong>Pilih Konsep sesuai Impian</strong><br>Tidak semua cocok menggunakan konsep foto pre-wedding yang berlatar belakang alam atau bangunan klasik seperti yang sedang banyak diminati saat ini. Sebagian pasangan lebih memilih konsep yang sesuai dengan karakteristik mereka atau konsep impian mereka dari dulu. Misalnya, dulu Anda memiliki impian untuk bisa menjadi putri dan pangeran. Jadi, konsepnya bisa seperti menjadi putri dan pangeran layaknya impian saat kecil, atau apapun hal yang Anda dan pasangan senangi. Apalagi jika memiliki hobi yang sama, maka hobi tersebut bisa menjadi konsep foto pre-wedding Anda.<br><br><strong>Pilih Fotografer Profesional</strong><br>Setelah menentukan konsep awal foto pre-wedding, selanjutnya Anda bisa mencari fotografer profesional untuk mengabadikan semua momen berharga Anda. Dengan memilih fotografer profesional, konsep awal Anda akan diarahkan menjadi konsep foto yang matang. Jadi, fotografer yang sudah berpengalaman akan sangat membantu Anda dalam menentukan konsep foto pre-wedding.<br><br><strong>Pilih Lokasi dan Busana yang Tepat</strong><br>Konsep atau tema foto pre-wedding Anda akan semakin kuat jika didukung dengan busana dan lokasi yang tepat. Bagi Anda yang memiliki dana lebih, mungkin bisa melakukan foto pre-wedding di luar negeri karena akan lebih menarik dengan alasan pemandangannya berbeda dengan pemandangan yang biasa dilihat di Tanah Air.<br><br>Jika tak memiliki dana yang banyak, Anda bisa memilih lokasi foto pre-wedding di indoor saja karena harganya tergolong lebih murah daripada melakukan foto pre-wedding di outdoor. Jika ingin pilihan sederhana namun tetap menarik, Anda bisa melakukan sesi foto di tepi pantai, atau untuk indoor-nya bisa di gedung-gedung dengan desain klasik.<br><br>Sedangkan untuk busana, Anda bisa membeli atau menyewanya. Jika hanya sekadar berfoto di pantai dengan menggunakan gaun sederhana, Anda bisa menggunakan gaun lama, meminjam pada kerabat/teman atau bisa membelinya. Untuk busana yang agak ribet, Anda bisa menyewanya saja, lumayan bisa menghemat bujet juga.</p>', '2023-10-20 00:35:39', '2023-10-20 00:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(225) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `isi` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `keterangan` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `gambar`, `judul`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'app/galeri/-1697737570-b5Zfo.jpg', 'Galeri 1', 'adASDASD', '2023-10-20 00:46:10', '2023-10-20 00:46:10'),
(3, 'app/galeri/-1697737583-X0e1u.jpg', 'Galeri 2', 'FGDFGDFG', '2023-10-20 00:46:23', '2023-10-20 00:46:23'),
(4, 'app/galeri/-1697737595-UupI1.jpg', 'Galeri 3', 'DASDASD', '2023-10-20 00:46:35', '2023-10-20 00:46:35'),
(5, 'app/galeri/-1697737610-p336Z.jpg', 'Galeri 4', 'HGHGHGH', '2023-10-20 00:46:50', '2023-10-20 00:46:50'),
(6, 'app/galeri/-1697737624-lwwhn.jpg', 'Galeri 5', 'SFDFDF', '2023-10-20 00:47:04', '2023-10-20 00:47:04'),
(7, 'app/galeri/-1697737638-xVl7M.jpg', 'Galeri 6', 'GHGHGH', '2023-10-20 00:47:18', '2023-10-20 00:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `harga` double NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `nama`, `harga`, `gambar`, `created_at`, `updated_at`) VALUES
(5, 'Paket Silver - Elegance Essentials', 5000000, 'app/paket/-1697729851-cCSgF.jpg', '2023-10-19 22:37:31', '2023-10-19 22:37:31'),
(6, 'Paket Gold - Luxury Bliss', 7000000, 'app/paket/-1697730195-8zE3J.jpg', '2023-10-19 22:43:15', '2023-10-19 22:43:15'),
(7, 'Paket Platinum - Fairytale Extravaganza', 10000000, 'app/paket/-1697730277-n1EN9.jpg', '2023-10-19 22:44:37', '2023-10-19 22:44:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
