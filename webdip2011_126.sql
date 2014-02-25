-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Računalo: localhost
-- Vrijeme generiranja: Lip 17, 2012 u 08:01 PM
-- Verzija poslužitelja: 5.0.51
-- PHP verzija: 5.3.3-7+squeeze13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza podataka: `WebDiP2011_126`
--
CREATE DATABASE `WebDiP2011_126` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `WebDiP2011_126`;

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `Korisnik`
--

CREATE TABLE IF NOT EXISTS `Korisnik` (
  `ID_korisnik` int(10) unsigned NOT NULL auto_increment,
  `Status_korisnika_ID_status_Korisnika` int(10) unsigned NOT NULL,
  `Tip_korisnika_ID_tip_korisnika` int(10) unsigned NOT NULL,
  `Fakultet_ID_fakultet` int(10) unsigned NOT NULL,
  `Ime` varchar(45) default NULL,
  `Prezime` varchar(45) default NULL,
  `Korisnicko_ime` varchar(45) default NULL,
  `Lozinka` varchar(45) default NULL,
  `Email_korisnik` varchar(45) default NULL,
  `Slika_korisnik` varchar(255) default NULL,
  `Token` varchar(40) NOT NULL,
  `Login_pokusaj` int(10) unsigned default NULL,
  `Blokiran` datetime default NULL,
  `Cookie` varchar(50) NOT NULL,
  PRIMARY KEY  (`ID_korisnik`),
  KEY `Korisnik_FKIndex1` (`Fakultet_ID_fakultet`),
  KEY `Korisnik_FKIndex2` (`Tip_korisnika_ID_tip_korisnika`),
  KEY `Korisnik_FKIndex3` (`Status_korisnika_ID_status_Korisnika`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Izbacivanje podataka za tablicu `Korisnik`
--

INSERT INTO `Korisnik` (`ID_korisnik`, `Status_korisnika_ID_status_Korisnika`, `Tip_korisnika_ID_tip_korisnika`, `Fakultet_ID_fakultet`, `Ime`, `Prezime`, `Korisnicko_ime`, `Lozinka`, `Email_korisnik`, `Slika_korisnik`, `Token`, `Login_pokusaj`, `Blokiran`, `Cookie`) VALUES
(1, 1, 4, 0, 'Jelena', 'Valcic', 'admin', 'admin', 'eniyel@gmail.com', 'jelena.jpg', '110412123757', 0, '0000-00-00 00:00:00', ''),
(2, 1, 1, 0, 'adad', 'adadad', 'adadadad', 'Abc123!', 'tttt@ttt.com', 'jelena_nova.jpg', '110412070457', 0, '2012-04-11 19:04:57', ''),
(3, 1, 1, 0, 'sadsad', 'sdsadf', 'abcdef', 'Abc123!', 'asdfsadf@sdaf.com', 'burn notice.jpg', '110412073031', 0, '2012-04-11 19:04:31', ''),
(5, 1, 1, 0, 'pero', 'peric', 'Pero_car', 'Perocar123!', 'peric@nesto.com', 'slike019-vi.jpg', '1335287917', 0, '2012-04-24 19:04:37', ''),
(6, 1, 3, 0, 'eni', 'val', 'Eniyel', 'Eniyel123!', 'eniyel@gmail.com', 'smijesne_slike(10).jpg', '1335288172', 0, '2012-04-24 19:04:52', ''),
(16, 1, 1, 0, 'Dante', 'Vergil', 'Dante', 'Dante123!', 'eniyel@gmail.com', 'burn notice.jpg', '1335290086', 0, '2012-04-24 19:04:46', ''),
(17, 1, 2, 0, 'wawa', 'wawa', 'wawawa', 'Wawa123!', 'wawa@mail.com', 'smijesne_slike(10).jpg', '1335294393', 0, '2012-04-24 21:04:33', ''),
(18, 1, 2, 0, 'awaw', 'awaw', 'awawaw', 'Awaw123!', 'eniyel@gmail.com', 'burn notice.jpg', '1335295437', 0, '2012-04-24 21:04:57', ''),
(19, 1, 2, 0, 'tomo2', 'tomic', '     tomot', 'Tomo123!', 'tomo@tomo.com', 'slike019-vi.jpg', '1335304489', 0, '2012-04-24 23:04:49', ''),
(20, 2, 2, 0, 'Jelena', 'Valcic', 'Korisnicko', 'Pass123!', 'eniyel@gmail.com', 'AC3_Iphone_640x960_01.jpg', '1335908995', 0, '0000-00-00 00:00:00', ''),
(21, 1, 2, 0, 'Jelena', 'Valcic', 'Proba', 'Proba123!', 'eniyel@gmail.com', 'pozdrav.jpg', '1335968357', 0, '0000-00-00 00:00:00', ''),
(22, 1, 2, 0, 'Pero', 'Peric', 'Peroo', 'kgckch98j8', 'eniyel@gmail.com', 'smijesne_slike(10).jpg', '1335968694', 1, '0000-00-00 00:00:00', ''),
(23, 2, 2, 0, 'Dsdf', 'Dfsdf', 'admin22', 'Admin1!', 'bla@gg.hr', 'slike019-vi.jpg', '1338586201', 0, '0000-00-00 00:00:00', ''),
(24, 2, 2, 0, 'Probno-ime', 'Probno-prezime', 'proba-korime', 'Proba1#', 'proba@email.com', 'AC3_Iphone_640x960_01.jpg', '1338629758', 0, '0000-00-00 00:00:00', ''),
(25, 2, 2, 0, 'Rert', 'Retd', 'fsdfs', 'Aaaa!1', 'dgd@gd.hr', 'AC3_Iphone_640x960_01.jpg', '1338636833', 0, '0000-00-00 00:00:00', ''),
(26, 1, 2, 0, 'Jelena2', 'Valcic', '  KorisnikProba', 'xj5nhx8ukf', 'eniyel@gmail.com', '60b0e3adbcb489938758038a3abe72dc-d2ac27b.jpg', '1339089942', 0, '0000-00-00 00:00:00', ''),
(27, 1, 2, 0, 'Nesto', 'Nesto', 'Nestokorisnik', 'Proba123!', 'eniyel@gmail.com', 'bvmn.jpg', '1339090929', 0, '0000-00-00 00:00:00', ''),
(28, 1, 2, 0, 'Jeloo', 'Jeloo', 'Netkojeloo', 'Lozinka1!', 'eniyel@gmail.com', 'AC3_Iphone_640x960_01.jpg', '1339426729', 0, '0000-00-00 00:00:00', ''),
(29, 1, 3, 0, 'Jeloo', 'Jeloo', 'Jeloonetko', 'Lozinka1!', 'eniyel@gmail.com', 'jelena.jpg', '1339426830', 0, '0000-00-00 00:00:00', ''),
(30, 1, 2, 0, 'Jeloo', 'Jeloo', 'Novokorisnickoproba', 'Lozinka1!', 'eniyel@gmail.com', 'pozdrav.jpg', '1339427948', 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `administrator_fakulteta`
--

CREATE TABLE IF NOT EXISTS `administrator_fakulteta` (
  `ID_administrator` int(5) NOT NULL auto_increment,
  `ID_natjecaj` int(5) NOT NULL,
  `ID_korisnik` int(5) NOT NULL,
  `ID_fakultet` int(5) NOT NULL,
  PRIMARY KEY  (`ID_administrator`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Izbacivanje podataka za tablicu `administrator_fakulteta`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `dnevnik`
--

CREATE TABLE IF NOT EXISTS `dnevnik` (
  `ID_dnevnik` int(5) NOT NULL auto_increment,
  `Korisnicko_ime` varchar(20) NOT NULL,
  `Datum` varchar(10) NOT NULL,
  `Vrijeme` varchar(10) NOT NULL,
  `Komentar` varchar(500) NOT NULL,
  PRIMARY KEY  (`ID_dnevnik`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Izbacivanje podataka za tablicu `dnevnik`
--

INSERT INTO `dnevnik` (`ID_dnevnik`, `Korisnicko_ime`, `Datum`, `Vrijeme`, `Komentar`) VALUES
(1, 'admin', '16.06.12.', '19:27:27', 'Korisnik se odjavio.'),
(2, 'admin', '16.06.12.', '19:29:30', 'Korisnik se uspješno prijavio.'),
(3, 'admin', '16.06.12.', '19:29:34', 'Korisnik se odjavio.'),
(4, 'Eniyel', '16.06.12.', '19:29:46', 'Korisnik se uspješno prijavio.'),
(5, 'Eniyel', '16.06.12.', '19:30:15', 'Korisnik se odjavio.'),
(6, 'Eniyel', '16.06.12.', '19:36:11', 'Korisnik se odjavio.'),
(7, 'admin', '16.06.12.', '19:36:16', 'Korisnik se uspješno prijavio.'),
(8, '', '16.06.12.', '19:36:27', 'Administrator je blokirao korisnika.'),
(9, '', '16.06.12.', '19:37:41', 'Administrator deblokirao korisnika.'),
(10, '', '16.06.12.', '19:38:03', 'Administrator deblokirao korisnika.'),
(11, 'admin', '16.06.12.', '20:05:56', 'Korisnik se odjavio.'),
(12, 'admin', '16.06.12.', '20:06:13', 'Korisnik se uspješno prijavio.'),
(13, 'Eniyel', '16.06.12.', '20:07:49', 'Korisnik se odjavio.'),
(14, 'admin', '16.06.12.', '20:07:53', 'Korisnik se uspješno prijavio.'),
(15, 'admin', '16.06.12.', '20:33:01', 'Korisnik se odjavio.'),
(16, 'Eniyel', '16.06.12.', '20:33:10', 'Korisnik se uspješno prijavio.'),
(17, 'Eniyel', '16.06.12.', '20:34:32', 'Korisnik se odjavio.'),
(18, 'Jeloonetko', '16.06.12.', '20:34:52', 'Korisnik se uspješno prijavio.'),
(19, 'admin', '16.06.12.', '20:38:44', 'Korisnik se odjavio.'),
(20, 'Dante', '16.06.12.', '20:40:11', 'Korisnik se uspješno prijavio.'),
(21, 'admin', '16.06.12.', '21:50:03', 'Korisnik se uspješno prijavio.'),
(22, 'admin', '16.06.12.', '23:21:39', 'Korisnik se uspješno prijavio.'),
(23, 'Eniyel', '17.06.12.', '12:43:36', 'Korisnik se uspješno prijavio.'),
(24, '', '17.06.12.', '13:26:26', 'Korisnik je kreirao natječaj.'),
(25, '', '17.06.12.', '13:48:34', 'Korisnik je kreirao natječaj.'),
(26, '', '17.06.12.', '13:49:10', 'Korisnik je kreirao natječaj.'),
(27, '', '17.06.12.', '13:58:16', 'Korisnik je kreirao natječaj.'),
(28, '', '17.06.12.', '14:00:41', 'Korisnik je kreirao natječaj.'),
(29, '', '17.06.12.', '14:02:12', 'Korisnik je kreirao natječaj.'),
(30, 'Eniyel', '17.06.12.', '14:02:29', 'Korisnik se odjavio.'),
(31, 'admin', '17.06.12.', '14:02:33', 'Korisnik se uspješno prijavio.'),
(32, '', '17.06.12.', '14:03:07', 'Korisnik je kreirao natječaj.'),
(33, 'admin', '17.06.12.', '14:05:55', 'Korisnik je kreirao natječaj.'),
(34, 'admin', '17.06.12.', '14:07:47', 'Korisnik je kreirao natječaj.'),
(35, 'admin', '17.06.12.', '14:09:25', 'Korisnik je kreirao natječaj.'),
(36, 'admin', '17.06.12.', '14:30:02', 'Korisnik se odjavio.'),
(37, 'Dante', '17.06.12.', '14:30:31', 'Korisnik se uspješno prijavio.'),
(38, 'Eniyel', '17.06.12.', '15:40:04', 'Korisnik se uspješno prijavio.'),
(39, 'admin', '17.06.12.', '16:41:12', 'Korisnik se uspješno prijavio.'),
(40, 'admin', '17.06.12.', '17:49:32', 'Administrator je odobrio prijavu.'),
(41, 'admin', '17.06.12.', '17:52:29', 'Administrator je odobrio prijavu.'),
(42, 'admin', '17.06.12.', '17:54:45', 'Administrator je odobrio prijavu.'),
(43, 'admin', '17.06.12.', '17:59:28', 'Administrator je odobrio prijavu.'),
(44, 'admin', '17.06.12.', '18:01:13', 'Administrator je odbio prijavu.'),
(45, 'admin', '17.06.12.', '18:02:34', 'Administrator je odbio prijavu.'),
(46, 'admin', '17.06.12.', '18:12:59', 'Korisnik se uspješno prijavio.');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `dokument`
--

CREATE TABLE IF NOT EXISTS `dokument` (
  `ID_dokument` int(10) unsigned NOT NULL auto_increment,
  `Portfelj_ID_portfelj` int(10) unsigned NOT NULL,
  `Sadrzaj` text,
  PRIMARY KEY  (`ID_dokument`),
  KEY `Dokument_FKIndex1` (`Portfelj_ID_portfelj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Izbacivanje podataka za tablicu `dokument`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `fakultet`
--

CREATE TABLE IF NOT EXISTS `fakultet` (
  `ID_fakultet` int(10) unsigned NOT NULL auto_increment,
  `Ime_fakulteta` varchar(50) default NULL,
  `Sveuciliste` varchar(50) default NULL,
  `Adresa` varchar(50) default NULL,
  `Kontakt_broj` int(10) unsigned default NULL,
  `Email_fakultet` varchar(50) default NULL,
  PRIMARY KEY  (`ID_fakultet`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Izbacivanje podataka za tablicu `fakultet`
--

INSERT INTO `fakultet` (`ID_fakultet`, `Ime_fakulteta`, `Sveuciliste`, `Adresa`, `Kontakt_broj`, `Email_fakultet`) VALUES
(0, 'nema', 'nema', 'nema', 0, NULL),
(1, 'Pravni fakultet', 'Zagrebačko', 'Frankopanska 5', 112233, NULL),
(2, 'FER', 'Zagrebacko', 'Vukovarska 20', 223344, NULL),
(3, 'FSB', 'Zagrebačko', 'Vukovarska 30', 445566, NULL),
(4, 'Filozofski fakultet', 'Zagrebačko', 'Vukovarska 40', 55667788, NULL),
(5, 'FOI', 'Zagrebačko', 'Pavlinska 2', 112233, NULL);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `galerija`
--

CREATE TABLE IF NOT EXISTS `galerija` (
  `ID_galerija` int(10) unsigned NOT NULL auto_increment,
  `Natjecaj_ID_natjecaj` int(10) unsigned NOT NULL,
  `Ime_galerije` varchar(20) default NULL,
  `Opis_galerije` text,
  `Datum_postavljanja` date default NULL,
  PRIMARY KEY  (`ID_galerija`),
  KEY `Galerija_FKIndex1` (`Natjecaj_ID_natjecaj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Izbacivanje podataka za tablicu `galerija`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `ID_komentar` int(10) unsigned NOT NULL auto_increment,
  `Korisnik_ID_korisnik` int(10) unsigned NOT NULL,
  `Komentar_ID_komentar` int(10) unsigned default NULL,
  `Natjecaj_ID_natjecaj` int(10) unsigned NOT NULL,
  `Komentar` text,
  PRIMARY KEY  (`ID_komentar`),
  KEY `Komentar_FKIndex1` (`Natjecaj_ID_natjecaj`),
  KEY `Komentar_FKIndex2` (`Komentar_ID_komentar`),
  KEY `Komentar_FKIndex3` (`Korisnik_ID_korisnik`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Izbacivanje podataka za tablicu `komentar`
--

INSERT INTO `komentar` (`ID_komentar`, `Korisnik_ID_korisnik`, `Komentar_ID_komentar`, `Natjecaj_ID_natjecaj`, `Komentar`) VALUES
(2, 1, NULL, 1, 'komentar proba'),
(3, 1, NULL, 1, 'bladfgdfg'),
(4, 1, NULL, 1, 'bladfgdfg'),
(5, 1, NULL, 1, 'ddddddddddd'),
(6, 1, NULL, 1, 'he he'),
(7, 1, NULL, 1, 'novo!!!'),
(8, 1, NULL, 1, 'et'),
(9, 1, 17, 1, 'hehe sda radi kako bi i trebalo kaj ne'),
(10, 1, NULL, 1, 'herte'),
(11, 1, NULL, 1, 'rrr'),
(12, 1, NULL, 1, 'čišiđ'),
(13, 1, NULL, 1, 'đđđđ'),
(14, 1, NULL, 1, 'najnovi kommentar'),
(15, 1, NULL, 1, 'a sad još jedan'),
(16, 1, NULL, 1, 'i jedanssssss'),
(17, 1, NULL, 1, 'ovo je novi'),
(18, 1, 17, 1, 'ert'),
(19, 1, 17, 1, 'novi kom'),
(20, 1, 17, 1, 'ttr'),
(21, 1, NULL, 1, '567'),
(22, 1, NULL, 1, 'tt'),
(23, 1, 17, 1, 'eee'),
(24, 1, NULL, 1, 'eer'),
(25, 1, 17, 1, 'naj'),
(26, 1, 17, 1, 'novi podkomentar...dfg'),
(27, 1, 17, 1, 're'),
(28, 1, 17, 1, 'rr'),
(29, 1, 24, 1, 'novi podkomentar...newwww'),
(30, 1, NULL, 18, 'ff'),
(31, 1, 30, 18, 'dfg'),
(32, 1, 30, 18, 'dfd'),
(33, 1, NULL, 18, 'blaaa'),
(34, 1, NULL, 18, 'ert'),
(35, 1, 34, 18, 'sdf'),
(36, 1, NULL, 18, 'sdf'),
(37, 1, NULL, 1, 'fd'),
(38, 1, NULL, 13, 'sdfs'),
(39, 1, NULL, 13, 'sdf'),
(40, 1, NULL, 13, '2'),
(41, 1, NULL, 13, '2342'),
(42, 1, NULL, 13, 'sdfs'),
(43, 1, NULL, 13, 'sdfw3'),
(44, 1, NULL, 13, 'sdfs'),
(45, 1, NULL, 13, 'sdf'),
(46, 3, 39, 13, 'hh'),
(47, 1, 16, 1, 'dsf'),
(48, 1, NULL, 1, 'sad'),
(49, 1, 48, 1, 'sadaa'),
(50, 1, NULL, 14, 'prviii'),
(51, 1, 50, 14, 'odgovor'),
(52, 1, 50, 14, 'dva'),
(53, 26, NULL, 15, 'ajde novi'),
(54, 26, NULL, 15, 'a sad hoces'),
(55, 1, NULL, 18, 'a budes sad?'),
(56, 1, 55, 18, 'a saaaaaad?'),
(57, 6, NULL, 1, 'ja sam sada tuuuuu'),
(58, 6, 57, 1, 'i komentiram teeeeeeee'),
(59, 6, NULL, 16, 'a hoces sad? hmmm?'),
(60, 6, 59, 16, 'lalalala'),
(61, 6, NULL, 16, 'tralalalala'),
(62, 30, NULL, 13, 'cudan si'),
(63, 29, NULL, 13, 'jos jednom si cudan'),
(64, 29, NULL, 13, 'a jesi li sada cudan'),
(65, 29, NULL, 16, 'a ovdje'),
(66, 29, NULL, 16, 'a saaaaaaaaad?'),
(67, 6, NULL, 20, 'svasta'),
(68, 30, NULL, 20, 'a sad'),
(69, 30, NULL, 18, 'sad?'),
(70, 1, NULL, 14, 'da probamo komentirati'),
(71, 1, NULL, 14, 'da probamo sada?'),
(72, 1, NULL, 14, 'a sada?'),
(73, 1, NULL, 1, 'hmmm sada'),
(74, 1, 73, 1, 'a sada'),
(75, 1, NULL, 1, 'novi'),
(76, 1, 75, 1, 'novi'),
(77, 6, NULL, 14, 'sadsadsad'),
(78, 6, NULL, 13, 'dasdasdfasdf'),
(79, 6, NULL, 1, 'SADFASDFAWEF'),
(80, 6, NULL, 1, 'a saaaaaaaaaaaaaaaaaaaaaad'),
(81, 6, NULL, 1, 'a saaaaaaad'),
(82, 1, NULL, 1, 'dsfasdase'),
(83, 1, NULL, 1, 'asdfaesa'),
(84, 1, 1, 1, 'novi komentar na arci						'),
(85, 1, 1, 1, 'proba novi link				');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `natjecaj`
--

CREATE TABLE IF NOT EXISTS `natjecaj` (
  `ID_natjecaj` int(10) unsigned NOT NULL auto_increment,
  `ID_administrator` int(10) NOT NULL,
  `Fakultet_ID_fakultet` int(10) unsigned NOT NULL,
  `Naziv` varchar(45) default NULL,
  `Datum_objave` date default NULL,
  `Trajanje_natjecaja` int(10) default NULL,
  `Aktivan` tinyint(1) default NULL,
  `Opis` text,
  `Broj_mjesta` int(10) unsigned default NULL,
  `Troskovi_prijave` float default NULL,
  `Cijena_programa` float default NULL,
  `Linije_financiranja` varchar(45) default NULL,
  `Dokumentacija` text NOT NULL,
  PRIMARY KEY  (`ID_natjecaj`),
  KEY `Natjecaj_FKIndex1` (`Fakultet_ID_fakultet`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Izbacivanje podataka za tablicu `natjecaj`
--

INSERT INTO `natjecaj` (`ID_natjecaj`, `ID_administrator`, `Fakultet_ID_fakultet`, `Naziv`, `Datum_objave`, `Trajanje_natjecaja`, `Aktivan`, `Opis`, `Broj_mjesta`, `Troskovi_prijave`, `Cijena_programa`, `Linije_financiranja`, `Dokumentacija`) VALUES
(1, 0, 1, 'Natječaj 1', '2012-06-11', 2012, NULL, 'Opis natječaja broj 1', 20, 200, 8900, NULL, ''),
(13, 0, 1, 'Natječaj 2', '2012-06-11', 2012, NULL, 'Opis natječaja broj 2', 200, 200, 8900, NULL, ''),
(14, 0, 2, 'Natječaj 3', '2012-06-11', 2012, NULL, 'Opis natječaja broj 3', 50, 200, 8900, NULL, ''),
(15, 0, 2, 'Natječaj 4', '2012-06-11', 2012, NULL, 'Opis natječaja broj 4', 100, 200, 6500, NULL, ''),
(16, 0, 3, 'Natječaj 5', '2012-06-11', 2012, NULL, 'Opis natječaja broj 5', 220, 200, 2000, NULL, ''),
(17, 0, 3, 'Natječaj 6', '2012-06-11', 2012, NULL, 'Opis natječaja broj 6', 30, 200, 9000, NULL, ''),
(18, 0, 3, 'Natječaj 7', '2012-06-11', 2012, NULL, 'Opis natječaja broj 7', 202, 200, 8900, NULL, ''),
(19, 0, 3, 'Natječaj 8', '2012-06-11', 2012, NULL, 'Opis natječaja broj 8', 20, 200, 8900, NULL, ''),
(20, 0, 1, 'Natječaj 9', '2012-06-11', 2012, NULL, 'Opis natječaja broj 9', 120, 200, 5900, NULL, ''),
(21, 0, 1, 'Natječaj 10', '2012-06-11', 2012, NULL, 'Opis natječaja broj 10', 20, 200, 8000, NULL, ''),
(22, 0, 1, 'Natječaj 11', '2012-06-11', 2012, NULL, 'Opis natječaja broj 11', 20, 200, 10000, NULL, ''),
(23, 0, 1, 'Natječaj 12', '2012-06-11', 2012, NULL, 'Opis natječaja broj 12', 20, 200, 8900, NULL, ''),
(24, 0, 1, 'Natječaj 13', '2012-06-11', 2012, NULL, 'Opis natječaja broj 13', 30, 150, 6000, NULL, ''),
(25, 0, 1, 'WebDiP2011_126', '0000-00-00', 10, NULL, 'ovo je neki opis', 100, 80, 890, 'gotovina', ''),
(26, 0, 1, 'neki novi naziv', '2017-06-12', 20, NULL, 'novi opis natječaja', 30, 200, 2320, 'gotovina', 'životopis, osobna slika'),
(27, 1, 1, 'ajde sada', '2017-06-12', 12, NULL, 'proba', 12, 12, 12, 'gotovina', 'životopis'),
(28, 1, 1, 'ajde sada2222', '2017-06-12', 12, NULL, 'proba', 12, 12, 12, 'gotovina', 'životopis'),
(29, 6, 4, 'novi novi', '2017-06-12', 13, NULL, 'novi opis ponovo', 12, 12, 12, 'gotovina', 'životopis'),
(30, 6, 4, 'novi novi', '2017-06-12', 13, NULL, 'novi opis ponovo', 12, 12, 12, 'gotovina', 'životopis'),
(31, 6, 4, 'novi novi', '2017-06-12', 13, NULL, 'novi opis ponovo', 12, 12, 12, 'gotovina', 'životopis'),
(32, 1, 2, 'nestoooo', '2017-06-12', 12, NULL, 'neki novi', 1, 1, 1, 'gotovina', 'životopis'),
(33, 1, 2, 'nestoooo', '2017-06-12', 12, NULL, 'neki novi', 1, 1, 1, 'gotovina', 'životopis'),
(34, 1, 2, 'nestoooo', '2017-06-12', 12, NULL, 'neki novi', 1, 1, 1, 'gotovina', 'životopis'),
(35, 1, 2, 'nestoooo22222', '2017-06-12', 12, NULL, 'neki novi', 1, 1, 1, 'gotovina', 'životopis');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `ocjena`
--

CREATE TABLE IF NOT EXISTS `ocjena` (
  `ID_korisnik` int(11) NOT NULL,
  `ID_natjecaj` int(11) NOT NULL,
  `Ocjena` int(11) NOT NULL,
  PRIMARY KEY  (`ID_korisnik`,`ID_natjecaj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `ocjena`
--

INSERT INTO `ocjena` (`ID_korisnik`, `ID_natjecaj`, `Ocjena`) VALUES
(1, 1, 3),
(1, 14, 1),
(2, 1, 3),
(3, 1, 5),
(3, 13, 2),
(6, 1, 3),
(6, 16, 3),
(26, 15, 2),
(29, 16, 4);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `pismopreporuke`
--

CREATE TABLE IF NOT EXISTS `pismopreporuke` (
  `ID_preporuka` int(10) unsigned NOT NULL auto_increment,
  `Prijava_ID_prijava` int(10) unsigned NOT NULL,
  `Korisnik_ID_korisnik` int(10) unsigned NOT NULL,
  `Preporuka` text,
  `Datum` date default NULL,
  PRIMARY KEY  (`ID_preporuka`),
  KEY `PismoPreporuke_FKIndex1` (`Korisnik_ID_korisnik`),
  KEY `PismoPreporuke_FKIndex2` (`Prijava_ID_prijava`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Izbacivanje podataka za tablicu `pismopreporuke`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `portfelj`
--

CREATE TABLE IF NOT EXISTS `portfelj` (
  `ID_portfelj` int(10) unsigned NOT NULL auto_increment,
  `Korisnik_ID_korisnik` int(10) unsigned NOT NULL,
  `Podaci` text,
  `Datum_izrade` date default NULL,
  PRIMARY KEY  (`ID_portfelj`),
  KEY `Portfelj_FKIndex1` (`Korisnik_ID_korisnik`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Izbacivanje podataka za tablicu `portfelj`
--

INSERT INTO `portfelj` (`ID_portfelj`, `Korisnik_ID_korisnik`, `Podaci`, `Datum_izrade`) VALUES
(1, 30, 'Jeloo Jeloo', '2012-06-21'),
(2, 30, 'Jeloo Jeloo', '2012-06-28'),
(3, 30, 'Jeloo Jeloo', '2012-06-25'),
(4, 16, 'Dante Dante', '2012-06-25'),
(5, 16, 'Dante Dante', '2012-06-16'),
(6, 19, 'tomo', '2012-06-16'),
(7, 22, 'Peroo', '2012-06-28'),
(8, 6, 'Eniyel', '2012-06-15'),
(9, 6, 'Eniyel', '2012-06-30'),
(10, 19, 'tomo', '2012-06-19'),
(11, 22, 'peroo', '2012-06-13'),
(12, 1, 'proba 1', '2017-06-12');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `prijava`
--

CREATE TABLE IF NOT EXISTS `prijava` (
  `ID_prijava` int(10) unsigned NOT NULL auto_increment,
  `Natjecaj_ID_natjecaj` int(10) unsigned NOT NULL,
  `Korisnik_ID_korisnik` int(10) unsigned NOT NULL,
  `Portfelj_ID_portfelj` int(10) unsigned NOT NULL,
  `Korisnicko_imep` varchar(45) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY  (`ID_prijava`),
  KEY `Prijava_FKIndex1` (`Portfelj_ID_portfelj`),
  KEY `Prijava_FKIndex2` (`Korisnik_ID_korisnik`),
  KEY `Prijava_FKIndex3` (`Natjecaj_ID_natjecaj`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Izbacivanje podataka za tablicu `prijava`
--

INSERT INTO `prijava` (`ID_prijava`, `Natjecaj_ID_natjecaj`, `Korisnik_ID_korisnik`, `Portfelj_ID_portfelj`, `Korisnicko_imep`, `Status`) VALUES
(1, 1, 30, 1, 'Nekokorisnicko', 'Odobreno'),
(2, 1, 16, 5, 'Dante', 'Odbijeno'),
(3, 1, 19, 6, 'tomot', 'Odobreno'),
(4, 1, 6, 8, 'Eniyel', 'Odbijeno'),
(5, 1, 22, 3, 'peroo', 'Odobreno'),
(6, 1, 30, 11, 'Nekokorisnicko', 'Odobreno'),
(7, 1, 16, 4, 'Dante', 'Odobreno'),
(8, 1, 6, 9, 'Eniyel', 'Odbijeno'),
(9, 1, 19, 10, 'tomot', 'Odbijeno'),
(10, 1, 22, 7, 'peroo', 'Odbijeno'),
(11, 1, 30, 1, 'Nekokorisnicko', 'Odbijeno');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `slika`
--

CREATE TABLE IF NOT EXISTS `slika` (
  `ID_slika` int(10) unsigned NOT NULL auto_increment,
  `Galerija_ID_galerija` int(10) unsigned NOT NULL,
  `Naziv_slike` varchar(20) default NULL,
  `Slika` text,
  `Opis_slike` varchar(255) default NULL,
  PRIMARY KEY  (`ID_slika`),
  KEY `Slika_FKIndex1` (`Galerija_ID_galerija`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Izbacivanje podataka za tablicu `slika`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `status_korisnika`
--

CREATE TABLE IF NOT EXISTS `status_korisnika` (
  `ID_status_Korisnika` int(10) unsigned NOT NULL auto_increment,
  `Opis_statusa` varchar(45) default NULL,
  PRIMARY KEY  (`ID_status_Korisnika`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Izbacivanje podataka za tablicu `status_korisnika`
--

INSERT INTO `status_korisnika` (`ID_status_Korisnika`, `Opis_statusa`) VALUES
(1, 'Neregistrirani korisnik'),
(2, 'Registrirani korisnik'),
(3, 'Administrator fakulteta'),
(4, 'Administrator sustava');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `tip_korisnika`
--

CREATE TABLE IF NOT EXISTS `tip_korisnika` (
  `ID_tip_korisnika` int(10) unsigned NOT NULL auto_increment,
  `tip_korisnika` varchar(50) default NULL,
  PRIMARY KEY  (`ID_tip_korisnika`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Izbacivanje podataka za tablicu `tip_korisnika`
--

INSERT INTO `tip_korisnika` (`ID_tip_korisnika`, `tip_korisnika`) VALUES
(1, 'Neregistrirani korisnik'),
(2, 'Registrirani korisnik'),
(3, 'Administrator fakulteta'),
(4, 'Administrator sustava');
--
-- Baza podataka: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATE_NAME` varchar(64) NOT NULL default '',
  `DESCRIPTION` varchar(60) NOT NULL default '',
  `MAXLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `ID` bigint(11) NOT NULL default '0',
  `IS_DEFAULT` varchar(3) NOT NULL default '',
  `IS_COMPILED` varchar(3) NOT NULL default '',
  `SORTLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', 'Yes', 1),
('dec8_bin', 'dec8', 69, '', 'Yes', 1),
('cp850_general_ci', 'cp850', 4, 'Yes', 'Yes', 1),
('cp850_bin', 'cp850', 80, '', 'Yes', 1),
('hp8_english_ci', 'hp8', 6, 'Yes', 'Yes', 1),
('hp8_bin', 'hp8', 72, '', 'Yes', 1),
('koi8r_general_ci', 'koi8r', 7, 'Yes', 'Yes', 1),
('koi8r_bin', 'koi8r', 74, '', 'Yes', 1),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', 'Yes', 1),
('swe7_bin', 'swe7', 82, '', 'Yes', 1),
('ascii_general_ci', 'ascii', 11, 'Yes', 'Yes', 1),
('ascii_bin', 'ascii', 65, '', 'Yes', 1),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', 'Yes', 1),
('hebrew_bin', 'hebrew', 71, '', 'Yes', 1),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', 'Yes', 1),
('koi8u_bin', 'koi8u', 75, '', 'Yes', 1),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', 'Yes', 1),
('greek_bin', 'greek', 70, '', 'Yes', 1),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', 'Yes', 1),
('latin5_bin', 'latin5', 78, '', 'Yes', 1),
('armscii8_general_ci', 'armscii8', 32, 'Yes', 'Yes', 1),
('armscii8_bin', 'armscii8', 64, '', 'Yes', 1),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', 'Yes', 1),
('cp866_bin', 'cp866', 68, '', 'Yes', 1),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', 'Yes', 1),
('keybcs2_bin', 'keybcs2', 73, '', 'Yes', 1),
('macce_general_ci', 'macce', 38, 'Yes', 'Yes', 1),
('macce_bin', 'macce', 43, '', 'Yes', 1),
('macroman_general_ci', 'macroman', 39, 'Yes', 'Yes', 1),
('macroman_bin', 'macroman', 53, '', 'Yes', 1),
('cp852_general_ci', 'cp852', 40, 'Yes', 'Yes', 1),
('cp852_bin', 'cp852', 81, '', 'Yes', 1),
('latin7_estonian_cs', 'latin7', 20, '', 'Yes', 1),
('latin7_general_ci', 'latin7', 41, 'Yes', 'Yes', 1),
('latin7_general_cs', 'latin7', 42, '', 'Yes', 1),
('latin7_bin', 'latin7', 79, '', 'Yes', 1),
('cp1251_bulgarian_ci', 'cp1251', 14, '', 'Yes', 1),
('cp1251_ukrainian_ci', 'cp1251', 23, '', 'Yes', 1),
('cp1251_bin', 'cp1251', 50, '', 'Yes', 1),
('cp1251_general_ci', 'cp1251', 51, 'Yes', 'Yes', 1),
('cp1251_general_cs', 'cp1251', 52, '', 'Yes', 1),
('cp1256_general_ci', 'cp1256', 57, 'Yes', 'Yes', 1),
('cp1256_bin', 'cp1256', 67, '', 'Yes', 1),
('cp1257_lithuanian_ci', 'cp1257', 29, '', 'Yes', 1),
('cp1257_bin', 'cp1257', 58, '', 'Yes', 1),
('cp1257_general_ci', 'cp1257', 59, 'Yes', 'Yes', 1),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', 'Yes', 1),
('geostd8_bin', 'geostd8', 93, '', 'Yes', 1),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(21) NOT NULL default '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL default '',
  `DATA_TYPE` varchar(64) NOT NULL default '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) default NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) default NULL,
  `NUMERIC_PRECISION` bigint(21) default NULL,
  `NUMERIC_SCALE` bigint(21) default NULL,
  `CHARACTER_SET_NAME` varchar(64) default NULL,
  `COLLATION_NAME` varchar(64) default NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL default '',
  `EXTRA` varchar(20) NOT NULL default '',
  `PRIVILEGES` varchar(80) NOT NULL default '',
  `COLUMN_COMMENT` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'ID_korisnik', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Status_korisnika_ID_status_Korisnika', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Tip_korisnika_ID_tip_korisnika', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Fakultet_ID_fakultet', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Ime', 5, NULL, 'YES', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Prezime', 6, NULL, 'YES', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Korisnicko_ime', 7, NULL, 'YES', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Lozinka', 8, NULL, 'YES', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Email_korisnik', 9, NULL, 'YES', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Slika_korisnik', 10, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Token', 11, NULL, 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Login_pokusaj', 12, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Blokiran', 13, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'Cookie', 14, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'administrator_fakulteta', 'ID_administrator', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'administrator_fakulteta', 'ID_natjecaj', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'administrator_fakulteta', 'ID_korisnik', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'administrator_fakulteta', 'ID_fakultet', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'dnevnik', 'ID_dnevnik', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'dnevnik', 'Korisnicko_ime', 2, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'dnevnik', 'Datum', 3, NULL, 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'dnevnik', 'Vrijeme', 4, NULL, 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'dnevnik', 'Komentar', 5, NULL, 'NO', 'varchar', 500, 1500, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(500)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'dokument', 'ID_dokument', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'dokument', 'Portfelj_ID_portfelj', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'dokument', 'Sadrzaj', 3, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'fakultet', 'ID_fakultet', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'fakultet', 'Ime_fakulteta', 2, NULL, 'YES', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'fakultet', 'Sveuciliste', 3, NULL, 'YES', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'fakultet', 'Adresa', 4, NULL, 'YES', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'fakultet', 'Kontakt_broj', 5, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'fakultet', 'Email_fakultet', 6, NULL, 'YES', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'galerija', 'ID_galerija', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'galerija', 'Natjecaj_ID_natjecaj', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'galerija', 'Ime_galerije', 3, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'galerija', 'Opis_galerije', 4, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'galerija', 'Datum_postavljanja', 5, NULL, 'YES', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'komentar', 'ID_komentar', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'komentar', 'Korisnik_ID_korisnik', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'komentar', 'Komentar_ID_komentar', 3, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'komentar', 'Natjecaj_ID_natjecaj', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'komentar', 'Komentar', 5, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'ID_natjecaj', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'ID_administrator', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Fakultet_ID_fakultet', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Naziv', 4, NULL, 'YES', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Datum_objave', 5, NULL, 'YES', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Trajanje_natjecaja', 6, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Aktivan', 7, NULL, 'YES', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Opis', 8, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Broj_mjesta', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Troskovi_prijave', 10, NULL, 'YES', 'float', NULL, NULL, 12, NULL, NULL, NULL, 'float', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Cijena_programa', 11, NULL, 'YES', 'float', NULL, NULL, 12, NULL, NULL, NULL, 'float', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Linije_financiranja', 12, NULL, 'YES', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 'Dokumentacija', 13, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'ocjena', 'ID_korisnik', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'ocjena', 'ID_natjecaj', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'ocjena', 'Ocjena', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 'ID_preporuka', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 'Prijava_ID_prijava', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 'Korisnik_ID_korisnik', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 'Preporuka', 4, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 'Datum', 5, NULL, 'YES', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'portfelj', 'ID_portfelj', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'portfelj', 'Korisnik_ID_korisnik', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'portfelj', 'Podaci', 3, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'portfelj', 'Datum_izrade', 4, NULL, 'YES', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'prijava', 'ID_prijava', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'prijava', 'Natjecaj_ID_natjecaj', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'prijava', 'Korisnik_ID_korisnik', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'prijava', 'Portfelj_ID_portfelj', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'prijava', 'Korisnicko_imep', 5, NULL, 'NO', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'prijava', 'Status', 6, NULL, 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'slika', 'ID_slika', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'slika', 'Galerija_ID_galerija', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'slika', 'Naziv_slike', 3, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'slika', 'Slika', 4, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'slika', 'Opis_slike', 5, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'status_korisnika', 'ID_status_Korisnika', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'status_korisnika', 'Opis_statusa', 2, NULL, 'YES', 'varchar', 45, 135, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'tip_korisnika', 'ID_tip_korisnika', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'WebDiP2011_126', 'tip_korisnika', 'tip_korisnika', 2, NULL, 'YES', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `COLUMN_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(10) NOT NULL default '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) default NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) default NULL,
  `REFERENCED_TABLE_NAME` varchar(64) default NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'Korisnik', 'ID_korisnik', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'administrator_fakulteta', 'ID_administrator', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'dnevnik', 'ID_dnevnik', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'dokument', 'ID_dokument', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'fakultet', 'ID_fakultet', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'galerija', 'ID_galerija', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'komentar', 'ID_komentar', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'natjecaj', 'ID_natjecaj', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'ocjena', 'ID_korisnik', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'ocjena', 'ID_natjecaj', 2, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'pismopreporuke', 'ID_preporuka', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'portfelj', 'ID_portfelj', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'prijava', 'ID_prijava', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'slika', 'ID_slika', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'status_korisnika', 'ID_status_Korisnika', 1, NULL, NULL, NULL, NULL),
(NULL, 'WebDiP2011_126', 'PRIMARY', NULL, 'WebDiP2011_126', 'tip_korisnika', 'ID_tip_korisnika', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` bigint(20) NOT NULL default '0',
  `SEQ` bigint(20) NOT NULL default '0',
  `STATE` varchar(30) NOT NULL default '',
  `DURATION` varchar(9) NOT NULL default '',
  `CPU_USER` varchar(9) default NULL,
  `CPU_SYSTEM` varchar(9) default NULL,
  `CONTEXT_VOLUNTARY` bigint(20) default NULL,
  `CONTEXT_INVOLUNTARY` bigint(20) default NULL,
  `BLOCK_OPS_IN` bigint(20) default NULL,
  `BLOCK_OPS_OUT` bigint(20) default NULL,
  `MESSAGES_SENT` bigint(20) default NULL,
  `MESSAGES_RECEIVED` bigint(20) default NULL,
  `PAGE_FAULTS_MAJOR` bigint(20) default NULL,
  `PAGE_FAULTS_MINOR` bigint(20) default NULL,
  `SWAPS` bigint(20) default NULL,
  `SOURCE_FUNCTION` varchar(30) default NULL,
  `SOURCE_FILE` varchar(20) default NULL,
  `SOURCE_LINE` bigint(20) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `PROFILING`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_CATALOG` varchar(512) default NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL default '',
  `ROUTINE_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_TYPE` varchar(9) NOT NULL default '',
  `DTD_IDENTIFIER` varchar(64) default NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL default '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) default NULL,
  `EXTERNAL_LANGUAGE` varchar(64) default NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL default '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL default '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(64) default NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL default '',
  `CREATED` datetime NOT NULL default '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL default '0000-00-00 00:00:00',
  `SQL_MODE` longtext NOT NULL,
  `ROUTINE_COMMENT` varchar(64) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `ROUTINES`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) default NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATION_NAME` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(512) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'WebDiP2011_126', 'utf8', 'utf8_general_ci', NULL);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'SELECT', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'INSERT', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'UPDATE', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'DELETE', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'CREATE', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'DROP', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'REFERENCES', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'INDEX', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'ALTER', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'CREATE TEMPORARY TABLES', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'LOCK TABLES', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'EXECUTE', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'CREATE VIEW', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'SHOW VIEW', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'CREATE ROUTINE', 'NO'),
('''WebDiP2011_126''@''localhost''', NULL, 'WebDiP2011_126', 'ALTER ROUTINE', 'NO');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `NON_UNIQUE` bigint(1) NOT NULL default '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL default '0',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `COLLATION` varchar(1) default NULL,
  `CARDINALITY` bigint(21) default NULL,
  `SUB_PART` bigint(3) default NULL,
  `PACKED` varchar(10) default NULL,
  `NULLABLE` varchar(3) NOT NULL default '',
  `INDEX_TYPE` varchar(16) NOT NULL default '',
  `COMMENT` varchar(16) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'WebDiP2011_126', 'Korisnik', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_korisnik', 'A', 20, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 1, 'WebDiP2011_126', 'Korisnik_FKIndex1', 1, 'Fakultet_ID_fakultet', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 1, 'WebDiP2011_126', 'Korisnik_FKIndex2', 1, 'Tip_korisnika_ID_tip_korisnika', 'A', 10, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 1, 'WebDiP2011_126', 'Korisnik_FKIndex3', 1, 'Status_korisnika_ID_status_Korisnika', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'administrator_fakulteta', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_administrator', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'dnevnik', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_dnevnik', 'A', 46, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'dokument', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_dokument', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'dokument', 1, 'WebDiP2011_126', 'Dokument_FKIndex1', 1, 'Portfelj_ID_portfelj', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'fakultet', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_fakultet', 'A', 6, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'galerija', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_galerija', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'galerija', 1, 'WebDiP2011_126', 'Galerija_FKIndex1', 1, 'Natjecaj_ID_natjecaj', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'komentar', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_komentar', 'A', 84, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'komentar', 1, 'WebDiP2011_126', 'Komentar_FKIndex1', 1, 'Natjecaj_ID_natjecaj', 'A', 14, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'komentar', 1, 'WebDiP2011_126', 'Komentar_FKIndex2', 1, 'Komentar_ID_komentar', 'A', 42, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'komentar', 1, 'WebDiP2011_126', 'Komentar_FKIndex3', 1, 'Korisnik_ID_korisnik', 'A', 12, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_natjecaj', 'A', 24, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'natjecaj', 1, 'WebDiP2011_126', 'Natjecaj_FKIndex1', 1, 'Fakultet_ID_fakultet', 'A', 8, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'ocjena', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_korisnik', 'A', 9, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'ocjena', 0, 'WebDiP2011_126', 'PRIMARY', 2, 'ID_natjecaj', 'A', 9, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_preporuka', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 1, 'WebDiP2011_126', 'PismoPreporuke_FKIndex1', 1, 'Korisnik_ID_korisnik', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 1, 'WebDiP2011_126', 'PismoPreporuke_FKIndex2', 1, 'Prijava_ID_prijava', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'portfelj', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_portfelj', 'A', 12, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'portfelj', 1, 'WebDiP2011_126', 'Portfelj_FKIndex1', 1, 'Korisnik_ID_korisnik', 'A', 12, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'prijava', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_prijava', 'A', 11, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'prijava', 1, 'WebDiP2011_126', 'Prijava_FKIndex1', 1, 'Portfelj_ID_portfelj', 'A', 11, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'prijava', 1, 'WebDiP2011_126', 'Prijava_FKIndex2', 1, 'Korisnik_ID_korisnik', 'A', 11, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'prijava', 1, 'WebDiP2011_126', 'Prijava_FKIndex3', 1, 'Natjecaj_ID_natjecaj', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'slika', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_slika', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'slika', 1, 'WebDiP2011_126', 'Slika_FKIndex1', 1, 'Galerija_ID_galerija', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'status_korisnika', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_status_Korisnika', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'WebDiP2011_126', 'tip_korisnika', 0, 'WebDiP2011_126', 'PRIMARY', 1, 'ID_tip_korisnika', 'A', 4, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `TABLE_TYPE` varchar(64) NOT NULL default '',
  `ENGINE` varchar(64) default NULL,
  `VERSION` bigint(21) default NULL,
  `ROW_FORMAT` varchar(10) default NULL,
  `TABLE_ROWS` bigint(21) default NULL,
  `AVG_ROW_LENGTH` bigint(21) default NULL,
  `DATA_LENGTH` bigint(21) default NULL,
  `MAX_DATA_LENGTH` bigint(21) default NULL,
  `INDEX_LENGTH` bigint(21) default NULL,
  `DATA_FREE` bigint(21) default NULL,
  `AUTO_INCREMENT` bigint(21) default NULL,
  `CREATE_TIME` datetime default NULL,
  `UPDATE_TIME` datetime default NULL,
  `CHECK_TIME` datetime default NULL,
  `TABLE_COLLATION` varchar(64) default NULL,
  `CHECKSUM` bigint(21) default NULL,
  `CREATE_OPTIONS` varchar(255) default NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 576, 0, 16661376, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=29127', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 423, 0, 16737264, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=39662', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 387, 0, 16733880, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=43351', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-06-17 20:01:05', '2012-06-17 20:01:05', NULL, 'utf8_general_ci', NULL, 'max_rows=8715', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2565, 0, 16757145, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6540', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 4637, 0, 16762755, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3618', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 425, 0, 16659575, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=39475', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-06-17 20:01:05', '2012-06-17 20:01:05', NULL, 'utf8_general_ci', NULL, 'max_rows=9172', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3656, 0, 16755448, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4588', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2179, 0, 16767405, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7699', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2679, 0, 16770540, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6262', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3641, 0, 16763164, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4607', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2504, 0, 16749256, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6700', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2372, 0, 16748692, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7073', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-06-17 20:01:05', '2012-06-17 20:01:05', NULL, 'utf8_general_ci', NULL, 'max_rows=7652', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 1986, 0, 16759854, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=8447', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-06-17 20:01:05', '2012-06-17 20:01:05', NULL, 'utf8_general_ci', NULL, 'max_rows=15073', ''),
(NULL, 'WebDiP2011_126', 'Korisnik', 'BASE TABLE', 'InnoDB', 10, 'Compact', 20, 819, 16384, 0, 49152, 0, 31, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'administrator_fakulteta', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 4785074604081151, 1024, 0, 1, '2012-06-14 22:38:36', '2012-06-14 22:38:36', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'WebDiP2011_126', 'dnevnik', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 46, 63, 2924, 281474976710655, 2048, 0, 47, '2012-06-15 22:53:20', '2012-06-17 18:12:59', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'WebDiP2011_126', 'dokument', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 0, 1, '2012-06-07 19:18:54', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'fakultet', 'BASE TABLE', 'InnoDB', 10, 'Compact', 6, 2730, 16384, 0, 0, 0, 6, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'galerija', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 0, 1, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'komentar', 'BASE TABLE', 'InnoDB', 10, 'Compact', 84, 195, 16384, 0, 49152, 0, 86, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'natjecaj', 'BASE TABLE', 'InnoDB', 10, 'Compact', 24, 682, 16384, 0, 16384, 0, 36, '2012-06-17 13:08:48', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'ocjena', 'BASE TABLE', 'InnoDB', 10, 'Compact', 9, 1820, 16384, 0, 0, 0, NULL, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'pismopreporuke', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 32768, 0, 1, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'portfelj', 'BASE TABLE', 'InnoDB', 10, 'Compact', 12, 1365, 16384, 0, 16384, 0, 13, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'prijava', 'BASE TABLE', 'InnoDB', 10, 'Compact', 11, 1489, 16384, 0, 49152, 0, 12, '2012-06-17 16:58:15', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'slika', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 0, 1, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'status_korisnika', 'BASE TABLE', 'InnoDB', 10, 'Compact', 4, 4096, 16384, 0, 0, 0, 5, '2012-06-07 19:18:55', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB'),
(NULL, 'WebDiP2011_126', 'tip_korisnika', 'BASE TABLE', 'InnoDB', 10, 'Compact', 4, 4096, 16384, 0, 0, 0, 5, '2012-06-14 22:45:16', NULL, NULL, 'utf8_general_ci', NULL, '', 'InnoDB free: 44032 kB');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'Korisnik', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'administrator_fakulteta', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'dnevnik', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'dokument', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'fakultet', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'galerija', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'komentar', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'natjecaj', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'ocjena', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'pismopreporuke', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'portfelj', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'prijava', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'slika', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'status_korisnika', 'PRIMARY KEY'),
(NULL, 'WebDiP2011_126', 'PRIMARY', 'WebDiP2011_126', 'tip_korisnika', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `TABLE_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) default NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL default '',
  `TRIGGER_NAME` varchar(64) NOT NULL default '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL default '',
  `EVENT_OBJECT_CATALOG` varchar(512) default NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL default '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL default '',
  `ACTION_ORDER` bigint(4) NOT NULL default '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL default '',
  `ACTION_TIMING` varchar(6) NOT NULL default '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL default '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL default '',
  `CREATED` datetime default NULL,
  `SQL_MODE` longtext NOT NULL,
  `DEFINER` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `TRIGGERS`
--


-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''WebDiP2011_126''@''localhost''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL default '',
  `IS_UPDATABLE` varchar(3) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default '',
  `SECURITY_TYPE` varchar(7) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Izbacivanje podataka za tablicu `VIEWS`
--

