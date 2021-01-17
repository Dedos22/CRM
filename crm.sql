-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Oca 2021, 13:00:47
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `crm`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `a`
--

CREATE TABLE `a` (
  `id` int(11) NOT NULL,
  `String` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `görev`
--

CREATE TABLE `görev` (
  `görev_id` int(11) NOT NULL,
  `başlama_tarihi` date NOT NULL,
  `bitiş_tarihi` date NOT NULL,
  `görevli_personel` varchar(30) NOT NULL,
  `ilgili_müşteri` varchar(30) NOT NULL,
  `öncelik` varchar(20) NOT NULL,
  `görev_tipi` text NOT NULL,
  `açıklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(30) NOT NULL,
  `şifre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteriler`
--

CREATE TABLE `musteriler` (
  `m_isim` varchar(30) NOT NULL,
  `m_soyisim` varchar(30) NOT NULL,
  `m_tel` int(11) NOT NULL,
  `m_eposta` text NOT NULL,
  `m_adres` text NOT NULL,
  `m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `musteriler`
--

INSERT INTO `musteriler` (`m_isim`, `m_soyisim`, `m_tel`, `m_eposta`, `m_adres`, `m_id`) VALUES
('demetrrrrrrrrrr', 'düz', 0, 'k&#305;r&#351;ehir', 'demetduz2696@gmail.com', 2),
('mlÅlÅ', 'lÃ§Ã¶mÅlÃ§', 0, '0k', 'demetduz2696@gmail.com', 3),
('ooooooooooooo', 'oooooooooooooo', 0, '', '', 5),
('w', 'w', 4685, 'ws', 'wqed', 6),
('w', 'w', 4685, 'ws', 'wqed', 7),
('demet', 'dÃ¼z', 2542, 'demetduz@gmail.com', 'joklÅÃ§Ã¶.', 8),
('demet', 'dÃ¼zzzzz', 789456, 'demetduz@gmail.com', 'kÄ±rsehir', 9),
('ol', 'ol', 45, 'ol@gmail.com', 'dfgd', 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

CREATE TABLE `personel` (
  `p_id` int(11) NOT NULL,
  `p_isim` text NOT NULL,
  `p_soyisim` text NOT NULL,
  `p_tel` char(11) NOT NULL,
  `p_adres` text NOT NULL,
  `p_eposta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`p_id`, `p_isim`, `p_soyisim`, `p_tel`, `p_adres`, `p_eposta`) VALUES
(14, 'derya', 'duz', '54656532', 'ÃÂ°stanbul', 'demet@gmail.com'),
(15, 'demet', 'ayd', '54656532', 'ÃÂ°stanbul', 'demet@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `ü_isim` varchar(30) NOT NULL,
  `fiyat` int(11) NOT NULL,
  `marka` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `detaylar` text NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`ü_isim`, `fiyat`, `marka`, `model`, `detaylar`, `u_id`) VALUES
('Mijia Robot Vacuum Mop Pro Cle', 4000, 'Xiaomiii', 'Beyaz MOPPRO-B', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sipariş`
--

CREATE TABLE `sipariş` (
  `sipariş_id` int(11) NOT NULL,
  `ü_adı` varchar(30) NOT NULL,
  `adet` int(11) NOT NULL,
  `fiyat` float NOT NULL,
  `m_isim` varchar(30) NOT NULL,
  `m_soyisim` varchar(30) NOT NULL,
  `m_eposta` text NOT NULL,
  `m_adres` text NOT NULL,
  `m_tel` varchar(11) NOT NULL,
  `p_isim` varchar(30) NOT NULL,
  `tutar` float NOT NULL,
  `sipariş_tarihi` date NOT NULL,
  `durum` text NOT NULL,
  `açıklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `todolist`
--

CREATE TABLE `todolist` (
  `görev` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `todolist`
--

INSERT INTO `todolist` (`görev`, `id`) VALUES
('demetdemet', 11),
('gÃ¶rev1', 14);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`email`, `password`) VALUES
('demet', '123'),
('demet', '123'),
('d', '456'),
('d', '456'),
('demet', '456'),
('demet', '456'),
('demet', '456'),
('demet', '456');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `görev`
--
ALTER TABLE `görev`
  ADD PRIMARY KEY (`görev_id`);

--
-- Tablo için indeksler `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Tablo için indeksler `musteriler`
--
ALTER TABLE `musteriler`
  ADD PRIMARY KEY (`m_id`);

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`p_id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`u_id`);

--
-- Tablo için indeksler `sipariş`
--
ALTER TABLE `sipariş`
  ADD PRIMARY KEY (`sipariş_id`);

--
-- Tablo için indeksler `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `görev`
--
ALTER TABLE `görev`
  MODIFY `görev_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `musteriler`
--
ALTER TABLE `musteriler`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `personel`
--
ALTER TABLE `personel`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sipariş`
--
ALTER TABLE `sipariş`
  MODIFY `sipariş_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
