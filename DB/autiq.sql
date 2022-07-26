-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 09:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autiq`
--
CREATE DATABASE IF NOT EXISTS `autiq` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `autiq`;

-- --------------------------------------------------------

--
-- Table structure for table `learn`
--

CREATE TABLE `learn` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `catagory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learn`
--

INSERT INTO `learn` (`id`, `name`, `image`, `catagory`) VALUES
(5, 'Red', 'Red.jpg', '1'),
(6, 'Green', 'Green.jpg', '1'),
(7, 'Blue', 'Blue.png', '1'),
(8, 'Yellow', 'Yellow.jpg', '1'),
(9, 'Pink', 'Pink.png', '1'),
(10, 'Purple', 'Purple.png', '1'),
(11, 'Apple', 'Apple.jpg', '2'),
(12, 'Grape', 'Grape.jpg', '2'),
(13, 'Jackfruit', 'Jackfruit.jpg', '2'),
(14, 'Mango', 'Mango.jpg', '2'),
(15, 'Orange', 'Orange.jpg', '2'),
(16, 'Papaya', 'Papaya.png', '2'),
(17, 'Magpie', 'Magpie Bird.jpg', '3'),
(18, 'Parrot', 'Parrot Bird.jpg', '3'),
(19, 'Peacock', 'Peacock Bird.jpg', '3'),
(20, 'Kingfisher', 'Kingfisher bird.jpg', '3'),
(21, 'Shalik', 'Shalik Bird.jpg', '3'),
(22, 'Cow', 'Domestic-Animals-Flashcards_page-0003.jpg', '4'),
(23, 'Cat', 'Domestic-Animals-Flashcards_page-0002.jpg', '4'),
(24, 'Camel', 'Domestic-Animals-Flashcards_page-0001.jpg', '4'),
(25, 'Dog', 'Domestic-Animals-Flashcards_page-0004.jpg', '4'),
(26, 'Donkey', 'Domestic-Animals-Flashcards_page-0005.jpg', '4'),
(27, 'Duck', 'Domestic-Animals-Flashcards_page-0006.jpg', '4'),
(28, 'Goat', 'Domestic-Animals-Flashcards_page-0007.jpg', '4'),
(29, 'Goose', 'Domestic-Animals-Flashcards_page-0008.jpg', '4'),
(30, 'Hen', 'Domestic-Animals-Flashcards_page-0009.jpg', '4'),
(31, 'Horse', 'Domestic-Animals-Flashcards_page-0010.jpg', '4'),
(32, 'Monkey', 'Domestic-Animals-Flashcards_page-0011.jpg', '4'),
(33, 'Rabbit', 'Domestic-Animals-Flashcards_page-0013.jpg', '4'),
(34, 'Rooster', 'Domestic-Animals-Flashcards_page-0014.jpg', '4'),
(35, 'Sheep', 'Domestic-Animals-Flashcards_page-0015.jpg', '4'),
(36, 'Turkey', 'Domestic-Animals-Flashcards_page-0016.jpg', '4'),
(37, 'Crane', 'Birds-Flashcards_page-0002.jpg', '3'),
(38, 'Crow', 'Birds-Flashcards_page-0003.jpg', '3'),
(39, 'Dove', 'Birds-Flashcards_page-0004.jpg', '3'),
(40, 'Myna', 'Birds-Flashcards_page-0011.jpg', '3'),
(41, 'Owl', 'Birds-Flashcards_page-0013.jpg', '3'),
(42, 'Pigeon', 'Birds-Flashcards_page-0017.jpg', '3'),
(43, 'Sparrow', 'Birds-Flashcards_page-0020.jpg', '3'),
(44, 'WoodPecker', 'Birds-Flashcards_page-0023.jpg', '3'),
(45, 'Cat', 'Cat.jpg', '5'),
(46, 'Elephant', 'Elephant.jpg', '5'),
(47, 'Deer', 'Deer.jpg', '5'),
(48, 'Tiger', 'Tiger.jpg', '5'),
(49, 'Lion', 'Lion.jpg', '5'),
(50, 'Buffalo', 'Wild-Animals-Flashcards_page-0003.jpg', '5'),
(51, 'Cheetah', 'Wild-Animals-Flashcards_page-0004.jpg', '5'),
(52, 'Fox', 'Wild-Animals-Flashcards_page-0006.jpg', '5'),
(53, 'Giraffe', 'Wild-Animals-Flashcards_page-0007.jpg', '5'),
(54, 'Kangaroo', 'Wild-Animals-Flashcards_page-0010.jpg', '5'),
(56, 'Sunny', 'Weather-Flashcards_page-0001.jpg', '6'),
(57, 'Windy', 'Weather-Flashcards_page-0002.jpg', '6'),
(58, 'Stormy', 'Weather-Flashcards_page-0003.jpg', '6'),
(59, 'Partly Cloud', 'Weather-Flashcards_page-0004.jpg', '6'),
(60, 'Cloudy', 'Weather-Flashcards_page-0005.jpg', '6'),
(61, 'Rainy', 'Weather-Flashcards_page-0006.jpg', '6'),
(62, 'Water Lily', 'Water Lily.jpg', '7'),
(63, 'Sunflower', 'Sunflower.jpg', '7'),
(64, 'Rose', 'Rose.jpg', '7'),
(65, 'Kodom', 'Kodom Flower.jpg', '7'),
(66, 'Marigold', 'Marigold flower.jpg', '7'),
(67, 'Red Hibiscus', 'Red Hibiscus flower.jpg', '7'),
(68, 'Beans', 'Flashcards-Veges-1_page-0002.jpg', '8'),
(69, 'Beetroot', 'Flashcards-Veges-1_page-0003.jpg', '8'),
(70, 'Bitter Gourd', 'Flashcards-Veges-1_page-0004.jpg', '8'),
(71, 'Broccoli', 'Flashcards-Veges-1_page-0006.jpg', '8'),
(72, 'Carrot', 'Flashcards-Veges-1_page-0008.jpg', '8'),
(73, 'Capsicum', 'Flashcards-Veges-1_page-0009.jpg', '8'),
(74, 'Chilli', 'Flashcards-Veges-1_page-0011.jpg', '8'),
(75, 'Corn', 'Flashcards-Veges-1_page-0013.jpg', '8'),
(76, 'Drumstick', 'Flashcards-Veges-1_page-0015.jpg', '8'),
(77, 'Eggplant', 'Flashcards-Veges-1_page-0016.jpg', '8'),
(78, 'Ginger', 'Flashcards-Veges-1_page-0017.jpg', '8'),
(79, 'Onion', 'Flashcards-Veges-1_page-0021.jpg', '8'),
(80, 'Potato', 'Flashcards-Veges-1_page-0023.jpg', '8'),
(81, 'Tomato', 'Flashcards-Veges-1_page-0029.jpg', '8'),
(82, 'Rickshaw', 'Rickshaw.jpg', '9'),
(83, 'Autorickshaw', 'Autorickshaw.jpg', '9'),
(84, 'Car', 'Car.jpg', '9'),
(85, 'Bus', 'Bus_.jpg', '9'),
(86, 'Truck', 'Truck.jpg', '9'),
(87, 'Aeroplane', 'Vechicles-Flashcards_page-0001.jpg', '9'),
(88, 'Ambulance', 'Vechicles-Flashcards_page-0002.jpg', '9'),
(89, 'Bicycle', 'Vechicles-Flashcards_page-0004.jpg', '9'),
(90, 'Boat', 'Vechicles-Flashcards_page-0005.jpg', '9'),
(91, 'Helicopter', 'Vechicles-Flashcards_page-0010.jpg', '9'),
(92, 'Motorbike', 'Vechicles-Flashcards_page-0012.jpg', '9'),
(93, 'Train', 'Vechicles-Flashcards_page-0016.jpg', '9'),
(94, 'Hair', 'Flashcard-Parts-of-the-Body_page-0001.jpg', '10'),
(95, 'Eye', 'Flashcard-Parts-of-the-Body_page-0002.jpg', '10'),
(96, 'Nose', 'Flashcard-Parts-of-the-Body_page-0003.jpg', '10'),
(97, 'Ear', 'Flashcard-Parts-of-the-Body_page-0004.jpg', '10'),
(98, 'Teeth', 'Flashcard-Parts-of-the-Body_page-0005.jpg', '10'),
(99, 'Tongue', 'Flashcard-Parts-of-the-Body_page-0006.jpg', '10'),
(100, 'Lip', 'Flashcard-Parts-of-the-Body_page-0007.jpg', '10'),
(101, 'Mouth', 'Flashcard-Parts-of-the-Body_page-0008.jpg', '10'),
(102, 'Head', 'Flashcard-Parts-of-the-Body_page-0009.jpg', '10'),
(103, 'Face', 'Flashcard-Parts-of-the-Body_page-0010.jpg', '10'),
(104, 'Neck', 'Flashcard-Parts-of-the-Body_page-0011.jpg', '10'),
(105, 'Shoulder', 'Flashcard-Parts-of-the-Body_page-0012.jpg', '10'),
(106, 'Elbow', 'Flashcard-Parts-of-the-Body_page-0013.jpg', '10'),
(107, 'Finger', 'Flashcard-Parts-of-the-Body_page-0014.jpg', '10'),
(108, 'Hand', 'Flashcard-Parts-of-the-Body_page-0015.jpg', '10'),
(109, 'Stomach', 'Flashcard-Parts-of-the-Body_page-0016.jpg', '10'),
(110, 'Thigh', 'Flashcard-Parts-of-the-Body_page-0017.jpg', '10'),
(111, 'Knee', 'Flashcard-Parts-of-the-Body_page-0018.jpg', '10'),
(112, 'Leg', 'Flashcard-Parts-of-the-Body_page-0019.jpg', '10'),
(113, 'Ankle', 'Flashcard-Parts-of-the-Body_page-0020.jpg', '10'),
(114, 'Toe', 'Flashcard-Parts-of-the-Body_page-0021.jpg', '10'),
(115, 'Feet', 'Flashcard-Parts-of-the-Body_page-0022.jpg', '10');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `point` varchar(10) NOT NULL,
  `catagory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `image`, `option1`, `option2`, `option3`, `answer`, `point`, `catagory`) VALUES
