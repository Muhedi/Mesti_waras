-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2021 pada 11.44
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mestiwaras`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `id_detailpembelian` int(11) NOT NULL,
  `id_pembelian` varchar(20) NOT NULL,
  `kd_obat` varchar(15) NOT NULL,
  `exp_obatbeli` date NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `jml_beli` int(11) NOT NULL,
  `sat_beli` varchar(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`id_detailpembelian`, `id_pembelian`, `kd_obat`, `exp_obatbeli`, `hrg_beli`, `jml_beli`, `sat_beli`, `subtotal`) VALUES
(23, '20210403/1', 'LG2287JMD', '2025-03-06', 11200, 100, 'TABLET', 1120000),
(24, '20210304/001', '19071988', '2025-07-16', 12800, 100, 'BOTOL', 1280000),
(25, '20210304/002', '130110', '2025-07-17', 10000, 100, 'BOTOL', 1000000),
(26, '20210304/004', '130110', '2025-07-17', 10000, 100, 'BOTOL', 1000000),
(27, '20210403/202', '1909-03-184', '2025-07-17', 4000, 122, 'BOTOL', 488000),
(28, '20200304/222', '1811008', '2021-06-10', 960, 122, 'TABLET', 117120),
(29, 'tes123', '19071988', '2021-11-26', 12800, 1, 'BOTOL', 12800),
(30, 'coba', '1811008', '2022-02-25', 960, 100, 'TABLET', 96000),
(31, 'cobalagii', '1811008', '2022-05-27', 960, 100, 'TABLET', 96000),
(32, '111111', '130110', '2022-06-24', 10000, 100, 'BOTOL', 1000000),
(33, '22222222', '1807040', '2022-04-22', 360, 1000, 'TABLET', 360000),
(34, '2131314325', '35553', '2022-03-18', 280, 100, 'TABLET', 28000),
(35, 'aku123444', '1811008', '2022-11-19', 960, 1000, 'TABLET', 960000),
(36, '123456', '15330211', '2021-12-04', 39000, 1, 'BOTOL', 39000),
(37, 'faktur123', '130110', '2022-06-03', 10000, 1000, 'BOTOL', 10000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detailpenjualan` int(11) NOT NULL,
  `id_penjualan` varchar(16) NOT NULL,
  `kd_obat` varchar(15) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `jml_jual` int(11) NOT NULL,
  `sat_jual` varchar(11) DEFAULT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detailpenjualan`, `id_penjualan`, `kd_obat`, `hrg_jual`, `jml_jual`, `sat_jual`, `subtotal`) VALUES
(1, 'PJL/20210430/01', '19071988', 15360, 1, '15360', 15360),
(341, 'PJL/20210430/05', '1811008', 1152, 1, 'TABLET', 1152),
(342, 'PJL/20210430/06', 'LG2287JMD', 13440, 1, 'TABLET', 13440),
(343, 'PJL/20210430/07', 'G40F250', 5760, 1, 'BOTOL', 5760),
(344, 'PJL/20210430/08', '130110', 12000, 50, 'BOTOL', 600000),
(345, 'PJL/20210430/09', 'CPDAMER11', 90000, 1, 'BOTOL', 90000),
(346, 'PJL/20210503/01', 'CPDAMER11', 90000, 1, 'BOTOL', 90000),
(347, 'PJL/20210503/02', '1909-03-184', 4800, 2, 'BOTOL', 9600),
(348, 'PJL/20210518/01', '1811008', 1152, 1, 'TABLET', 1152),
(349, 'PJL/20210518/02', '1811008', 1152, 1, 'TABLET', 1152),
(350, 'PJL/20211028/01', 'wx1919', 12000, 3, 'SACHET', 36000),
(351, 'PJL/20211028/01', '15330211', 46800, 1, 'BOTOL', 46800),
(352, 'PJL/20211104/01', '19071988', 15360, 1, 'BOTOL', 15360),
(353, 'PJL/20211111/01', '1811008', 1152, 1, 'TABLET', 1152),
(354, 'PJL/20211125/01', '15330211', 46800, 1, 'BOTOL', 46800),
(355, 'PJL/20211125/02', '1811008', 1152, 1, 'TABLET', 1152),
(356, 'PJL/20211129/01', '110001', 120000, 12, 'PCS', 1440000),
(357, 'PJL/20211129/02', '15330211', 46800, 1, 'BOTOL', 46800),
(358, 'PJL/20211130/01', '15330211', 46800, 1, 'BOTOL', 46800);

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `kd_obat` varchar(18) NOT NULL,
  `nm_obat` varchar(80) NOT NULL,
  `exp_obat` date NOT NULL,
  `ktg_obat` varchar(15) NOT NULL,
  `bnt_obat` varchar(20) NOT NULL,
  `sat_obat` varchar(11) NOT NULL,
  `hrg_obat` int(11) NOT NULL,
  `hrgbeli_obat` int(11) NOT NULL,
  `stk_obat` int(11) NOT NULL,
  `minstk_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`kd_obat`, `nm_obat`, `exp_obat`, `ktg_obat`, `bnt_obat`, `sat_obat`, `hrg_obat`, `hrgbeli_obat`, `stk_obat`, `minstk_obat`) VALUES
