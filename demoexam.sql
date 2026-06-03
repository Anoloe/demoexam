-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.4:3306
-- Время создания: Май 29 2026 г., 10:56
-- Версия сервера: 8.4.7
-- Версия PHP: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
CREATE DATABASE IF NOT EXISTS demoexam;USE demoexam;

--
-- База данных: `demoexam`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fullname`, `phone`, `email`, `login`, `password`, `is_admin`, `created_at`, `review`) VALUES
(1, 'in', '+7(123)-456-78-90', '123@mail.ru', 'Admin26', 'Demo20', 1, '2025-10-09 15:57:44', NULL),
(6, 'Alexsander Egorov', '+79003166636', 'sata@mail.ru', 'Santik', '12345678', 0, '2025-10-13 14:30:08', ''),
(7, 'йцукк', '+7(123)123-12-12', 'q@bk.ru', 'qwertyu', '12345678', 0, '2026-05-25 16:40:45', NULL),
(8, 'Вапрп павопаоп орпара', '+7(123)123-12-12', 'd@bk.ru', 'asdfgh', '12345678', 0, '2026-05-25 17:06:05', NULL),
(9, 'ываыар ваил валло', '+7(123)123-12-12', 'a@bk.ru', 'zxcvbn', '12345678', 0, '2026-05-27 10:41:12', NULL),
(10, 'ывп ывп ява', '+7(113)123-45-45', 'l@bk.ru', 'poiuyt', '12345678', 0, '2026-05-27 10:55:43', NULL),
(11, 'ывп ывп ява', '+7(113)123-45-45', 'v@bk.ru', 'lkjhgfd', '12345678', 0, '2026-05-27 10:58:34', NULL),
(12, 'ыаф рвар про', '+7(987)879-98-98', 'vb@bk.ru', 'plmokn', '12345678', 0, '2026-05-29 07:43:06', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
