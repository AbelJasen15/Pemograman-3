-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 30 Okt 2015 pada 05.31
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `menghitungcc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
('1707599', 'abeljasen', 'ninjabatik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spek`
--

CREATE TABLE IF NOT EXISTS `spek` (
  `type_motor` varchar(10) NOT NULL,
  `spek_motor` text NOT NULL,
  PRIMARY KEY (`type_motor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spek`
--

INSERT INTO `spek` (`type_motor`, `spek_motor`) VALUES
('athlete', 'kapatsitas tangki BBM : 4 liter\r\nTipe mesin : 4-stroke SOHC\r\nDiameter stroke : 5 cm\r\nDiameter piston : 5,6 cm'),
('beat', 'Kapasitas tangki BBM : 3,7 liter\r\nTipe mesin : 4-Stroke SOHC\r\nDiameter stroke :5,5 cm\r\nDiatmeter piston : 5 cm'),
('cbr', 'Kapasitas tangki BBM : 12 liter\r\nTipe mesin : 4-Stroke DOHC\r\nDiameter stroke : 4,72 cm\r\nDiatmeter piston : 6,35 cm'),
('kaze R', 'Kapasitas tangki BBM : 3,8 liter\r\nTipe mesin : 4-Stroke SOHC\r\nDiameter stroke :5,79 cm\r\nDiatmeter piston : 5,24 cm'),
('mio', 'Kapasita tangki BBM : 3 liter\r\nTipe Mesin : 4-Stroke,SOHC\r\nDiameter Stroke : 5,5cm\r\nDiameter Piston : 5,0 cm'),
('nex', 'Kapasitas tangki BBM : 3 liter\r\nTipe mesin : 4-Stroke SOHC\r\nDiameter stroke :5,5 cm\r\nDiatmeter piston : 5,1 cm'),
('ninja mono', 'Kapasitas tangki BBM : 10,8 liter\r\nTipe mesin : 4-Stroke DOHC\r\nDiameter stroke : 6,12 cm\r\nDiatmeter piston : 7,2 cm'),
('ninja R', 'Kapasitas tangki BBM : 6 liter\r\nTipe mesin : 2-Stroke \r\nDiameter stroke :5,44 cm\r\nDiatmeter piston : 5,9 cm'),
('satria', 'Kapasita tangki BBM : 4,9 liter\r\nTipe mesin : 4-Stroke DOHC\r\nDiameter stroke : 4,88 cm\r\nDiameter piston : 6,2'),
('scorpio', 'kapatsitas tangki BBM : 13,5 liter\r\nTipe mesin : 4-stroke SOHC\r\nDiameter stroke :5,8 cm\r\nDiameter piston :7,4 cm'),
('skywave', 'Kapasita tangki BBM : 4,9 liter\r\nTipe mesin : 4-Stroke DOHC\r\nDiameter stroke : 5,52 cm\r\nDiameter piston : 5,35 cm'),
('thunder', 'Kapasita tangki BBM : 4,9 liter\r\nTipe mesin : 4-Stroke DOHC\r\nDiameter stroke : 4,88 cm\r\nDiameter piston : 5,7 cm'),
('tiger', 'Kapasitas tangki BBM :13,2 liter\r\nTipe mesin : 4-Stroke DOHC\r\nDiameter stroke : 6,22 cm\r\nDiatmeter piston : 6,32 cm'),
('vario ', 'Kapasitas tangki BBM : 5,5 liter\r\nTipe mesin : 4-Stroke SOHC\r\nDiameter stroke : 5,79 cm\r\nDiatmeter piston : 5,24 cm'),
('vixion', 'kapatsitas tangki BBM : 12 liter\r\nTipe mesin : 4-stroke SOHC\r\nDiameter stroke :5,87 cm\r\nDiameter piston :5,7 cm'),
('x-ride', 'kapatsitas tangki BBM : 4,8 liter\r\nTipe mesin : 4-stroke SOHC\r\nDiameter stroke :5,0 cm\r\nDiameter piston :5,79 cm');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