('0693228-0844', 'ASEPSO ORIG', '2022-07-09', 'HV', 'BATANG', 'BATANG', 7000, 5600, 15, 3),
('110001', 'AMER', '0000-00-00', 'GENERIK', 'GEL', 'PCS', 120000, 100000, 88, 100),
('130110', 'ALLERIN', '2021-08-01', 'HV', 'SIRUP', 'BOTOL', 12000, 10000, 1262, 3),
('14124A', 'VIVA TONER ALL VAR', '2022-07-01', 'HV', 'CAIR', 'BOTOL', 5200, 4160, 12, 3),
('150297024', 'ASAM TRANEKSAMAT 500 MG', '2021-04-01', 'GENERIK', 'TABLET', 'TABLET', 1950, 1560, 72, 15),
('15054A', 'VIVA AIR MAWAR', '2022-08-01', 'HV', 'CAIR', 'BOTOL', 5000, 4000, 12, 3),
('15330211', 'ALBOTHYL CONCENT 10ML', '2022-03-01', 'HV', 'CAIR', 'BOTOL', 46800, 39000, 207, 3),
('1711018', 'CLINDAMYCIN 150 MG', '2021-12-01', 'GENERIK', 'TABLET', 'TABLET', 950, 760, 42, 15),
('1806-01-96', 'AMOXICILLIN TRIHYDRATE 125 MG/ 5 ML', '2020-09-01', 'GENERIK', 'SIRUP', 'BOTOL', 6000, 4800, 11, 3),
('1807-29-108', 'CIPROFLOXACIN 500 MG ', '2020-08-01', 'GENERIK', 'TABLET', 'TABLET', 600, 480, 34, 15),
('1807040', 'ALLOPURINOL 100 MG', '2020-09-01', 'GENERIK', 'TABLET', 'TABLET', 432, 360, 1090, 15),
('180N4004', 'ONDANSETRON 8 MG 6', '2020-10-01', 'GENERIK', 'TABLET', 'TABLET', 1950, 1560, 50, 15),
('1811002', 'DOMPERIDONE 10 MG', '2020-12-01', 'GENERIK', 'TABLET', 'TABLET', 550, 440, 36, 15),
('1812151', 'ACYCLOVIR 5%', '2022-12-01', 'GENERIK', 'SALEP', 'TUBE', 5280, 4400, 12, 3),
('1812289', 'GEMFIBROZIL 300 MG', '2021-12-01', 'GENERIK', 'TABLET', 'TABLET', 800, 640, 32, 15),
('18CA1008', 'CAPTOPRIL 12,5 MG', '2021-01-01', 'GENERIK', 'TABLET', 'TABLET', 250, 200, 64, 15),
('18CA3030', 'CAPTOPRIL 50 MG', '2022-01-01', 'GENERIK', 'TABLET', 'TABLET', 400, 320, 46, 15),
('18CU1024', 'CLONIDINE HCL 0,15 MG', '2023-07-01', 'GENERIK', 'TABLET', 'TABLET', 350, 280, 44, 15),
('18LO1001', 'LORATADINE 10 MG', '2023-12-01', 'GENERIK', 'TABLET', 'TABLET', 500, 400, 50, 15),
('18MX1008', 'MELOXICAM 7,5 MG', '2022-11-01', 'GENERIK', 'TABLET', 'TABLET', 950, 760, 42, 15),
('1903098', 'FLUNARIZINE HCL 5 MG', '2021-03-01', 'GENERIK', 'TABLET', 'TABLET', 1750, 1400, 28, 15),
('1904-01-146', 'AMBROXOL TABLET', '2021-04-01', 'GENERIK', 'TABLET', 'TABLET', 350, 280, 38, 15),
('1905-03-129', 'METRONIDAZOLE 500 MG', '2023-05-01', 'GENERIK', 'TABLET', 'TABLET', 350, 280, 48, 15),
('1905040', 'LANSOPRAZOLE 30 MG', '2021-05-01', 'GENERIK', 'TABLET', 'TABLET', 1750, 1400, 50, 15),
('1905097', 'KETOROLAC TROMETAMOL 10 MG', '2021-05-01', 'GENERIK', 'TABLET', 'TABLET', 3450, 2760, 42, 15),
('1907019', 'AMLODIPINE 10 MG', '2021-07-01', 'GENERIK', 'TABLET', 'TABLET', 1000, 800, 40, 15),
('19071988', 'ALKOHOL 70% 300 ML', '2023-06-01', 'HV', 'CAIR', 'BOTOL', 15360, 12800, 113, 3),
('1908-02-144', 'PIROXICAM 20 MG', '2023-08-01', 'GENERIK', 'TABLET', 'TABLET', 250, 200, 46, 15),
('1908-13-115', 'AMOXICILLIN 500 MG', '2021-08-01', 'GENERIK', 'TABLET', 'TABLET', 600, 480, 44, 15),
('1909-03-134', 'IBUPROFEN 400', '2021-09-01', 'GENERIK', 'TABLET', 'TABLET', 400, 320, 40, 15),
('1909-03-184', 'AMBROXOL HCL 15 MG', '2021-09-01', 'GENERIK', 'SIRUP', 'BOTOL', 4800, 4000, 136, 3),
('1909004', 'AMLODIPINE 5 MG', '2021-09-01', 'GENERIK', 'TABLET', 'TABLET', 800, 640, 56, 15),
('1910038', 'SALBUTAMOL SULFATE 2ML/5ML', '2021-10-01', 'GENERIK', 'SIRUP', 'BOTOL', 10000, 8000, 12, 3),
('1936067', 'INSTO TM 7,5', '2023-07-01', 'HV', 'CAIR', 'BOTOL', 13000, 10400, 8, 3),
('1937004', 'INSTO TM 15 ML', '2023-02-01', 'HV', 'CAIR', 'BOTOL', 19700, 15760, 13, 3),
('1980051', 'DETTOL LIQ 45 ML', '2022-02-01', 'HV', 'CAIR', 'BOTOL', 7000, 5600, 15, 3),
('19F0050B', 'IMBOOST FORCE', '2022-07-01', 'HV', 'KAPLET', 'STRIP', 7200, 5760, 39, 5),
('19GD1068', 'GLIBENCLAMIDE 5 MG', '2021-09-01', 'GENERIK', 'TABLET', 'TABLET', 250, 200, 26, 15),
('19IR1009', 'IBESARTAN 150 MG', '2021-08-01', 'GENERIK', 'TABLET', 'TABLET', 2450, 1960, 44, 15),
('203ET4926', 'ETHAMBUTOL TAB 500 MG', '2020-02-15', 'GENERIK', 'TABLET', 'TABLET', 1140, 950, 128, 30),
('24793', 'SALBUTAMOL 2 MG', '2021-06-01', 'GENERIK', 'TABLET', 'TABLET', 200, 160, 44, 15),
('2590643', 'KETOKONAZOLE 200 MG', '2022-04-01', 'GENERIK', 'TABLET', 'TABLET', 700, 560, 56, 15),
('26071986', 'RIVANOL 300 ML', '2022-06-01', 'HV', 'CAIR', 'BOTOL', 7000, 5600, 12, 3),
('26141026', 'ANTIMO CAIR ALL VAR', '2021-04-01', 'HV', 'CAIR', 'SACHET', 1300, 1040, 22, 5),
('270424', 'INFUS D5 (GLUKOSA 5%)', '2020-07-01', 'HV', 'CAIRAN INFUS', 'PCS', 11500, 9200, 9, 3),
('35553', 'CIMETIDINE 200 MG', '2020-10-01', 'GENERIK', 'TABLET', 'TABLET', 336, 280, 140, 15),
('48L0884', 'CEFADROXIL 500 MG', '2021-12-01', 'GENERIK', 'TABLET', 'TABLET', 1000, 800, 40, 15),
('490808', 'INFUS NACL', '2024-07-01', 'HV', 'CAIRAN INFUS', 'PCS', 9500, 7600, 9, 3),
('49H4183', 'NIFEDIPINE 10 MG', '2022-07-01', 'GENERIK', 'TABLET', 'TABLET', 250, 200, 56, 15),
('50759', 'NEO RHEUMACYL NEURO', '2021-05-01', 'HV', 'KAPLET', 'STRIP', 9700, 7760, 24, 5),
('50C0342', 'CAPTOPRIL 25 MG', '2023-02-01', 'GENERIK', 'TABLET', 'TABLET', 350, 280, 52, 15),
('50F0635', 'CEFIXIME 100 MG', '2022-06-01', 'GENERIK', 'TABLET', 'TABLET', 1250, 1000, 40, 15),
('50H4221', 'METHYLPRETNISOLON 4 MG', '2023-07-01', 'GENERIK', 'TABLET', 'TABLET', 650, 520, 36, 15),
('520013421', 'SANMOL 500MG TAB STR 4S', '2022-04-01', 'GENERIK', 'TABLET', 'STRIP', 1560, 1300, 42, 5),
('55MFG130212', 'CUSSONS BABY SOAP  ALL VAR', '2022-02-01', 'HV', 'BATANG', 'BATANG', 3600, 2880, 13, 3),
('612438064', 'WOODS ATT SYR 100ML', '2021-03-01', 'HV', 'SIRUP', 'BOTOL', 32880, 27400, 11, 3),
('623341057', 'VITACIMIN TAB STR 2S', '2021-01-01', 'HV', 'TABLET', 'STRIP', 1368, 1140, 128, 10),
('672438104', 'WOODS EXP SYR 60ML', '2021-03-01', 'HV', 'SIRUP', 'BOTOL', 19440, 16200, 13, 3),
('672438124', 'WOODS EXP SYR 100ML', '2021-03-01', 'HV', 'SIRUP', 'BOTOL', 32400, 27000, 12, 3),
('6843N3047', 'OMEPRAZOLE NOVELL 20MG CAP 30S', '2020-02-03', 'GENERIK', 'TABLET', 'TABLET', 600, 500, 70, 20),
('7H2209F2A', 'OBH IKA GENERIK 100ML', '2020-02-16', 'GENERIK', 'SIRUP', 'BOTOL', 16440, 13700, 11, 3),
('813101', 'GLUCOSAMIN 500 MG', '2023-08-01', 'HV', 'KAPLET', 'STRIP', 20500, 16400, 33, 5),
('8197', 'BETAMETHASON VALERATE 0,1%', '2021-07-01', 'GENERIK', 'SALEP', 'TUBE', 5000, 4000, 10, 3),
('8803', 'LANCAR ASI', '2023-03-01', 'HV', 'KAPLET', 'STRIP', 9600, 7680, 23, 5),
('8VH0918', 'LACTACYD FEMININE HYGIENE', '2020-11-22', 'HV', 'CAIR', 'BOTOL', 27000, 21600, 8, 3),
('92106298U1', 'VICKS INHALER', '2021-01-01', 'HV', 'INHALER', 'TUBE', 15200, 12160, 9, 3),
('9VH0538', 'LACTACYD BABY', '2022-05-23', 'HV', 'CAIR', 'BOTOL', 28200, 22560, 9, 3),
('A 2344 GW', 'ISOSORBIDE DINITRATE 5 MG', '2023-07-01', 'GENERIK', 'TABLET', 'TABLET', 250, 200, 46, 15),
('A190142', 'VISINE TM', '2024-03-01', 'HV', 'CAIR', 'BOTOL', 15200, 12160, 12, 3),
('A2DB', 'KIRANTI ORANGE', '2020-08-24', 'HV', 'CAIR', 'BOTOL', 5760, 4800, 11, 3),
('A7825 LS', 'DIGOXIN 0,25 MG', '2020-11-01', 'GENERIK', 'TABLET', 'TABLET', 300, 240, 60, 15),
('AY9A049', 'GRISEOFULVIN 500 MG', '2024-01-01', 'GENERIK', 'TABLET', 'TABLET', 2350, 1880, 30, 15),
('B19ED122MFG', 'DETTOL SOAP ALL VAR', '2021-05-01', 'HV', 'BATANG', 'BATANG', 3600, 2880, 14, 3),
('B19G0179M ', 'DETTOL LIQ 95 ML ', '2022-07-01', 'HV', 'CAIR', 'BOTOL', 15500, 12400, 10, 3),
('B2DS', 'KIRANTI ORIGINAL', '2020-07-09', 'HV', 'CAIR', 'BOTOL', 6200, 4960, 10, 3),
('B81114', 'FITBES FORCE', '2021-02-01', 'HV', 'KAPLET', 'STRIP', 16600, 13280, 38, 5),
('B90032T', 'GENTAMICIN SULFATE 0,1%', '2023-02-01', 'GENERIK', 'SALEP', 'TUBE', 5500, 4400, 11, 3),
('C80407B', 'SIMVASTATIN 20 MG', '2021-02-01', 'GENERIK', 'TABLET', 'TABLET', 1350, 1080, 50, 15),
('C9D878K', 'MICROLAX GEL', '2021-04-01', 'HV', 'GEL', 'TUBE', 23000, 18400, 15, 5),
('C9E726L', 'PRORIS', '2022-05-01', 'HV', 'KAPLET', 'STRIP', 9500, 7600, 21, 5),
('CBDS', 'KAP TUNTAS', '2022-04-01', 'HV', 'KAPLET', 'PAK', 10000, 8000, 14, 3),
('DBCS', 'RAPET WANGI', '2022-03-01', 'HV', 'KAPLET', 'PAK', 10000, 8000, 18, 3),
('E1907289', 'RIVANOL 100 ML', '2020-09-01', 'HV', 'CAIR', 'BOTOL', 3500, 2800, 10, 3),
('ECC040', 'BETAHISTIN 6 MG', '2022-03-01', 'GENERIK', 'TABLET', 'TABLET', 1200, 960, 78, 15),
('ECC227', 'KETOPROFEN 100 MG', '2022-03-01', 'GENERIK', 'TABLET', 'TABLET', 1700, 1360, 72, 15),
('ECF035', 'MECOBALAMIN 500 MG', '2022-06-01', 'GENERIK', 'TABLET', 'TABLET', 1150, 920, 50, 15),
('ECH010', 'METHYLPRETNISOLON 8 MG', '2022-08-01', 'GENERIK', 'TABLET', 'TABLET', 800, 640, 38, 15),
('ECH136', 'SIMVASTATIN 10 MG', '2021-08-01', 'GENERIK', 'TABLET', 'TABLET', 700, 560, 144, 15),
('ECH147', 'DICLOFENAC SODIUM 50 MG', '2022-08-01', 'GENERIK', 'TABLET', 'TABLET', 500, 400, 56, 15),
('ECH199', 'CETIRIZINE HYDROCHLORIDE 10 MG', '2021-08-01', 'GENERIK', 'TABLET', 'TABLET', 550, 440, 38, 15),
('F3038', 'OSTEOKOM', '2022-06-01', 'HV', 'KAPLET', 'STRIP', 44000, 35200, 12, 5),
('G40F250', 'ALKOHOL 70% 100 ML', '2023-06-01', 'HV', 'CAIR', 'BOTOL', 5760, 4800, 115, 3),
('H82344W ', 'OXYTETRACYCLINE HCL 3%', '2021-08-01', 'GENERIK', 'SALEP', 'TUBE', 5000, 4000, 11, 3),
('HEA026086', 'LICOKALK', '2024-08-01', 'HV', 'KAPLET', 'STRIP', 2500, 2000, 25, 5),
('HES056018', 'LICOKALK PLUS', '2024-08-01', 'HV', 'KAPLET', 'STRIP', 3000, 2400, 22, 5),
('HTAL0B92175', 'ALLOPURINOL 300 MG', '2021-04-01', 'GENERIK', 'TABLET', 'TABLET', 660, 528, 70, 15),
('HTDPSA94059', 'DICLOFENAC POTASSIUM 50 MG', '2021-08-01', 'GENERIK', 'TABLET', 'TABLET', 1000, 800, 48, 15),
('HTGMPE91032', 'GLIMEPIRIDE 1 MG', '2022-01-01', 'GENERIK', 'TABLET', 'TABLET', 660, 528, 32, 15),
('HTGMPF91064', 'GLIMEPIRIDE 2 MG', '2023-01-01', 'GENERIK', 'TABLET', 'TABLET', 1150, 920, 34, 15),
('INF', 'METFORMIN HCL 500 MG', '2022-04-01', 'GENERIK', 'TABLET', 'TABLET', 300, 240, 54, 15),
('J6AA008', 'SELSUN BLUE', '2022-07-01', 'HV', 'CAIR', 'BOTOL', 27500, 22000, 11, 3),
('JERB010', 'ROHTO TM', '2022-05-01', 'HV', 'CAIR', 'BOTOL', 12200, 9760, 12, 3),
('JFRF036', 'ROHTO COOL TM', '2022-06-01', 'HV', 'CAIR', 'BOTOL', 16500, 13200, 12, 3),
('JUL19A02', 'VIGEL 30 G', '2023-07-01', 'HV', 'GEL', 'BOTOL', 15500, 12400, 12, 3),
('JUL19A10', 'VIGEL 60 G', '2023-07-01', 'HV', 'GEL', 'BOTOL', 26500, 21200, 10, 3),
('JUN18A02', 'KONICARE GEL ANTI GATAL 60 G', '2021-06-01', 'HV', 'GEL', 'BOTOL', 11000, 8800, 14, 3),
('KCHCTA94258', 'HYDROCORTISONE 1%', '2024-07-01', 'GENERIK', 'SALEP', 'TUBE', 7000, 5600, 12, 3),
('KCHCTB93267', 'HYDROCORTISONE 2,5%', '2024-05-01', 'GENERIK', 'SALEP', 'TUBE', 8500, 6800, 12, 3),
('KPB00546', 'PIRACETAM 400 MG', '2020-11-01', 'GENERIK', 'TABLET', 'TABLET', 800, 640, 34, 15),
('KR124', 'VERILE ACNE 10G', '2022-06-01', 'HV', 'GEL', 'TUBE', 16000, 12800, 10, 5),
('L18001', 'JF SULFUR ALL VAR', '2021-12-01', 'HV', 'BATANG', 'BATANG', 10500, 8400, 12, 3),
('LG2287JMD', 'AZYTHROMYCIN 500 MG', '2021-10-01', 'GENERIK', 'TABLET', 'TABLET', 13440, 11200, 175, 15),
('MC02705', 'GPU MINYAK URUT 60ML', '2024-08-01', 'HV', 'CAIR', 'BOTOL', 16000, 12800, 10, 3),
('ME00109', 'GELIGA MINYAK OTOT 60ML', '2024-05-01', 'HV', 'CAIR', 'BOTOL', 28700, 22960, 10, 3),
('MFD0407191C', 'LUX SOAP ALL VAR', '2022-01-01', 'HV', 'BATANG', 'BATANG', 3500, 2800, 11, 3),
('MFD290819G2', 'GIV SOAP ALL VAR', '2022-08-29', 'HV', 'BATANG', 'BATANG', 2000, 1600, 11, 3),
('MFG090419', 'CUSSONS BABY HAIR&BD WASH 100 ML', '2022-04-01', 'HV', 'CAIR', 'BOTOL', 12000, 9600, 15, 3),
('MO01009', 'GELIGA MINYAK OTOT 30ML', '2024-08-01', 'HV', 'CAIR', 'BOTOL', 15500, 12400, 12, 3),
('N1901001', 'ONDANSETRON HCL 4 MG 10', '2021-01-01', 'GENERIK', 'TABLET', 'TABLET', 1950, 1560, 50, 15),
('RR21131', 'FENOFIBRATE 200 MG ', '2021-09-01', 'GENERIK', 'TABLET', 'TABLET', 5850, 4680, 38, 15),
('TFTGE90200', 'FATIGON ', '2021-04-01', 'HV', 'KAPLET', 'STRIP', 3600, 2880, 58, 5),
('TFTSE90438', 'FATIGON SPIRIT', '2021-07-01', 'HV', 'KAPLET', 'STRIP', 7000, 5600, 43, 5),
('wx1919', 'SAWANAN', '0000-00-00', 'GENERIK', 'CAIR', 'SACHET', 12000, 10000, 197, 150);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `id_peg` varchar(14) NOT NULL,
  `nama_peg` varchar(50) NOT NULL,
  `alamat_peg` text NOT NULL,
  `hp_peg` varchar(13) NOT NULL,
  `jk_peg` varchar(10) NOT NULL,
  `lhr_peg` date NOT NULL,
  `msk_peg` date NOT NULL,
  `pos_peg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`username`, `password`, `id_peg`, `nama_peg`, `alamat_peg`, `hp_peg`, `jk_peg`, `lhr_peg`, `msk_peg`, `pos_peg`) VALUES
('admin', 'admin', '21120118120017', 'Mas edi', 'kAJEKSAN NO 144 A. KUDUS', '085730527266', 'Laki-laki', '2000-06-18', '2019-11-02', 'Admin'),
('edi', 'edi', '21120118130017', 'Mas ed', 'Jl. Kudus semarang km 14 demak, jawa tengah', '08122221212', 'Perempuan', '2000-01-19', '2019-11-05', 'Kasir'),
('aldrian', 'aldrian', 'APT01981211', 'om aldrian', 'semarang', '0812121212121', 'Laki-laki', '1998-12-11', '2021-05-03', 'Apoteker'),
('pakedi', '66cd17677cdec593bf0acd38b', 'MNG01990618', 'pakedi', 'kudus', '12345678', 'Laki-laki', '1999-06-18', '2021-11-29', 'Manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `id_supplier` varchar(2) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `cr_bayar` varchar(15) NOT NULL,
  `jth_tempo` date DEFAULT NULL,
  `total_pembelian` int(11) NOT NULL,
  `status_byr` varchar(12) NOT NULL,
  `tgl_lunas` date DEFAULT NULL,
  `id_peg` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `tgl_pembelian`, `cr_bayar`, `jth_tempo`, `total_pembelian`, `status_byr`, `tgl_lunas`, `id_peg`) VALUES
('111111', '6', '2021-11-11', 'Langsung', '0000-00-00', 1000000, 'Lunas', '2021-11-11', '21120118120017'),
('123456', '6', '2021-11-25', 'Langsung', '0000-00-00', 39000, 'Lunas', '2021-11-25', '21120118120017'),
('20200304/222', '5', '2021-04-30', 'Langsung', '0000-00-00', 117120, 'Lunas', '2021-04-30', '21120118130088'),
('20210304/004', '3', '2021-04-30', 'Langsung', '0000-00-00', 1000000, 'Lunas', '2021-04-30', '21120118130088'),
('20210403/202', '5', '2021-04-08', 'Langsung', '0000-00-00', 488000, 'Lunas', '2021-04-08', '21120118130088'),
('2131314325', '2', '2021-11-11', 'Langsung', '0000-00-00', 28000, 'Lunas', '2021-11-11', '21120118120017'),
('22222222', '5', '2021-11-11', 'Langsung', '0000-00-00', 360000, 'Lunas', '2021-11-11', '21120118120017'),
('aku123444', '7', '2021-11-16', 'Langsung', '0000-00-00', 960000, 'Lunas', '2021-11-16', '21120118120017'),
('coba', '2', '2021-11-04', 'Langsung', '0000-00-00', 96000, 'Lunas', '2021-11-04', '21120118120017'),
('faktur123', '2', '2021-11-29', 'Langsung', '0000-00-00', 10000000, 'Lunas', '2021-11-29', '21120118120017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(16) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `total_penjualan` int(11) NOT NULL,
  `tunai` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `id_peg` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tgl_penjualan`, `total_penjualan`, `tunai`, `kembali`, `id_peg`) VALUES