(1, 'BlueColor.jpg', 'Orange', 'Yellow', 'Blue', '3', '5', '1'),
(3, 'redColor.png', 'Orange', 'Yellow', 'Red', '3', '5', '1'),
(4, 'Green.jpg', 'Orange', 'Yellow', 'Green', '3', '10', '1'),
(5, 'Yellow.jpg', 'Orange', 'Yellow', 'Red', '2', '10', '1'),
(6, 'Purple.png', 'Purple', 'Yellow', 'Red', '1', '10', '1'),
(7, 'Apple.jpg', 'Apple', 'Orange', 'Mango', '1', '10', '2'),
(8, 'Orange.jpg', 'Apple', 'Orange', 'Mango', '2', '10', '2'),
(9, 'Jackfruit.jpg', 'Apple', 'Orange', 'Jackfruit', '3', '10', '2'),
(10, 'Mango.jpg', 'Apple', 'Banana', 'Mango', '3', '10', '2'),
(11, 'Grape.jpg', 'Grape', 'Orange', 'Jackfruit', '1', '10', '2'),
(16, 'Mango.jpg', 'Mango', 'Hand', 'Jackfruit', '1', '10', '4'),
(17, 'Bus_.jpg', 'Car', 'Bus', 'Track', '2', '15', '4'),
(18, 'Water Lily.jpg', 'Rose', 'Water Lily', 'Orange', '2', '15', '4'),
(20, 'Green.jpg', 'Orange', 'Green', 'Red', '2', '10', '4'),
(21, 'Magpie Bird.jpg', 'Magpie', 'Crow', 'Myna', '1', '15', '4'),
(25, 'Ear.jpg', 'Ear', 'Nose', 'Hair', '1', '10', '3'),
(26, 'Eye.jpg', 'Eye', 'Finger', 'Leg', '1', '10', '3'),
(27, 'Face.jpg', 'Hand', 'Face', 'Finger', '2', '10', '3'),
(28, 'Hair.jpg', 'Hair', 'Leg', 'Nose', '1', '10', '3'),
(29, 'Leg.jpg', 'Leg', 'Nose', 'Hair', '1', '10', '4'),
(30, 'Finger.jpg', 'Finger', 'Nose', 'Leg', '1', '10', '4'),
(31, 'sunny.jpg', 'Rain', 'Wind', 'Sunny', '3', '10', '4'),
(32, 'pigion.jpg', 'Pigeon', 'Crow', 'owl', '1', '15', '4'),
(33, 'tomato.jpg', 'Onion', 'Tomato', 'Mango', '2', '15', '4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `role`) VALUES
(7, 'mehedi', '$2y$10$hZJYrx5orZMvZUeHGQDke.d1uMnOQGLsDNFonbu9ul/OlwQ1dsJbS', 'USER'),
(8, 'admin', '$2y$10$hZJYrx5orZMvZUeHGQDke.d1uMnOQGLsDNFonbu9ul/OlwQ1dsJbS', 'ADMIN'),
(9, 'hasan', '$2a$10$YmhQDQKKyBjckYFrIxmeyON9VoDseX/4GCB1w6ppuCvK6qRd0LZam', 'USER'),
(10, 'karim', '$2a$10$Bh77j3kTP2TpPlBgT98Qjuy/TNGzK3DSZavGLl1medqzMu.T8ifHm', 'USER'),
(11, 'Suchana_Mehedi', '$2a$10$c8CrqJiuRqN8RTioD126Gu9MEHA8.Xg/LayMgAp4kSu8HnOkXWNbu', 'USER'),
(12, 'Nurunabi', '$2a$10$c/xQEUgFt2W4xY7NdeZkI.LlUTzD4N2xQ22BbCpdS8zsWnO.HXbxW', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `learn`
--
ALTER TABLE `learn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `learn`
--
ALTER TABLE `learn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
