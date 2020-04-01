-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Oca 2020, 10:00:00
-- Sunucu sürümü: 10.4.8-MariaDB
-- PHP Sürümü: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `comicman2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comics`
--

CREATE TABLE `comics` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `content` text NOT NULL,
  `brand` text NOT NULL,
  `type` text NOT NULL,
  `characters` text NOT NULL,
  `tags` text NOT NULL,
  `image` blob NOT NULL,
  `imgname` text NOT NULL,
  `crname` text NOT NULL,
  `authorid` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lists`
--

CREATE TABLE `lists` (
  `id` int(11) NOT NULL,
  `usernameid` int(11) NOT NULL,
  `username` text NOT NULL,
  `comicid` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `type` text NOT NULL,
  `image` blob NOT NULL,
  `imgname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `lists`
--

INSERT INTO `lists` (`id`, `usernameid`, `username`, `comicid`, `title`, `content`, `type`, `image`, `imgname`) VALUES
(3, 3, 'Berkay', 9, 'sdfgasdgsadgsadgggg', 'sadgasdgasdgsadgas', 'Comics', 0x3c46696c6553746f726167653a202734636363386131386339393835613262336339653838623961316563333337302e6a706727202827696d6167652f6a70656727293e, '4ccc8a18c9985a2b3c9e88b9a1ec3370.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `moderators`
--

CREATE TABLE `moderators` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `moderators`
--

INSERT INTO `moderators` (`id`, `username`, `password`) VALUES
(1, '193782465@0', '147852369@1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `bansstatus` text NOT NULL,
  `useremail` text NOT NULL,
  `warningcount` int(11) NOT NULL,
  `reportcount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reportscomics`
--

CREATE TABLE `reportscomics` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `useremail` text NOT NULL,
  `reportcount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `userbans`
--

CREATE TABLE `userbans` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `bansstatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `content` text NOT NULL,
  `image` blob NOT NULL,
  `imgname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `surname`, `email`, `password`, `content`, `image`, `imgname`) VALUES
(3, 'Berkay', 'Berkay', 'Kaya', 'berkay_2oo3@hotmail.com', '$5$rounds=535000$nwlugxj4UW5WC84O$yjKO181r.dI47DAhQG3CjHJYGK8LoM.4KvwfZ0UeA4D', 'COMICS MAN\' in kurucusu ve sahiyim.\r\nI am founder and ownerof COMICS MAN.', 0x3c46696c6553746f726167653a202779622e504e4727202827696d6167652f706e6727293e, 'yb.PNG');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `moderators`
--
ALTER TABLE `moderators`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reportscomics`
--
ALTER TABLE `reportscomics`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `userbans`
--
ALTER TABLE `userbans`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `comics`
--
ALTER TABLE `comics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `lists`
--
ALTER TABLE `lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `moderators`
--
ALTER TABLE `moderators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `reportscomics`
--
ALTER TABLE `reportscomics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `userbans`
--
ALTER TABLE `userbans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