('PJL/20210430/03', '2021-04-30', 1152, 1500, 348, '21120118120017'),
('PJL/20210430/04', '2021-04-30', 30720, 40000, 9280, '21120118120017'),
('PJL/20210430/05', '2021-04-30', 1152, 1200, 48, '21120118120017'),
('PJL/20210430/06', '2021-04-30', 13440, 15000, 1560, '21120118120017'),
('PJL/20210430/07', '2021-04-30', 5760, 6000, 240, '21120118130088'),
('PJL/20210430/08', '2021-04-30', 600000, 600000, 0, '21120118130088'),
('PJL/20210430/09', '2021-04-30', 90000, 100000, 10000, '21120118120017'),
('PJL/20210503/01', '2021-05-03', 90000, 100000, 10000, '21120118130017'),
('PJL/20210503/02', '2021-05-03', 9600, 10000, 400, 'APT01981211'),
('PJL/20210518/01', '2021-05-18', 1152, 2000, 848, '21120118120017'),
('PJL/20210518/02', '2021-05-18', 1152, 2000, 848, '21120118120017'),
('PJL/20211028/01', '2021-10-28', 82800, 100000, 17200, '21120118120017'),
('PJL/20211104/01', '2021-11-04', 15360, 100000, 84640, '21120118120017'),
('PJL/20211125/01', '2021-11-25', 46800, 50000, 3200, '21120118120017'),
('PJL/20211125/02', '2021-11-25', 1152, 2000, 848, '21120118120017'),
('PJL/20211129/01', '2021-11-29', 1440000, 2000000, 560000, '21120118120017'),
('PJL/20211129/02', '2021-11-29', 46800, 1000000, 953200, '21120118120017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_obat`
--

CREATE TABLE `stok_obat` (
  `id_stok` int(11) NOT NULL,
  `kd_obat` varchar(15) NOT NULL,
  `tgl_exp` date NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok_obat`
--

INSERT INTO `stok_obat` (`id_stok`, `kd_obat`, `tgl_exp`, `stok`) VALUES
(1, '1811008', '2025-02-04', 199),
(2, '15330211', '2025-02-05', 196),
(3, '1811008', '2025-10-28', 197),
(4, 'G40F250', '2025-10-28', 99),
(5, 'LG2287JMD', '2025-03-06', 99),
(6, '19071988', '2025-07-16', 99),
(7, 'cek', '2023-10-17', 10),
(8, '130110', '2025-07-17', 150),
(9, '1909-03-184', '2025-07-17', 120),
(10, '1811008', '2021-06-10', 122),
(11, 'CPDAMER11', '2022-10-11', 23),
(12, 'wx1919', '2023-10-11', 197),
(13, '19071988', '2021-11-26', 1),
(14, '1811008', '2022-02-25', 100),
(15, '1811008', '2022-05-27', 100),
(16, '12333', '2023-10-17', 100),
(17, '130110', '2022-06-24', 100),
(18, '1807040', '2022-04-22', 1000),
(19, '35553', '2022-03-18', 100),
(20, '1811008', '2022-11-19', 999),
(21, '1111', '2021-11-30', 1000),
(22, '15330211', '2021-12-04', 1),
(23, '110001', '2022-12-11', 88),
(24, '130110', '2022-06-03', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supp` varchar(50) NOT NULL,
  `nama_pet` varchar(50) NOT NULL,
  `nohp_pet` varchar(16) NOT NULL,
  `alm_supp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supp`, `nama_pet`, `nohp_pet`, `alm_supp`) VALUES
(1, 'PT Apotek Farma', 'Mas udin', '0811234456677', 'Jl. tanjungsari vii semarang'),
(2, 'Apotek K24', 'mudin', '0812322244566', 'Jl. Veteran no 49 kudus'),
(3, 'PT Dexa Medica', 'Yadi Surya', '085337810910', 'Jl. Kakap No9 Condongcatur, Sleman'),
(5, 'PT Sehat Selalu', 'Muhammad Edi Ilfa', '085730527266', 'Jl. Diponegoro no 49 semarang'),
(6, 'PT. Maju mundur', 'mas ganteng', '08123456789', 'kudus 144'),
(7, 'pt. maju jaya', 'aldrian', '1234567890', 'kudus');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`id_detailpembelian`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detailpenjualan`),
  ADD KEY `no_penjualan` (`id_penjualan`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kd_obat`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_peg`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_peg` (`id_peg`);

--
-- Indeks untuk tabel `stok_obat`
--
ALTER TABLE `stok_obat`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  MODIFY `id_detailpembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detailpenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT untuk tabel `stok_obat`
--
ALTER TABLE `stok_obat`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
