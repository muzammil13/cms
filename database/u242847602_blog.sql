-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2016 at 03:46 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u242847602_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(40) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `username`, `password`, `email`, `level`) VALUES
(1, 'muzammil', '12345', 'muzammil@gmail.com', 1),
(5, 'messi', 'barcelona', 'messil@yaho.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tag` varchar(20) NOT NULL,
  `penulis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `gambar`, `isi`, `waktu`, `tag`, `penulis`) VALUES
(1, 'Pengertian HTML', 'html.png', 'Jika anda ingin mempelajari bagaimana cara membuat website, langkah pertama adalah mempelajari HTML. HTML adalah dasar dari semua halaman web yang kita lihat di Internet. Tetapi, apa sebenarnya HTML? dalam tutorial pertama Belajar HTML Dasar ini kita akan membahas Pengertian HTML. <br>\r\n\r\nHTML adalah singkatan dari Hypertext Markup Language. Disebut hypertext karena di dalam HTML sebuah text biasa dapat berfungsi lain, kita dapat membuatnya menjadi link yang dapat berpindah dari satu halaman ke halaman lainnya dengan hanya meng-klik text tersebut. Kemampuan text inilah yang dinamakan hypertext, walaupun pada implementasinya nanti tidak hanya text yang dapat dijadikan link. <br>\r\n\r\nDisebut Markup Language karena bahasa HTML menggunakan tanda (mark), untuk menandai bagian-bagian dari text. Misalnya, text yang berada di antara tanda tertentu akan menjadi tebal, dan di antara tanda lainnya akan tampak besar. Tanda ini akan kita kenal di HTML sebagai tag. <br>\r\n\r\nHTML merupakan bahasa dasar pembuatan web. Disebut dasar karena dalam membuat web, jika hanya menggunakan HTML, tampilan web kita akan terasa hambar. Terdapat banyak bahasa pemograman web yang ditujukan untuk memanipulasi kode HTML, seperti JavaScript dan PHP. Namun sebelum anda belajar JavaScript maupun PHP, memahami HTML merupakan hal yang paling awal. <br>\r\n\r\nHTML bukan bahasa pemograman (programming language), tetapi bahasa markup (markup language), hal ini terdengar sedikit aneh, tapi jika anda telah mengenal bahasa pemograman lain, dalam HTML tidak akan ditemukan struktur yang biasa di temukan dalam bahasa pemograman seperti IF, LOOP, maupun variabel. HTML hanya sebuah bahasa struktur yang fungsinya untuk menandai bagian-bagian dari sebuah halaman.<br>\r\n\r\nSelain HTML, dikenal juga xHTML yang merupakan singkatan dari eXtensible Hypertext Markup Language. xHTML merupakan versi tambahan dari HTML. Untuk tahap ini anda boleh menyebut bahwa xHTML itu juga HTML.<br>\r\n\r\nFile HTML harus dijalankan dari aplikasi web browser. Dalam tutorial belajar HTML dasar selanjutnya, kita akan membahas tentang Fungsi Web Browser.\r\n', '2015-12-15 11:15:02', 'HTML', 'muzammil'),
(2, 'Aplikasi Editor HTML (Notepad++)', 'html.png', 'Memilih sebuah aplikasi editor HTML tidaklah terlalu sulit. Aplikasi editor HTML digunakan untuk mempermudah kita membuat kode HTML. HTML sendiri pada dasarnya hanya text biasa yang ditulis dalam kode-kode khusus. Web Browser-lah yang akan menerjemahkan kode HTML ini menjadi sebuah tampilan halaman web.<br>\r\n\r\nUntuk membuat kode HTML maupun halaman web sederhana, kita tidak perlu menggunakan aplikasi yang besar dan berat. Aplikasi Notepad bawaan Windows sudah cukup untuk membuat kode HTML. Namun untuk tutorial belajar HTML ini saya akan menggunakan aplikasi Notepad++.<br>\r\n\r\nAplikasi Notepad++ ini dapat diinstall secara gratis dari <a href="http://notepad-plus-plus.org/download/">Notepad Plus Plus</a> dimana pada saat tutorial ini diupdate pada November 2015, versi terakhir adalah 6.8.6. Notepad++ adalah aplikasi editor text gratis yang ringan dan memiliki banyak fitur. Salah satunya adalah fitur pewarnaan code (syntax highlighting) untuk memudahkan penulisan HTML.<br>', '2015-12-21 08:17:16', 'HTML', 'muzammil'),
(25, 'Pengertian CSS', 'css3_logo.png', 'Dalam bahasa bakunya, seperti di kutip dari wikipedia, CSS adalah â€œkumpulan kode yang digunakan untuk mendefenisikan desain dari bahasa markupâ€ , dimana bahasa markup ini salah satunya adalah HTML.<br>\r\n\r\nUntuk pengertian bebasnya, CSS adalah kumpulan kode program yang digunakan untuk mendesain atau mempercantik tampilan halaman HTML. Dengan CSS kita bisa mengubah desain dari text, warna, gambar dan latar belakang dari (hampir) semua kode tag HTML.<br>\r\n\r\nCSS biasanya selalu dikaitkan dengan HTML, karena keduanya memang saling melengkapi. HTML ditujukan untuk membuat struktur, atau konten dari halaman web. Sedangkan CSS digunakan untuk tampilan dari halaman web tersebut. Istilahnya, â€œHTML for content, CSS for Presentationâ€.<br>\r\n\r\nAwal mula diperlukannya CSS dikarenakan kebutuhan akan halaman web yang semakin kompleks. Pada awal kemunculan HTML, kita bisa membuat suatu paragraf bewarna merah dengan menulis langsung kode tersebut didalam tag HTML, atau membuat latar belakang sebuah halaman dengan warna biru. CSS memungkinkan kita merubah tampilan dari halaman, tanpa mengubah isi dari halaman. Dalam tutorial selanjutnya.', '2015-12-27 09:34:46', 'CSS', 'muzammil'),
(26, 'Cara Menginput Kode CSS ke HTML', 'css3_logo.png', 'Sebagaimana telah dipelajari pada saat pembahasan tentang HTML, HTML pada dasarnya  adalah kumpulan dari tag-tag yang disusun sehingga memiliki bagian-bagian tertentu, seperti paragraf, list, tabel dan sebagainya. CSS digunakan untuk mendesain tag-tag HTML ini.<br>\r\n\r\nSecara garis besar, terdapat 3 cara menginput kode CSS ke dalam HTML, yaitu <b>metode Inline Style</b>, <b>Internal Style Sheets</b>, dan <b>External Style Sheets</b>.<br>\r\n\r\nMetode Inline Style adalah cara menginput kode CSS langsung ke dalam tag HTML dengan menggunakan atribut style.<br>\r\n\r\nMetode Internal Style Sheets, atau disebut juga Embedded Style Sheets digunakan untuk memisahkan kode CSS dari tag HTML namun tetap dalam satu halaman HTML. Atribut style yang sebelumnya berada di dalam tag, dikumpulkan pada pada sebuah tag style. Tag style ini harus berada pada bagian <head> dari halaman HTML.<br>\r\n\r\nMetode External Style Sheets digunakan untuk â€˜mengangkatâ€™ kode CSS tersebut kedalam sebuah file tersendiri yang terpisah sepenuhnya dari halaman HTML. Setiap halaman yang membutuhkan kode CSS, tinggal â€˜memanggilâ€™ file CSS tersebut.', '2015-12-27 09:35:48', 'CSS', 'muzammil'),
(27, 'Pengertian MySQL sebagai RDBMS', 'mysql-logo_2800x2800_pixels1.png', 'Bagi mahasiswa maupun web developer, kalau bicara database, kemungkinan besar akan membicarakan MySQL. Tapi, kenapa harus MySQL? Bagaimana dengan Oracle? Jawaban singkat, padat dan tepat adalah: gratis dan user friendly.<br>\r\n\r\nMySQL adalah salah satu aplikasi RDBMS (Relational Database Management System). Pengertian sederhana RDBMS adalah: aplikasi database yang menggunakan prinsip relasional. Apa itu prinsip relasional? Kita akan membicarakannya dalam tutorial berikutnya.<br>\r\n\r\nMySQL juga bukan satu-satunya RDBMS, list lengkapnya ada di wikipedia. Diantaranya yang banyak dikenal adalah: Oracle, Sybase, Microsoft Access, Microsoft SQL Server, dan PostgreSQL.<br>\r\n\r\nMySQL bersifat gratis dan open source. Artinya setiap orang boleh menggunakan dan mengembangkan aplikasi ini. Namun walaupun gratis, MySQL di support oleh ribuan programmer dari seluruh dunia, dan merupakan sebuah aplikasi RDBMS yang lengkap, cepat, dan reliabel.\r\n\r\n', '2015-12-27 10:01:21', 'MySQL', 'muzammil'),
(28, 'Pengertian dan Fungsi PHP', 'php.png', 'PHP adalah bahasa pemrograman script server-side yang didesain untuk pengembangan web. Selain itu, PHP juga bisa digunakan sebagai bahasa pemrograman umum (wikipedia). PHP di kembangkan pada tahun 1995 oleh Rasmus Lerdorf, dan sekarang dikelola oleh The PHP Group. Situs resmi PHP beralamat di <a href="http://www.php.net">php.net</a>.<br>\r\n\r\nPHP disebut bahasa pemrograman server side karena PHP diproses pada komputer server. Hal ini berbeda dibandingkan dengan bahasa pemrograman client-side seperti JavaScript yang diproses pada web browser (client).<br>\r\n\r\nPada awalnya PHP merupakan singkatan dari Personal Home Page. Sesuai dengan namanya, PHP digunakan untuk membuat website pribadi. Dalam beberapa tahun perkembangannya, PHP menjelma menjadi bahasa pemrograman web yang powerful dan tidak hanya digunakan untuk membuat halaman web sederhana, tetapi juga website populer yang digunakan oleh jutaan orang seperti wikipedia, wordpress, joomla, dll.<br>\r\n\r\nSaat ini PHP adalah singkatan dari PHP: Hypertext Preprocessor, sebuah kepanjangan rekursif, yakni permainan kata dimana kepanjangannya terdiri dari singkatan itu sendiri: PHP: Hypertext Preprocessor.<br>\r\n\r\nPHP dapat digunakan dengan gratis (free) dan bersifat Open Source. PHP dirilis dalam lisensi PHP License, sedikit berbeda dengan lisensi GNU General Public License (GPL) yang biasa digunakan untuk proyek Open Source.', '2015-12-27 10:06:28', 'PHP', 'muzammil'),
(30, 'Sejarah PHP dan Perkembangan PHP', 'php (1).png', 'Sejarah PHP bermula pada tahun 1994 ketika programmer kelahiran Denmark yang sekarang berdomisili di Canada, Rasmus Lerdorf membuat sebuah script (kode program) dengan bahasa Perl untuk web pribadinya. Salah satu kegunan script ini adalah untuk menampilkan resume pribadi dan mencatat jumlah pengunjung ke sebuah website.<br>\r\n\r\nDengan alasan untuk meningkatkan performa, Rasmus Lerdorf kemudian membuat ulang kode program tersebut dalam bahasa C. Ia juga mengembangkannya lebih lanjut sehingga memiliki script tersebut memiliki kemampuan untuk memproses form HTML dan berkomunikasi dengan database.<br>\r\n\r\nLerdorf menyebut kode program ini sebagai Personal Home Page/Forms Interpreter atau PHP/FI. Inilah asal mula penamaan PHP digunakan. PHP/FI dapat digunakan untuk membuat aplikasi web dinamis sederhana.<br>\r\n\r\nLerdorf kemudian merilis kode tersebut ke publik dengan sebutan Personal Home Page Tools (PHP Tools) version 1.0. Perilisan ini diumumkan pada 8 Juni 1995 di alamat comp.infosystems.www.authoring.cgi, sebuah group diskusi Usenet.<br>\r\n\r\nSeiring dengan pengembangan dan penambahan fitur web pada saat itu, pada April 1996, Rasmus Lerdorf mengumumkan PHP/FI versi 2.0. PHP versi 2 ini dirancang Lerdorf pada saat mengerjakan sebuah proyek di University of Toronto yang membutuhkan pengolahan data dan tampilan web yang rumit. PHP/FI versi 1 sebenarnya sudah mencukupi, namun performa yang dihasilkan dirasakan belum cukup, sehingga butuh penambahan fitur lanjutan.<br>\r\n\r\nEvolusi PHP berikutnya terjadi pada pertengahan tahun 1997, PHP versi 2 telah menarik banyak perhatian programmer, namun bahasa ini memiliki masalah dengan kestabilan yang kurang bisa diandalkan. Hal ini lebih dikarenakan Lerdorf hanya bekerja sendiri untuk mengembangkan PHP.<br>\r\n\r\nPada saat itulah Zeev Suraski dan Andi Gutmans, ikut mengambil bagian dan membuat ulang parsing engine yang menjadi dasar dari PHP agar lebih stabil.<br>\r\n\r\nDengan dukungan dari banyak programmer lainnya, Proyek PHP secara perlahan beralih dari proyek satu orang menjadi proyek massal yang lebih akrab kita kenal sebagai open-source project. PHP selanjutnya dikembangkan oleh The PHP Group yang merupakan kumpulan banyak programmer dari seluruh dunia.<br>\r\n\r\nSegera setelahnya, Zeev Suraski, Andi Gutmans dan juga berbagai programmer di seluruh dunia mengembangkan PHP lebih jauh lagi dengan memperkenalkan banyak fitur lanjutan, seperti layer abstraksi antara PHP dengan web server, menambahkan mekanisme thread-safety, dan two-stage parsing. Parsing baru ini dikembangkan oleh Zeev dan Andi, dan dinamakan Zend engine. Akhirnya pada 22 May 2000 diluncurkan PHP 4.0<br>\r\n\r\nPHP versi 4 juga menyertakan fitur pemrograman objek / Object Oriented Programming, walaupun belum sempurna.<br>\r\n\r\nVersi PHP terakhir hingga saat ini, yaitu PHP 5.x diluncurkan pada 13 Juli 2004. PHP 5 telah mendukung penuh pemrograman object dan peningkatan performa melalui Zend engine versi 2.<br>\r\n\r\nBeberapa penambahan fitur meliputi PDO (PHP Data Objects) untuk pengaksesan database, closures, trait, dan namespaces.<br>', '2015-12-27 10:39:35', 'PHP', 'muzammil'),
(33, 'Structured Query Language (SQL)', 'mysql2.png', 'SQL (Structured Query Language) adalah bahasa pemrograman khusus yang digunakan untuk memanajemen data dalam RDBMS. SQL biasanya berupa perintah sederhana yang berisi instruksi-instruksi untuk manipulasi data. Perintah SQL ini sering juga disingkat dengan sebutan â€˜queryâ€˜.<br>\r\n\r\nBersamaan dengan paper Dr. Edgar F. Codd pada tahun 1969 tentang Teori Database Relational, ia pun mengajukan sebuah bahasa yang disebut DSL/Alpha untuk memanajemen data dalam relational database. Berdasarkan ide Dr.Codd ini, beberapa saat setelah itu IBM mencoba merancang bahasa prototipe sederhana DSL/Alpha yang disebut SQUARE.<br>\r\n\r\nPada tahun 1970, team yang beranggotakan peneliti IBM Donald D. Chamberlin dan Raymond F. Boyce, mengembangkan SQUARE lebih lanjut menjadi SEQUEL (Structured English Query Language). SEQUEL digunakan untuk mengoperasikan prototipe RDBMS pertama IBM, System R. Dikemudian hari, SEQUEL berubah nama menjadi SQL karena permasalahan merk dagang (trademark) dengan sebuah perusahaan pesawat di inggris yang terlebih dahulu telah memakai nama SEQUEL.<br>\r\n\r\nPada akhir 1970an, perusahaan Relational Software, Inc. (sekarang Oracle Corporation) melihat potensi bahasa SQL dan mengembangkan sendiri versi SQL untuk RDBMS mereka. Oracle V2 (versi 2) yang dirilis Juni 1979 adalah RDBMS komersial pertama yang mengimplementasikan SQL.<br>\r\n\r\nDengan kemudahan yang ditawarkan, SQL mulai diimplementasikan oleh berbagai RDBMS dengan versi SQL mereka masing-masing. Namun hal ini  menimbulkan permasalahan karena perbedaan penerapan SQL dari satu aplikasi dengan aplikasi database lainnya yang tidak seragam.Sehingga  pada tahun 1986, badan standar amerika, ANSI (American National Standards Institute) merancang sebuah standar untuk SQL. Satu tahun setelahnya, ISO (International Organization for Standardization) juga mengeluarkan standar untuk SQL. Versi terakhir standar SQL dirilis pada 2011, yang dinamakan SQL 2011. Dengan standar ini diharapkan ada keseragaman SQL antar aplikasi RDBMS.<br>\r\n\r\nAkan tetapi walaupun sudah ada standar tentang SQL, banyak perusahaan RDBMS yang menambahkan â€˜fiturâ€™ SQL selain standar yang ada. MySQL juga memiliki SQL yang tidak standar, yang tidak ada pada Oracle, begitu juga sebaliknya. Namun setidaknya bahasa SQL hampir sama untuk perintah-perintah dasar antar RDBMS. Perintah SQL untuk membuat tabel misalnya, dapat digunakan baik di Oracle maupun MySQL.', '2015-12-31 09:58:18', 'MySQL', 'muzammil'),
(34, 'Nama Variabel', 'php.png', 'Ketika kita memulai sebuah perjalanan dalam mempelajari programming pasti kita selalu bertemu dengan materi tentang variabel. Variabel adalah sebuah container yang bisa dirubah nilainya pada saat tertentu. Pada saat ini kita menggunakan Visual Basic dan PHP sebagai programmingnya.<br>\r\nAlasan kita menggunakan sebuah variabel adalah karena kita membutuhkan sebuah container yang nantinya dapat kita rubah karena alasan tertentu. Sebagai contoh kita membutuhkan sebuah container yang menampung nama siswa, untuk itu kita dapat mendeklarasikan sebuah variabel dengan nama tertentu yang nantinya akan berisikan nama siswa.<br><br>\r\nBerikut beberapa saran didalam membuat sebuah nama variabel<br>\r\n1. Nama variabel harus menjelaskan isi dari variabel itu sendiri, sebagai contoh gunakan nama variabel â€œnama_siswaâ€ untuk menampung data nama siswa.<br>\r\n2. Gunakan pemisah underscore atau â€œ_â€ jika nama variabel terdiri lebih dari satu kata, sebagai contoh â€œnama_siswaâ€ â€œnomor_teleponâ€.<br>\r\n3. Jika ingin menyingkat sebuah nama variabel pastikan singkatannya sudah umum seperti â€œtelpâ€ untuk telepon, â€œwebâ€ untuk website dan singkatan yang sudah umum lainnya<br>\r\n4. Sebisa mungkin hindari membuat sebuah variabel yang tidak pernah kita gunakan<br>\r\n', '2015-12-31 15:53:10', 'PHP', 'messi'),
(35, 'Google melepas API Java Oracle', 'android-icon.jpg', 'Sebuah berita yang cukup mengagetkan bahwa Google akan melepas API Java Oracle dan menggantinya dengan API OpenJDK yang akan dipakai nanti untuk pengembangan Andoid N. Berita ini saya dapatkan dari mas Sidiq Permana, salah satu GDE (Google Developer Expert) Indonesia dan juga member dari Grup CodeAndroid Indonesia â€“ Google Android Developer Group. Untuk detail beritanya silahkan klik di sini.<br>Sebelum itu, berita perdebatan Google dan Oracle karena Java juga pernah mencuat di media beberapa tahun lalu hingga menuju meja hijau. Namun, saya mengambil sikap positif dan juga menganggapnya sebagai sebuah â€œhiburanâ€ tersendiri. Mengapa saya katakan hiburan karena Google, Oracle dan Java seolah â€“ olah terlibat dalam cinta segitiga.<br>Google menggunakan API Java Oracle untuk mengembangkan aplikasi Android, sedangkan Oracle tidak menerimanya karena Google belum mendapatkan persetujuan dari pihak Oracle (sepengetahuan saya). Dan akhirnya terjadilah perang cinta segitiga memperebutkan Java. Namun, Tuhan memberikan jalan tengah bagi Google dan Oracle yakni Google menggunakan API OpenJDK dan melepaskan API Java Oracle.<br>Di sisi lain saya rasa alangkah baiknya sebelum menuju ke meja hijau dan menentukan siapa yang bersalah, para petinggi Google dan Oracle bertemu dan mengadakan diskusi santai sambil minum kopi Jawa untuk mencari jalan tengahnya (entah ini sudah dilakukan atau belum). Karena, menurut saya Google dan Oracle sama â€“ sama untung kok. Oracle diuntungkan karena API nya dipakai oleh Google dan mungkin secara tidak langsung juga menaikkan citra Oracle dan Google diuntungkan karena berhak menggunakan API Oracle jadi pengembangan untuk Android versi berikutnya tidak ada hambatan.<br>', '2015-12-31 16:25:28', 'ANDROID', 'messi'),
(36, 'XAMPP Terbaru dengan PHP 7.0.0', 'xampp.png', 'XAMPP sebagai sarana pendukung pengembangan aplikasi web berbasis PHP, APACHE, MariaDB telah menempatkan versi terbaru dari PHP yaitu versi 7.0.0. Dengan sejumlah peningkatan dan fitur baru di PHP 7.0.0 ApacheFriends merilis XAMPP terbaru mereka dengan PHP 7.0.0 pada tanggal 23 Desember 2015.<br>banyak sekarang juga pemanfaatan Xampp sebagai sebuah localhost dari sistem informasi berbasis website untuk kalangan personal, CV, atau perusahaan karena bersifat open source<br><br>\r\nBeberapa modul yang telah diupdate antara lain:<br>\r\n<ul><li>PHP ke versi 7.0.0</li>\r\n<li>Apache ke versi 2.4.18</li>\r\n<li>OpenSSL ke 1.0.2e</li>\r\n<li>MariaDB ke 10.1.9</li>\r\n</ul>\r\nAnda dapat mengunduhnya disini: <a href="http://www.apachefriends.org/download.html"> Xampp</a>', '2016-01-02 19:51:18', 'Uncategorize', 'muzammil');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `no` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`no`, `nama_kategori`) VALUES
(2, 'HTML'),
(3, 'CSS'),
(4, 'PHP'),
(5, 'MySQL'),
(6, 'JAVASCRIPT'),
(7, 'ANDROID'),
(8, 'Uncategorize');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
