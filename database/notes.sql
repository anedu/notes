-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 03 2019 г., 04:27
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `date`
--
CREATE DATABASE IF NOT EXISTS `date` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `date`;

-- --------------------------------------------------------

--
-- Структура таблицы `example`
--

CREATE TABLE `example` (
  `id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `holiday` varchar(355) NOT NULL,
  `file` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `example`
--

INSERT INTO `example` (`id`, `status`, `date`, `holiday`, `file`) VALUES
(41, 1, '2019-02-16', 'Сходить в спортзал', 'images/1.jpeg'),
(42, 1, '2019-02-20', 'Купить продукты', 'images/2.jpeg'),
(80, 1, '2019-03-13', 'Купить продукты', 'images/3.jpeg'),
(85, 0, '2019-05-03', 'Подготовить портфолио', 'images/1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `movies`
--

CREATE TABLE `movies` (
  `id` int(10) NOT NULL,
  `movie` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `movies`
--

INSERT INTO `movies` (`id`, `movie`) VALUES
(1, 'Клаустрофобы'),
(2, 'Лего. Фильм 2'),
(3, 'Спасти Ленинград'),
(4, 'Фаворитка'),
(5, 'ван гог. на пороге вечности'),
(6, 'Рассвет'),
(7, 'Зеленая книга'),
(8, 'Вернуть бена'),
(9, 'Стекло'),
(10, 'Белый парень рик');

-- --------------------------------------------------------

--
-- Структура таблицы `movie_theaters`
--

CREATE TABLE `movie_theaters` (
  `id` int(10) NOT NULL,
  `theaters` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `movie_theaters`
--

INSERT INTO `movie_theaters` (`id`, `theaters`) VALUES
(1, 'Лена'),
(2, 'Центральный'),
(3, 'Синема Центр'),
(4, 'Азия');

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--

CREATE TABLE `schedule` (
  `id` int(10) NOT NULL,
  `movies_id` int(10) NOT NULL,
  `movie_theaters_id` int(10) NOT NULL,
  `start_at` date NOT NULL,
  `ends_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schedule`
--

INSERT INTO `schedule` (`id`, `movies_id`, `movie_theaters_id`, `start_at`, `ends_at`) VALUES
(1, 1, 4, '2019-02-07', '2019-02-20'),
(2, 1, 1, '2019-02-07', '2019-02-17'),
(3, 1, 3, '2019-02-07', '2019-02-19'),
(4, 1, 2, '2019-02-07', '2019-02-13'),
(5, 10, 4, '2019-01-31', '2019-02-14'),
(6, 10, 2, '2019-01-31', '2019-02-07'),
(7, 8, 3, '2019-02-07', '2019-02-10'),
(8, 8, 1, '2019-02-07', '2019-02-23'),
(9, 7, 1, '2019-01-24', '2019-02-19'),
(10, 7, 3, '2019-01-24', '2019-02-09'),
(11, 7, 2, '2019-01-24', '2019-02-04'),
(12, 2, 4, '2019-02-07', '2019-02-20'),
(13, 2, 1, '2019-02-07', '2019-02-23'),
(14, 2, 3, '2019-02-07', '2019-03-06'),
(15, 2, 2, '2019-02-07', '2019-02-14'),
(16, 3, 4, '2019-02-07', '2019-02-23'),
(17, 3, 2, '2019-02-07', '2019-02-26'),
(18, 9, 4, '2019-01-17', '2019-01-31'),
(19, 9, 1, '2019-01-17', '2019-02-14'),
(20, 9, 3, '2019-01-17', '2019-01-24'),
(21, 9, 2, '2019-01-17', '2019-02-28'),
(22, 4, 4, '2019-01-31', '2019-02-21'),
(23, 4, 1, '2019-01-31', '2019-02-07'),
(24, 4, 3, '2019-01-31', '2019-02-19'),
(25, 4, 2, '2019-01-31', '2019-02-14'),
(26, 5, 4, '2019-02-07', '2019-02-14'),
(27, 5, 1, '2019-02-07', '2019-02-21'),
(28, 5, 3, '2019-02-07', '2019-02-18'),
(29, 5, 2, '2019-02-07', '2019-02-27'),
(30, 6, 4, '2019-01-31', '2019-02-19'),
(31, 6, 1, '2019-01-31', '2019-02-15'),
(32, 6, 3, '2019-01-31', '2019-02-18'),
(33, 6, 2, '2019-01-31', '2019-02-08');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `movie_theaters`
--
ALTER TABLE `movie_theaters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_theaters_id` (`movie_theaters_id`),
  ADD KEY `movies_id` (`movies_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `example`
--
ALTER TABLE `example`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT для таблицы `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `movie_theaters`
--
ALTER TABLE `movie_theaters`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`movie_theaters_id`) REFERENCES `movie_theaters` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
