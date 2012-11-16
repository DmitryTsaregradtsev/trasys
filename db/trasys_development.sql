-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 16 2012 г., 16:16
-- Версия сервера: 5.5.28
-- Версия PHP: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `trasys_development`
--

-- --------------------------------------------------------

--
-- Структура таблицы `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20121115162427'),
('20121115163000');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `reply` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `name`, `email`, `department`, `subject`, `body`, `status`, `owner`, `reply`, `created_at`, `updated_at`) VALUES
(1, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Information Security', 'Hello World', 'I want to ask you some questions', 'On Hold', 'Information Security', 'Don''t worry about your personal information, we ...', '2012-11-16 12:16:46', '2012-11-16 12:29:17'),
(2, 'Ann', 'ann@gmail.com', 'Financial Department', 'Hello. I want to ask you', 'How can I do the next...', '', '', '', '2012-11-16 12:17:10', '2012-11-16 13:48:59'),
(3, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Human Resources', 'Test', 'Can I get the feedback of my test?', 'Waiting for Staff Response', NULL, NULL, '2012-11-16 13:01:56', '2012-11-16 13:01:56'),
(4, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Financial Department', 'Payment method', 'How can I get my earned money?', 'Waiting for Staff Response', NULL, NULL, '2012-11-16 13:03:58', '2012-11-16 13:03:58'),
(5, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Information Security', 'Lost information', 'I lost my password from email. Is it ...?', 'Waiting for Staff Response', NULL, NULL, '2012-11-16 13:12:36', '2012-11-16 13:12:36'),
(6, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Information Security', 'I need help', 'Can you, please, help to ...', 'Waiting for Staff Response', NULL, NULL, '2012-11-16 13:16:31', '2012-11-16 13:16:31'),
(7, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Call Center Department', 'Mobile number', 'Hello, my mobile number was blocked ...', 'Waiting for Staff Response', NULL, NULL, '2012-11-16 13:36:19', '2012-11-16 13:36:19'),
(8, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Call Center Department', 'Mobile number', 'Hello, my mobile number was blocked ...', 'Completed', 'Call Center Department', 'We have unblocked it !', '2012-11-16 13:36:39', '2012-11-16 13:44:30'),
(9, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Call Center Department', 'Internet', 'I can''t use internet on my mobile...', 'Completed', 'Financial Department', 'We have fixed some bugs', '2012-11-16 13:41:39', '2012-11-16 13:43:21'),
(10, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Call Center Department', 'Bonuses', 'This month i haven''t got any bonuses on my ...', 'Waiting for Staff Response', NULL, NULL, '2012-11-16 13:45:54', '2012-11-16 13:45:54'),
(11, 'Dmitry', 'dmitriy.tsaregradtsev@gmail.com', 'Call Center Department', 'Hello', 'Hello World! ', 'Waiting for Staff Response', NULL, NULL, '2012-11-16 13:51:54', '2012-11-16 13:51:54');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '2012-11-16 12:16:13', '2012-11-16 12:16:13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
