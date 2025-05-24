-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2025 at 11:51 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(2, 'Wild Life', 'This is the description for wild life category'),
(4, 'Science &amp; Technology', 'This is the description or science and technology'),
(5, 'Uncategorized', 'This is the description for uncategorized category'),
(7, 'Art', 'This is the description for the art category'),
(8, 'Food', 'This is the description food category'),
(9, 'Travel', 'This is the description for travel category\r\n'),
(10, 'Animals', 'Description for animals category');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int UNSIGNED DEFAULT NULL,
  `author_id` int UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_blog_category` (`category_id`),
  KEY `FK_blog_author` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(14, 'Future Frontiers: Exploring Science &amp; Technology', '\r\n\r\n\r\n\r\n**Welcome to *Future Frontiers*&mdash;your gateway to the cutting edge of discovery.**\r\n\r\nIn a world defined by rapid change and boundless curiosity, science and technology aren&#039;t just shaping the future&mdash;they *are* the future. From revolutionary advances in artificial intelligence and biotechnology to the mysteries of space exploration and the quantum world, we are standing at the edge of a new era. At *Future Frontiers*, we aim to bring you along for the journey.\r\n\r\n### **Why Science and Technology Matter More Than Ever**\r\n\r\nTechnology has transformed nearly every aspect of our lives. Smartphones connect us across continents. Smart sensors help farmers grow food more efficiently. AI is diagnosing diseases with astonishing accuracy. And meanwhile, telescopes are capturing the first images of galaxies born just after the Big Bang.\r\n\r\nBut these changes are more than headlines&mdash;they&#039;re signals of a deeper transformation underway. We&#039;re moving toward a world that demands scientific literacy, ethical innovation, and a global conversation about where we&#039;re headed.\r\n\r\n### **What You Can Expect From This Blog**\r\n\r\nAt *Future Frontiers*, we&rsquo;ll cover:\r\n\r\n* **Emerging Technologies**: From quantum computing and clean energy to space tech and medical robotics.\r\n* **Scientific Breakthroughs**: The latest in physics, biology, chemistry, and beyond&mdash;made easy to understand.\r\n* **Interviews and Expert Insights**: Conversations with scientists, engineers, and thought leaders pushing boundaries.\r\n* **Ethics &amp; Impact**: How innovation affects society, privacy, the environment, and the human experience.\r\n* **Futurism &amp; Speculation**: What could life look like 10, 20, or even 100 years from now?\r\n\r\n### **The Future Belongs to the Curious**\r\n\r\nWhether you&#039;re a student, a professional, or simply someone fascinated by the possibilities ahead, this space is for you. We&rsquo;ll break down complex topics, highlight visionary thinkers, and dive into the science stories that matter most.\r\n\r\nSo, buckle up&mdash;because the frontier is vast, and the future is already unfolding.\r\n\r\n\r\n\r\n', '1747790433Future Frontiers Exploring Science and Technology.jpg', '2025-05-21 01:20:33', 4, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(12, 'hello', 'world', '986857', 'hello@gmail.com', '$2y$10$oTvSp1Ep/JBMURx1dow4iejMwtq/6X.s5blg7H3umvseQnnSKWvVC', '1747789716images.jpg', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
