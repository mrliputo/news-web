-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2016 at 04:21 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `log_baca`
--

CREATE TABLE `log_baca` (
  `email` varchar(50) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_baca`
--

INSERT INTO `log_baca` (`email`, `id_berita`, `waktu`) VALUES
('normansyarif@programmer.net', 14, '2016-12-06 10:22:04'),
('normansyarif@programmer.net', 18, '2016-12-06 10:32:38'),
('normansyarif@programmer.net', 21, '2016-12-06 10:38:46'),
('normansyarif@programmer.net', 22, '2016-12-06 16:34:21'),
('yulia@oktaviani', 20, '2016-12-06 11:02:26'),
('yulia@oktaviani', 21, '2016-12-06 10:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `waktu_post` datetime NOT NULL,
  `penulis` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `isi` varchar(10000) DEFAULT NULL,
  `dibaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `waktu_post`, `penulis`, `kategori`, `isi`, `dibaca`) VALUES
(14, '4 Alasan Orang Tinggalkan Facebook, Instagram, dan Twitter', '2016-12-06 07:15:08', 'Norman Syarif', 'Teknologi', '<p><strong>KOMPAS.com</strong>&nbsp;-&nbsp;<a href="https://blog.kaspersky.com/social-attachment-survey/13450/" target="_blank">Penelitian</a>&nbsp;yang dilakukan oleh perusahaan keamanan&nbsp;<em>cyber</em>Kaspersky Lab di 12 negara menunjukkan empat alasan mengapa orang meninggalkan jejaring sosial seperti Facebook, Instagram, Twitter, dan sebagainya. Alasan terbesarnya adalah, jejaring sosial dianggap hanya membuang-buang waktu.&nbsp;<br />\r\n<br />\r\nDalam blog resminya, seperti dikutip&nbsp;<em>KompasTekno</em>, Minggu (4/12/2016), Kaspersky Lab melakukan survei online pada 4.831 responden. Pertanyaan diterjemahkan ke dalam sembilan bahasa, yaitu Inggris, Spanyol, Portugis, Perancis, Italia, Jerman, Rusia, Jepang, dan Turki, serta diprogram menggunakan Poll Daddy.<br />\r\n<br />\r\nTautan survei disebarkan menggunakan promosi berbayar di Facebook dan Twitter, dan berikut adalah empat alasan besar mengapa orang ingin meninggalkan jejaring sosial menurut survei tersebut.<br />\r\n<br />\r\n<strong>Pertama</strong>, sebanyak 39 persen responden percaya bahwa mereka membuang-buang waktu di jejaring sosial. Bahkan, hampir 78 persen menyatakan bahwa mereka sudah mempertimbangkan untuk meninggalkan jejaring sosial.&nbsp;<br />\r\n<br />\r\n<strong>Kedua</strong>, 30 persen respondel menyatakan mereka tidak mau aktivitasnya dimonitor oleh raksasa perusahaan teknologi. Seperti diketahui, sebagian data-data penting kita serahkan kepada jejaring sosial, seperti e-mail, nomor telepon, dan sebagainya.<br />\r\n<br />\r\n<strong>Ketiga</strong>, lima persen responden mengatakan ingin meninggalkan jejaring sosial karena akun mereka telah diretas.<br />\r\n<br />\r\n<strong>Keempat&nbsp;</strong>dan yang terakhir, empat persen responden ingin meninggalkan jejaring sosial karena capek dengan &quot;pembenci&quot; atau&nbsp;<em>haters</em>&nbsp;yang selalu merundung (mem-<em>bully</em>)-nya.<br />\r\n<br />\r\nHasil penelitian lebih komplit bisa dilihat di blog resmi Kaspersky di&nbsp;<a href="https://blog.kaspersky.com/social-attachment-survey/13450/" target="_blank">tautan berikut ini</a>.&nbsp;<br />\r\n<br />\r\n<strong>Kecenderungan untuk tinggal</strong><br />\r\n<br />\r\nMeskipun ada kecenderungan untuk meninggalkan jejaring sosial, namun individu merasa ada keterpaksaan untuk tetap tinggal. Seseorang tetap bertahan menggunakan jejaring sosial seperti Facebook dan Instagram dikarenakan rasa takut kehilangan memori digital dan kontak dengan teman-temannya.<br />\r\n<br />\r\n<strong>Baca:&nbsp;</strong><a href="http://tekno.kompas.com/read/2016/04/19/18244007/Indonesia.Jadi.Sasaran.Empuk.Penipuan.di.Media.Sosial" target="_blank">Indonesia Jadi Sasaran Empuk Penipuan di Media Sosial</a>&nbsp;<br />\r\n<br />\r\nSebagian besar (62 persen) percaya bahwa mereka akan kehilangan kontak dengan teman-temannya jika meninggalkan jejaring sosial. Sebanyak 21 persen responden tidak merasa khawatir dengan teman-teman mereka, tetapi takut tidak dapat mengembalikan kenangan digital seperti foto dan video yang telah diunggah di jejaring sosial jika meninggalkannya.<br />\r\n<br />\r\nUntuk itu, Kaspersky Lab membuat aplikasi yang disebut FFForget yang bisa digunakan untuk mem-<em>backup</em>&nbsp;semua kenangan foto atau video dari jejaring sosial.&nbsp;<br />\r\n<br />\r\nAplikasi akan menjaganya dalam wadah yang aman serta sudah dienkripsi dan diharapkan dapat memberikan kebebasan bagi seseorang untuk meninggalkan jejaring sosial kapan pun mereka inginkan, tanpa merasa kehilangan.<br />\r\n<br />\r\n&quot;Dengan FFForget, kami berusaha menciptakan solusi sehingga individu tidak perlu takut kehilangan memori karena akun yang diretas,&quot; tutur Evgeny Chereshnev, Head of Social Media Kaspersky Lab..<br />\r\n<br />\r\nFFForget rencananya akan diluncurkan pada tahun 2017. Pengguna yang berminat dapat mendaftar di&nbsp;<a href="http://ffforget.kaspersky.com/" target="_blank">ffforget.kaspersky.com</a>.<br />\r\n&nbsp;</p>\r\n', 8),
(15, 'Surati Pemerintah, Apple Serius Bikin Pesaing Mobil Pintar Google?', '2016-12-06 08:05:36', 'Norman Syarif', 'Teknologi', '<p><strong>KOMPAS.com -</strong>&nbsp;Beberapa saat lalu,&nbsp;<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;dikabarkan mengurungkan niat membuat mobil tanpa awak alias&nbsp;<em>self-driving car</em>. Sebagai gantinya,&nbsp;<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>katanya akan mengembangkan&nbsp;<em>software</em>-nya saja.<br />\r\n<br />\r\nKini, tiba-tiba&nbsp;<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;malah menyurat ke lembaga Adminsitrasi Keselamatan Lalu Lintas Jalan Raya Nasional (NHTSA) Amerika Serikat. Surat itu menunjukkan keseriusan&nbsp;<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;untuk kembali menggarap&nbsp;<em>self-driving car</em>.&nbsp;<br />\r\n<br />\r\nBeberapa poin dalam surat tersebut menyangkut keamanan, privasi, dan manfaat saling berbagi data antar-perusahaan yang berniat membuat&nbsp;<em>self-driving car</em>, sebagaimana dilaporkan&nbsp;<em>AndroidAuthority</em>&nbsp;dan dihimpun&nbsp;<em>KompasTekno</em>, Senin (5/12/2016).&nbsp;<br />\r\n<br />\r\n<strong>Baca:</strong>&nbsp;<a href="http://tekno.kompas.com/read/2016/06/10/11200067/Pendiri.Google.Diam-diam.Bikin.Mobil.Terbang" target="_blank">Pendiri Google Diam-diam Bikin Mobil Terbang</a>&nbsp;<br />\r\n<br />\r\n&quot;Apple menggunakan&nbsp;<em>machine learning</em>&nbsp;untuk membuat produk dan layanan semakin pintar, lebih intuitif, dan lebih personal,&quot; kata Director of Product Integrity Apple, Steve Kenner.<br />\r\n<br />\r\n&quot;Kami telah berinvestasi dan belajar banyak tentang otomatisasi. Maka kami semangat untuk menyelidiki potensinya di berbagai area, termasuk transportasi,&quot; ia menambahkan.<br />\r\n<br />\r\n<strong>Siap bersaing dengan Google</strong><br />\r\n<br />\r\nAgaknya sang pabrikan Cupertino kembali membara untuk bersaing dengan Google di industri yang baru akan berkembang tersebut. Pasalnya, Google sangat gencar memperkenalkan perangkat&nbsp;<em>self-driving car</em>&nbsp;yang sudah beberapa kali lalu-lalang di area California, AS.&nbsp;<br />\r\n<br />\r\nSalah satu poin penting yang ditonjolkan dalam surat Apple terkait manfaat pembagian data antar-perusahaan. Jika berbicara soal data, Google bisa dibilang punya arsip paling lengkap.&nbsp;<br />\r\n<br />\r\nData terkait lokasi suatu tempat, jarak tempuh, estimasi waktu, jalanan rusak, hingga penyebab kecelakaan lalu lintas dan segala fasilitas di masing-masing wilayah bisa ditemukan di mesin pencari Google.<br />\r\n<br />\r\n<strong>Baca:</strong>&nbsp;<a href="http://tekno.kompas.com/read/2016/05/20/09162797/tanpa.sopir.mobil.uber.mondar-mandir.di.jalanan" target="_blank">Tanpa Sopir, Mobil Uber Mondar-mandir di Jalanan</a></p>\r\n\r\n<p>Jika&nbsp;<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;bisa mengakses data itu untuk dimanfaatkan pada&nbsp;<em>self-driving</em>&nbsp;car miliknya, tentu akan mempercerdas dan meningkatkan fungsi mobilnya. Yang terpenting, sistem keamanan masing-masing&nbsp;<em>self-driving car</em>&nbsp;buatan tiap perusahaan bisa diperkuat. Ekosistem&nbsp;<em>self-driving</em>&nbsp;<em>car</em>&nbsp;pun akan bertumbuh subur.</p>\r\n\r\n<p>Namun, terlepas dari semua itu,&nbsp;<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;ingin pemerintah juga membuat regulasi khusus agar pertukaran data antar-perusahaan berjalan selaras dengan nilai-nilai privasi yang dijunjung tinggi.&nbsp;<br />\r\n<br />\r\n<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;dan Google punya sejarah panjang dalam berkompetisi di ranah teknologi. Keduanya merupakan perusahaan besar dengan inovasi-inovasi yang mampu menciptakan tren dan budaya pop baru.&nbsp;<br />\r\n<br />\r\nDua-duanya sama-sama bersaing di sektor&nbsp;<em>smartphone,</em>&nbsp;tablet,&nbsp;<em>wearable,</em>laptop, sistem operasi, hingga&nbsp;<em>machine learning</em>.<br />\r\n<br />\r\n<strong>Beri jalan bagi perusahaan baru</strong><br />\r\n<br />\r\nDi samping tentang regulasi&nbsp;<em>self-driving car</em>&nbsp;secara umum,&nbsp;<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;juga meminta pemerintah memberikan kesempatan yang sama antara perusahaan teknologi mapan dengan para pemula. Lagi-lagi ini demi menyuburkan dan memelihara ekosistem mobil tanpa awak.&nbsp;<br />\r\n<br />\r\nDiketahui, selama ini Google atau perusahaan kawakan lainnya bisa dengan mudah mendapat izin pengujian&nbsp;<em>self-driving car</em>&nbsp;di jalan raya karena telah dipercaya.<br />\r\n<br />\r\nSementara itu,&nbsp;<em>startup</em>&nbsp;yang hendak mengembangkan&nbsp;<em>self-driving car</em>&nbsp;dan belum punya nama besar acap kali kesulitan mendapat izin birokrasi.&nbsp;<br />\r\n<br />\r\n<strong>Baca:</strong>&nbsp;<a href="http://tekno.kompas.com/read/2016/03/17/09230037/Harga.Mobil.Listrik.Apple.Hampir.Rp.1.Miliar." target="_blank">Harga Mobil Listrik Apple Hampir Rp 1 Miliar?</a>&nbsp;<br />\r\n<br />\r\nJika ingin membaca surat dari Apple ke pemerintah (NHTSA) secara lengkap, bisa buka tautan&nbsp;<a href="https://t.co/Lum2vy4u1e">ini</a>. Sekali lagi, surat itu cuma berisi harapan&nbsp;<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;kepada pemerintah atas regulasi&nbsp;<em>self-driving car</em>.&nbsp;<br />\r\n<br />\r\n<a href="http://tekno.kompas.com/tag/Apple" target="_blank">Apple</a>&nbsp;belum mengiyakan ataupun membantah bahwa pihaknya bakal meneruskan rencana memproduksi&nbsp;<em>self-driving car</em>.</p>\r\n', 0),
(16, 'Benarkah Alam Semesta Mengembang Semakin Cepat? Jangan-jangan Kita Salah...', '2016-12-06 09:04:51', 'Norman Syarif', 'Sains', '<p><strong>KOMPAS.com</strong>&nbsp;- Tahun 2011, tiga astronom menerima Nobel Fisika karena menemukan bukti alam semesta mengembang dengan kecepatan yang terus bertambah. Temuan itu memicu konsensus bahwa alam semesta dipengaruhi oleh energi misterius yang disebut energi gelap.<br />\r\n<br />\r\nNamun kini, Subir Sarkar dari University of Oxford menyatakan, temuan para pemenang nobel itu salah. Dalam penelitiannya yang dipublikasikan di&nbsp;<em>Scientific Report</em>&nbsp;pada Jumat (21/10/2016), ia mengatakan, betul bahwa alam semesta mengembang, tetapi dengan kecepatan konstan.<br />\r\n<br />\r\nStudi Sarkar kontroversial. Bila studi dilakukan dengan cara yang tepat dan kesimpulannya terbukti benar, akan ada perubahan besar dalam cara manusia melihat alam semesta. Energi gelap tak dibutuhkan dan bisa jadi dianggap tak ada.&nbsp;<br />\r\n<br />\r\nJelasnya begini. Tahun 1990-an, Saul Perlmutter dari University of California Berkeley, Adam Riess dari Johns Hopkins University dan Brian Schmidt dari Australian National University meneliti supernova tipe 1A, supernova paling terang dengan kecerlangan 5 miliar kali lebih besar dari matahari, hasil ledakan bintang katai putih.<br />\r\n<br />\r\nDengan bantuan teleskop antariksa Hubble dan sejumlah teleskop mumpuni di permukaan bumi, ketiganya mengukur kecerlangan supernova. Karena sangat terang, kecerlangan supernova bisa menjadi indikator jaraknya. Perubahan warnanya bisa menjadi penanda kecepatan geraknya.<br />\r\n<br />\r\nPara peraih Nobel Fisika 2011 tersebut menemukan bahwa supernova 25 persen lebih redup dari yang seharusnya. Dari data itu, ketiga ilmuwan menyimpulkan bahwa alam semesta bergerak dengan kecepatan yang terus bertambah. Itu aneh sebab ada gravitasi yang seharusnya membuat kecepatan melambat.<br />\r\n<br />\r\nUntuk menerangkan pengembangan alam semesta yang terus dipercepat itu, astronom kemudian &quot;melahirkan&quot; energi gelap. Efek energi gelap sangat kecil dan hanya bisa dilihat pada benda langit yang sangat jauh dari bumi, tapi dampak energi gelap lebih besar dari gravitasi.<br />\r\n<br />\r\nSarkar tak mau kalah. Diberitakan Science Alert, Senin (24/10/2016), ia mengatakan bahwa timnya menggunakan data yang lebih besar dari apara pemenang Nobel. Ia juga menyatakan bahwa tingkat kepercayaan hasil risetnya lebih tinggi daripada Schimdt dan rekannya.<br />\r\n<br />\r\n&quot;Kami menganalisis 740 supernova tipe 1A, 10 kali lebih besar daripada sampel penelitian sebelumnya, dan menemukan bahwa bukti pengembangan yang dipercepat, paling bagus adalah 3 sigma. Ini jauh dari standar 5 sigma yang digunakan untuk menyatakan bahwa hasil studi signifikan,&quot; ujar Sarkar.<br />\r\n<br />\r\n&quot;Pandangan yang lebih kaya untuk menyatakan bahwa alam semesta tidak homogen, dan bahwa materinya tidak seperti gas ideal - dua asumsi dalam kosmologi standar - mungkin bisa diterangkan tanpa kehadiran energi gelap,&quot; ungkap sarkar dalam publikasinya.<br />\r\n<br />\r\nSarkar sadar risetnya akan memicu perdebatan di kalangan fisikawan dan astronom. Ia tahu butuh kerja ekstra untuk meyakinkan fisikawan lain bahwa teori tentang alam semesta yang diyakini sekarang sebenarnya sangat bisa diperdebatkan.<br />\r\n<br />\r\n&quot;Saya harap ini bisa memicu analisis data komosologi yang lebih baik dan menginspirasi para pakar fisika teori untuk mengeksplorasi model komologi yang lebih kaya,&quot; ungkapnya.</p>\r\n', 0),
(17, 'Bersiaplah, Supermoon Teristimewa sejak Indonesia Merdeka Akan Menyapa', '2016-12-06 09:06:46', 'Norman Syarif', 'Sains', '<p><strong>KOMPAS.com</strong>&nbsp;- Bersiaplah. Supermoon paling istimewa sejak kemerdekaan Indonesia akan terjadi Senin (14/11/2016) malam.&nbsp;<br />\r\n<br />\r\nBulan akan tampak 14 persen lebih besar daripada saat berada pada titik terjauh dari bumi. Beberapa dari Anda, karena faktor usia, mungkin takkan menyaksikan supermoon sebesar besok.&nbsp;<br />\r\n<br />\r\nSupermoon - atau dalam astronomi dikenal dengan bulan perigee - terjadi kala bulan berada pada jarak terdekat dengan bumi. Jarak rata-rata bumi dan bulan sendiri sekitar 384.400 kilometer.<br />\r\n<br />\r\nOrbit bulan mengelilingi bumi berbentuk elips sehingga jarak bumi dan bulan bervariasi. Kadang, bulan berada pada titik terjauh (apogee) dan kadang berada pada titik terdekat (perigee).<br />\r\n<br />\r\nRatusan supermoon telah terjadi sejak kemerdekaan Indonesia. Namun supermoon yang akan terjadi besok termasuk paling istimewa karena merupakan salah satu yang terbesar.<br />\r\n<br />\r\n&quot;Supermoon besok terbesar kedua sejak Indonesia merdeka,&quot; kata Kepala Lembaga Penerbangan dan Antariksa, Thomas Djamaluddin.<br />\r\n<br />\r\nThomas menguraikan, sejak Indonesia merdeka hingga saat ini, ada dua supermoon yang istimewa dilihat dari sisi ukurannya.<br />\r\n<br />\r\nSupermoon tahun 1948 merupakan yang paling istimewa karena merupakan yang terbesar hingga saat ini. Saat itu, jarak bumi dan bulan mencapai 356.461 kilometer.&nbsp;<br />\r\n<br />\r\nSementara besok, jarak bumi dan bulan adalah 356.500 kilometer. Perbedaan ukuran antara supermoon besok dengan tahun 1948 sangat sedikit mengingat jarak bulan pada kedua waktu itu hanya selisih 39 kilometer.<br />\r\n<br />\r\nAstronom komunikator dari Langitselatan, Avivah Yamani, mengungkapkan, supermoon pada tahun 1948 dan besok hanya akan kalah dengan supermoon tahun 2034.<br />\r\n<br />\r\nDihubungi&nbsp;<em>Kompas.com</em>, Minggu (13/11/2016), Avivah mengatakan bahwa pada tahun 2034, jarak bumi dan bulan akan mencapai 356.448 kilometer.<br />\r\n<br />\r\nJarak bulan dan bumi pada tahun 2034 akan menjadi yang terdekat dalam abad 21. Jadi, supermoon saat itu akan menjadi yang terbesar sepanjang abad 21.<br />\r\n<br />\r\nMeskipun demikian, Avivah mengatakan bahwa perbedaan ukuran supermoon tahun 2034 dan 2016 juga sangat sedikit. &quot;Cuma 0,2 persen lebih besar,&quot; katanya.<br />\r\n<br />\r\nSupermoon besok bisa dilihat dari manapun di penjuru Indonesia. Tak perlu alat bantu untuk mengamatinya. Syarat keteramatannya hanya cuaca yang cerah.&nbsp;<br />\r\n<br />\r\nSiapa pun yang ingin menyaksikannya bisa langsung menengadahkan kepala setelah senja tiba. Teropong bisa dipakai bila ingin mengamati permukaan bulan lebih detail.<br />\r\n<br />\r\nBerulang kali supermoon dikaitkan dengan kejadian bencana. Jadi, bila besok beredar berita yang mengaitkan supermoon dengan bencana, jangan mudah percaya.<br />\r\n<br />\r\nSupermoon memang bisa memicu pasang lebih tinggi dan memengaruhi aktivitas geologi seperti purnama biasa. Namun, bukan berarti supermoon sama dengan bencana.<br />\r\n<br />\r\nBila berkesempatan mengamatinya besok, coba bedakan ukuran supermoon dengan bulan biasa. Avivah mengatakan, perbedaan itu dulit disadari. Apakah Anda bisa?</p>\r\n', 0),
(18, 'Kamera "Selfie" Galaxy S8 Dibekali Kemampuan "Autofocus"?', '2016-12-06 10:32:29', 'Norman Syarif', 'Gadget', '<p><strong>KOMPAS.com -&nbsp;</strong><em>Smartphone</em>&nbsp;premium buatan&nbsp;<a href="http://tekno.kompas.com/tag/Samsung" target="_blank">Samsung</a>&nbsp;selalu membawa fitur dan spesifikasi andal pada kamera utamanya. Berbagai teknologi canggih disematkan untuk menghasilkan foto yang mumpuni.<br />\r\n<br />\r\nNamun, untuk kamera&nbsp;<em>selfie</em>,&nbsp;<a href="http://tekno.kompas.com/tag/Samsung" target="_blank">Samsung</a>&nbsp;sudah lama berkutat pada sensor berkualitas 5 megapiksel. Padahal, vendor-vendor lain sudah berani mengeluarkan ponsel berkamera depan 16 megapiksel, bahkan 20 megapiksel.&nbsp;<br />\r\n<br />\r\n<a href="http://tekno.kompas.com/tag/Samsung" target="_blank">Samsung</a>&nbsp;agaknya akan mulai berlari untuk mengejar ketinggalan di ranah kamera&nbsp;<em>selfie,&nbsp;</em>setidaknya dengan penambahan kemampuan. Kabarnya, pabrikan Korea Selatan itu akan membenamkan fungsi&nbsp;<em>autofocus</em>&nbsp;pada kamera&nbsp;<em>selfie</em>&nbsp;Galaxy S8, sebagaimana dilaporkan&nbsp;<em>Sammobile</em>&nbsp;dan dihimpun&nbsp;<em>KompasTekno</em>, Rabu (30/11/2016).&nbsp;<br />\r\n<br />\r\nBaca:&nbsp;<a href="http://tekno.kompas.com/read/2016/11/29/14520067/samsung.sulap.galaxy.note.5.jadi.galaxy.note.7" target="_blank">Samsung Sulap Galaxy Note 5 Jadi Galaxy Note 7</a>&nbsp;<br />\r\n<br />\r\nKemampuan&nbsp;<em>autofocus</em>&nbsp;sejatinya mempermudah pengguna untuk membidik foto dengan fokus yang tajam pada objek utamanya. Selama ini,&nbsp;<em>autofocus</em>sering ditemukan di kamera belakang.&nbsp;<br />\r\n<br />\r\nKamera&nbsp;<em>selfie</em>&nbsp;sendiri acap kali dibekali kemampuan pencarian fokus dengan menekan layar alias&nbsp;<em>tap-to-focus</em>. Mekanisme itu sebenarnya sudah cukup mudah. Barangkali itu yang menjadi alasan vendor lain tak membenamkan&nbsp;<em>autofocus</em>&nbsp;pada kamera&nbsp;<em>selfie</em>.&nbsp;<br />\r\n<br />\r\nSelain kabar soal&nbsp;<em>autofocus selfie</em>, bocoran spesifikasi lain terkait kamera depan Galaxy S8 adalah sensor berkualitas 8 megapiksel dengan lensa<em>&nbsp;wide-angle</em>. Artinya, sensornya juga mengalami peningkatan.&nbsp;<br />\r\n<br />\r\nUntuk kamera belakang sendiri, Galaxy S8 digadang-gadang menyematkan kamera 16 megapiksel dengan perekaman 4k dan dual LED Flash. Spesifikasi hardware lainnya yang digosipkan meliputi baterai 3.000 mAh, memori 32/64/128 GB dengan slot microSD, dan RAM 6 GB.&nbsp;<br />\r\n<br />\r\nBerbagai bocoran itu tentu belum bisa dipercaya 100 persen. Kepastiannya baru bisa didapatkan pada acara peluncuran yang dijadwalkan pada Maret mendatang.<br />\r\n&nbsp;</p>\r\n', 2),
(19, 'Stephen Hawking: Manusia Tinggal Punya Waktu 1.000 Tahun di Bumi', '2016-12-06 10:34:58', 'Norman Syarif', 'Sains', '<p><strong>KOMPAS.com</strong>&nbsp;- Fisikawan Stephen Hawking memberikan sebuah pernyataan yang cukup mengejutkan belum lama ini. Menurut dia, manusia hanya memiliki sisa waktu sekitar 1.000 tahun saja untuk tinggal di Bumi.</p>\r\n\r\n<p>Hawking mengatakan, risiko bencana di Bumi akan makin meningkat sehingga ia tak yakin kehidupan manusia bertahan hingga 1.000 tahun ke depan di muka Bumi.</p>\r\n\r\n<p>Satu-satunya cara yang menyelamatkan umat manusia dari kepunahan adalah menyiapkan koloni lain di tata surya.</p>\r\n\r\n<p>Pernyataan ini disampaikan oleh Hawking dalam forum yang digelar Oxford Union di Inggris pada 14 November 2016 lalu.</p>\r\n\r\n<p>&quot;Kita harus pergi ke luar angkasa untuk masa depan manusia,&quot; kata Hawking seperti dikutip&nbsp;<em>Science Alert</em>.</p>\r\n\r\n<p>Hawking mengatakan, manusia menghadapi risiko bencana yang makin meningkat seperti kemungkinan akan adanya perang nuklir, percobaan virus rekayasa genetika, atau bahkan ancaman dari peningkatan kecerdasaan buatan.</p>\r\n\r\n<p>Dampak perubahan iklim juga semakin jelas terlihat meskipun beberapa usaha dilakukan untuk mencegahnya.</p>\r\n\r\n<p>Contohnya, semakin hari lahan untuk bercocok berkurang, begitu juga sumber makanan di laut yang merosot jumlahnya karena naiknya suhu laut.</p>\r\n\r\n<p>Jelas jika Hawking berpendapat manusia perlu rencana cadangan.</p>\r\n\r\n<p>&quot;Kita tidak akan bertahan hidup lebih dari 1.000 tahun lagi tanpa keluar dari planet kita yang rapuh,&quot; tambah Hawking.</p>\r\n\r\n<p>Ia pun mendorong publik untuk mulai memikirkan mengenai pergi ke luar angkasa.</p>\r\n\r\n<p>&quot;Saya ingin mendorong publik agar tertarik melakukan perjalanan ke luar angkasa,&quot; katanya.</p>\r\n\r\n<p>Itu semua memang terdengar cukup mengerikan, namun Hawking mengatakan kita masih punya banyak waktu untuk merasa optimistis, menghargai kehidupan, dan melakukan penelitian lebih lanjut.</p>\r\n\r\n<p>Sebelumnya Hawking pernah menjelaskan pandangannya terhadap perjalanan luar angkasa di dalam buku berjudul &#39;How to Make a Spaceship&#39;.</p>\r\n\r\n<p>Hawking menulis, jika ia percaya risiko kehidupan di Bumi terus meningkat dan akan menghapus kehidupan di Bumi.</p>\r\n', 0),
(20, 'Jokowi Pamer Sandal Biru di Twitter dan Facebook', '2016-12-06 10:36:40', 'Norman Syarif', 'Teknologi', '<p><strong>JAKARTA, KOMPAS.com</strong>&nbsp;&mdash; Presiden Joko Widodo (Jokowi) memamerkan sepasang sandal berwarna biru di akun Twitter dan&nbsp;<a href="http://tekno.kompas.com/tag/Facebook" target="_blank">Facebook</a>&nbsp;resminya. Sandal tersebut diketahui baru dibeli oleh Jokowi saat&nbsp;<em>blusukan&nbsp;</em>di E-Walk Balikpapan Superblock pada Minggu (4/12/2016) malam.<br />\r\n<br />\r\nDari foto di Twitter dan&nbsp;<a href="http://tekno.kompas.com/tag/Facebook" target="_blank">Facebook</a>, diketahui bahwa sandal biru itu bermerek Fladeo, produsen sandal dan sepatu asli dari Indonesia.&nbsp;&nbsp;<br />\r\n<br />\r\nMenurut Jokowi, harga sandal biru yang dibelinya terbilang murah, apalagi ia masih mendapatkan sejumlah diskon.&nbsp;&nbsp;<br />\r\n<br />\r\n&ldquo;Mampir ke Balikpapan Superblock beli sandal. Lumayan dapat diskon 50 persen dan tambahan diskon 20 persen. Harga asal Rp 299.000, setelah diskon jadi Rp 119.000. Produk Indonesia bagus kualitasnya,&rdquo; tulis orang nomor satu di Republik Indonesia itu di akun&nbsp;<a href="http://tekno.kompas.com/tag/Facebook" target="_blank">Facebook</a>&nbsp;resminya.<br />\r\n<br />\r\n<strong>Baca:&nbsp;<a href="http://tekno.kompas.com/read/2016/08/26/19040047/pelajaran.dari.kasus.olok-olok.baju.batak.jokowi" target="_blank">Pelajaran dari Kasus Olok-olok Baju Batak Jokowi</a></strong></p>\r\n\r\n<p><em>Posting</em>&nbsp;Jokowi yang memamerkan sandal biru itu pun disambut hangat oleh para&nbsp;<em>netizen.</em>&nbsp;Setidaknya di&nbsp;<a href="http://tekno.kompas.com/tag/Facebook" target="_blank">Facebook</a>, berdasarkan pantauan&nbsp;<em>KompasTekno</em>, Senin (5/12/2016), foto sandal Presiden disambut lebih dari 23.000 reaksi&nbsp;<em>netizen</em>&nbsp;dan dibagikan lebih dari 2.300 kali.</p>\r\n\r\n<p><br />\r\nSedangkan di Twitter, kicauan berisi foto sandal Jokowi mendapat respons<em>&nbsp;like</em>oleh lebih dari 2.300 orang dan di-<em>retweet</em>&nbsp;lebih dari 1.400 kali.<br />\r\n<br />\r\nMelihat foto sandal biru itu,&nbsp;<em>netizen</em>&nbsp;pun berkomentar macam-macam, di antaranya, memprediksi bahwa sandal ini akan menjadi tren baru, sebagaimana jaket&nbsp;<em>bomber</em>&nbsp;dan payung biru yang dipakai Jokowi beberapa waktu lalu.<br />\r\n&nbsp;</p>\r\n\r\n<p><br />\r\nSalah satu agenda utama Jokowi di Balikpapan adalah untuk menyosialisasikan program pengampunan pajak atau&nbsp;<em>tax amnesty</em>. Presiden merasa perlu melanjutkan sosialisasi karena capaian&nbsp;<em>tax amnesty</em>&nbsp;masih tergolong rendah, termasuk di Kalimantan Timur.<br />\r\n<br />\r\nSelain sosialisasi&nbsp;<em>tax amnesty,</em>&nbsp;Presiden bersama Ibu Iriana akan meninjau proyek dana desa di Kabupaten Kutai Kartanegara.<br />\r\n<br />\r\nBukan hanya itu, Presiden dan Ibu Iriana juga menghadiri penyerahan Sertifikat Tanah Program Strategis Tahun 2016.<br />\r\n<br />\r\nPresiden juga direncanakan akan meninjau Program Pemberian Makanan Tambahan (PMT) yang akan dilaksanakan di Lapangan Sepak Bola Bima Sakti Pangkalan TNI AU Balikpapan.<br />\r\n<br />\r\nJokowi dijadwalkan mengunjungi Balikpapan dari Minggu (4/12/2016) hingga Senin (5/12/2016).</p>\r\n', 3),
(21, 'Resmi, Ponsel Nokia "Comeback" Awal 2017 dengan Android', '2016-12-06 10:38:40', 'Norman Syarif', 'Gadget', '<p><strong>KOMPAS.com&nbsp;&mdash;</strong>&nbsp;Kabar yang menyebut Nokia bakal &quot;<em>comeback</em>&quot; pada awal 2017 akhirnya terkonfirmasi. HMD yang tak lain adalah pemegang lisensi kekayaan intelektual beserta merek &quot;Nokia&quot; telah mengiyakannya lewat keterangan pers.&nbsp;<br />\r\n<br />\r\n&quot;HMD akan membawa&nbsp;<em>smartphone</em>&nbsp;Nokia generasi terbaru. Produk pertama akan diluncurkan pada semester pertama 2017,&quot; begitu yang tertera pada keterangan pers, sebagaimana dihimpun&nbsp;<em>KompasTekno</em>, Jumat (2/12/2016) dari&nbsp;<em>PRNewsWire</em>.<br />\r\n<br />\r\nMerek Nokia akan kembali ke pasar ponsel dunia dengan&nbsp;<em>smartphone-smartphone</em>&nbsp;<a href="http://tekno.kompas.com/tag/Android" target="_blank">Android</a>&nbsp;yang dirancang dan diproduksi oleh HMD.&nbsp;<br />\r\n<br />\r\nMeski demikian, belum tertera tanggal pasti peluncuran ponsel&nbsp;<a href="http://tekno.kompas.com/tag/Android" target="_blank">Android</a>&nbsp;Nokia pertama ini. Disinyalir, ajang Mobile World Congress (MWC) yang digelar pada Februari mendatang di Barcelona akan dijadikan momentum yang pas.<br />\r\n<br />\r\nSebab, Nokia dan HMD sama-sama telah menyewa area pada ajang MWC. Nokia bakal berada di&nbsp;<em>main hall</em>, sementara HMD memilih area&nbsp;<em>convention center</em>.<br />\r\n<br />\r\nHal ini belum dikonfirmasi oleh HMD ataupun Nokia. Pada&nbsp;<a href="http://www.nokia.com/en_int/phones/all-phones" target="_blank">situs resminya</a>, Nokia hanya menyebut bahwa pihaknya sedang sibuk mempersiapkan lini&nbsp;<em>smartphone</em>&nbsp;bersistem operasi Android. Tak ada tanggal yang diungkap.<br />\r\n<br />\r\n<strong>Baca:&nbsp;</strong><a href="http://tekno.kompas.com/read/2016/10/18/17180027/microsoft.pastikan.kehadiran.2.ponsel.android.nokia" target="_blank">Microsoft Pastikan Kehadiran 2 Ponsel Android Nokia</a>&nbsp;<br />\r\n<br />\r\nDiketahui, pada Mei lalu, unit bisnis ponsel Nokia dialihkan ke FIH Mobile dari Microsoft. FIH tak lain adalah anak usaha raksasa perakit&nbsp;<em>smartphone</em>, Foxconn. Dalam waktu berdekatan, Nokia juga mengumumkan telah melisensikan properti intelektual mereka berikut merek &quot;Nokia&quot; ke perusahaan baru, HMD Global.&nbsp;<br />\r\n<br />\r\nHMD Global dan FIH Mobile sudah bersinergi dan membagi peran masing-masing. HMD merancang&nbsp;<em>mobile gadget</em>&nbsp;di bawah bendera Nokia, sementara produksinya diserahkan ke FIH. Nah, FIH dan HMD-lah yang memikul beban untuk mengembalikan kejayaan Nokia di industri ponsel.<br />\r\n<br />\r\nAda tiga&nbsp;<em>smartphone</em>&nbsp;Nokia yang digadang-gadang bakal meluncur pada 2017 mendatang. Dua di antaranya disebut premium, sementara satunya diproyeksikan untuk kelas menengah ke bawah. Dua nama yang bocorannya ramai beredar adalah Nokia D1C dan P1. Kita tunggu saja.</p>\r\n', 10),
(22, 'ini judul', '2016-12-06 11:04:02', 'Norman Syarif', 'Sains', '<p>isi berita</p>\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita_pilihan`
--

CREATE TABLE `tb_berita_pilihan` (
  `id` int(11) NOT NULL,
  `id_berita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita_pilihan`
--

INSERT INTO `tb_berita_pilihan` (`id`, `id_berita`) VALUES
(1, 14),
(2, 15),
(3, 16),
(4, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tb_komen`
--

CREATE TABLE `tb_komen` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `isi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_komen`
--

INSERT INTO `tb_komen` (`id`, `email`, `id_berita`, `waktu`, `isi`) VALUES
(1, 'normansyarif@programmer.net', 14, '2016-12-06 07:29:18', 'tes komentar'),
(2, 'normansyarif@programmer.net', 14, '2016-12-06 07:30:11', 'Bagus bang :)'),
(3, 'normansyarif@programmer.net', 14, '2016-12-06 07:38:41', 'sekali lagi'),
(4, 'normansyarif@programmer.net', 21, '2016-12-06 10:39:02', 'Yuuhuuuu!!!'),
(5, 'yulia@oktaviani', 20, '2016-12-06 11:02:40', 'hfjdfhsdf\r\n\r\n'),
(6, 'yulia@oktaviani', 21, '2016-12-06 11:09:20', 'contoh komen');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`email`, `nama`, `password`, `status`) VALUES
('normansyarif@programmer.net', 'Norman Syarif', 'passbaru', 'editor'),
('yulia@oktaviani', 'Yulia Oktaviani', 'yulia', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_baca`
--
ALTER TABLE `log_baca`
  ADD PRIMARY KEY (`email`,`id_berita`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_berita_pilihan`
--
ALTER TABLE `tb_berita_pilihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_komen`
--
ALTER TABLE `tb_komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tb_komen`
--
ALTER TABLE `tb_komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
