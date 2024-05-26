-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 12:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@mail.com', '', '2024-05-24 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Yorkshire Lamb Patties', 'Lamb patties which melt in your mouth, and are quick and easy to make. Served hot with a crisp salad.', 14.00, '62908867a48e4.jpg'),
(2, 1, 'Lobster Thermidor', 'Lobster Thermidor is a French dish of lobster meat cooked in a rich wine sauce, stuffed back into a lobster shell, and browned.', 36.00, '629089fee52b9.jpg'),
(3, 4, 'Chicken Madeira', 'Chicken Madeira, like Chicken Marsala, is made with chicken, mushrooms, and a special fortified wine. But, the wines are different;', 23.00, '62908bdf2f581.jpg'),
(4, 1, 'Stuffed Jacket Potatoes', 'Deep fry whole potatoes in oil for 8-10 minutes or coat each potato with little oil. Mix the onions, garlic, tomatoes and mushrooms. Add yoghurt, ginger, garlic, chillies, coriander', 8.00, '62908d393465b.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. Garnish each with remaining tablespoon parsley.', 21.00, '606d7491a9d13.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole. Everyone will love it\'s fluffy, cheesy.', 5.00, '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', 8.00, '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 11.00, '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', 5.00, '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', 7.00, '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', 6.00, '606d75ce105d0.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 11.00, '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 11.00, '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', 9.00, '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', 6.00, '606d76ad0c0cb.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 10.00, '606d76eedbb99.jpg'),
(17, 3, 'Pizza Tunisian', 'Indulge in our Pizza Tunisian, a perfect blend of spicy Tunisian sausage, fresh bell peppers, and rich mozzarella cheese. Topped with tangy tomato sauce and a hint of harissa, this pizza brings the vibrant flavors of Tunis', 10.00, '6653039a26f84.jpg'),
(18, 2, 'Couscous Tunisian', 'Savor our Couscous Tunisian, a traditional dish featuring fluffy couscous, tender lamb, and a medley of fresh vegetables. Infused with aromatic spices and garnished with chickpeas and raisins, this hearty meal offers an au', 15.00, '6653046f4a2fd.jpg'),
(19, 4, 'Chakchouka Tunisian', 'Enjoy our Chakchouka Tunisian, a flavorful dish of poached eggs simmered in a rich, spicy tomato and bell pepper sauce. Enhanced with onions, garlic, and traditional Tunisian spices, this hearty and aromatic meal brings a ', 15.00, '665304ad27f84.jpg'),
(20, 2, 'Kafteji Tunisian', 'Delight in our Kafteji Tunisian, a vibrant and savory mix of fried vegetables, including tomatoes, peppers, zucchini, and potatoes, all topped with a perfectly fried egg. Seasoned with aromatic Tunisian spices, this dish o', 10.00, '665304e75ce55.jpg'),
(21, 1, 'Mechouia-Salad', 'Relish our Mechouia Salad Tunisian, a refreshing blend of grilled peppers, tomatoes, and onions, finely chopped and mixed with olive oil, garlic, and Tunisian spices. Garnished with tuna, olives, and hard-boiled eggs, this', 20.00, '6653052f6f165.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2024-05-26 09:59:18'),
(2, 3, 'in process', 'none', '2024-05-26 09:59:18'),
(3, 2, 'closed', 'thank you for your order!', '2024-05-26 09:59:18'),
(4, 3, 'closed', 'none', '2024-05-26 09:59:18'),
(5, 4, 'in process', 'none', '2024-05-26 09:59:18'),
(6, 1, 'rejected', 'none', '2024-05-26 09:59:18'),
(7, 7, 'in process', 'none', '2024-05-26 10:00:24'),
(8, 8, 'in process', 'none', '2024-05-26 10:00:24'),
(9, 9, 'rejected', 'thank you', '2022-05-27 10:00:24'),
(10, 7, 'closed', 'thank you for your ordering with us', '2024-05-25 12:24:42'),
(11, 8, 'closed', 'thanks ', '2024-05-25 12:24:42'),
(12, 5, 'closed', 'none', '2024-05-25 12:24:42'),
(13, 10, 'closed', 'f&ag&a', '2024-05-25 12:24:42'),
(14, 12, 'in process', 'On the way', '2024-05-25 13:30:23'),
(15, 13, 'rejected', 'Cancelled', '2024-05-26 09:58:21'),
(16, 14, 'closed', 'D', '2024-05-26 09:58:40'),
(17, 15, 'in process', 'O', '2024-05-26 09:58:55'),
(18, 16, 'in process', 'o', '2024-05-26 09:59:09'),
(19, 17, 'closed', 'd', '2024-05-26 09:59:18'),
(20, 18, 'rejected', 'c', '2024-05-26 09:59:27'),
(21, 19, 'closed', 'd', '2024-05-26 09:59:36'),
(22, 20, 'in process', 'o', '2024-05-26 10:00:05'),
(23, 21, 'rejected', 'C', '2024-05-26 10:00:17'),
(24, 22, 'rejected', 'C', '2024-05-26 10:00:24'),
(25, 23, 'closed', 'D', '2024-05-26 10:00:42'),
(26, 24, 'closed', 'D', '2024-05-26 10:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Dar El Jeld Restaurant', 'dareljeldrestaurant@mail.com', '+216 71 560 916', 'https://www.dareljeld.com/gastronomie', '6am', '8pm', '24hr-x7', '5 – 10 Rue Dar El Jeld 5 – 10 Rue Dar El Jeld, Tunis 1006 Tunisia\r\n', '6652fd7039f96.jpg', '2024-05-24 09:14:24'),
(2, 1, 'El Ali', 'elali@gmail.com', '+216 55 559 357', 'https://www.facebook.com/ElAliRestoEtCafeCulturel/', '7am', '8pm', 'mon-sat', '45 Bis Rue Jemaa Zitouna La Medina, Tunis 1006 Tunisia\r\n', '6652fd055ad3f.jpg', '2024-05-24 09:12:37'),
(3, 2, 'Bella Napoli', 'nanxiangbao45@mail.com', '+216 24 164 164', 'https://www.facebook.com/bellanapolimarsa/', '10am', '8pm', 'mon-sat', 'La Marsa 2070 Tunisia\r\n', '6652fcbd8b56c.jpg', '2024-05-24 09:11:25'),
(4, 1, 'El Mida', 'hbg@mail.com', '+216 25 143 620', 'https://www.facebook.com/elmidamarsa', '8am', '8pm', 'mon-sat', '3 Rue des Oeillets, La Marsa 2070 Tunisia\r\n', '6652fc6a111d6.jpg', '2024-05-24 09:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2024-05-23 08:07:35'),
(2, 'Italian', '2024-04-23 08:45:23'),
(3, 'Chinese', '2024-04-23 08:45:25'),
(4, 'American', '2024-04-24 08:45:28'),
(5, 'Seafood', '2024-05-24 09:18:26'),
(6, 'Tunisian', '2024-05-24 09:18:38'),
(7, 'Middle Eastern', '2024-05-24 09:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(2, 'harry', 'Harry', 'Holt', 'harryh@mail.com', '3578545458', 'bc28715006af20d0e961afd053a984d9', '33 Stadium Drive', 1, '2024-05-25 08:41:07'),
(3, 'james', 'James', 'Duncan', 'james@mail.com', '0258545696', '58b2318af54435138065ee13dd8bea16', '67 Hiney Road', 1, '2024-05-25 08:41:37'),
(4, 'christine', 'Christine', 'Moore', 'christine@mail.com', '7412580010', '5f4dcc3b5aa765d61d8327deb882cf99', '114 Test Address', 1, '2024-05-25 05:14:42'),
(5, 'scott', 'Scott', 'Miller', 'scott@mail.com', '7896547850', '202cb962ac59075b964b07152d234b70', '63 Charack Road', 1, '2024-05-25 09:53:33'),
(6, 'liamoore', 'Liam', 'Moore', 'liamoore@mail.com', '7896969696', '202cb962ac59075b964b07152d234b70', '122 Bleck Street', 1, '2024-05-25 09:56:52'),
(7, 'mejri', 'Aziz', 'Mejri', 'azizmejri939@gmail.com', '1458965547', '202cb962ac59075b964b07152d234b70', '23 rue CITE ESSALMA ZAHROUNI', 1, '2024-05-26 09:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(10, 7, 'Lobster Thermidor', 1, 36.00, 'closed', '2024-05-23 12:24:42'),
(12, 7, 'Mac N Cheese Bites', 1, 9.00, 'in process', '2024-05-23 13:30:23'),
(13, 2, 'Mechouia-Salad', 2, 20.00, 'rejected', '2024-05-24 09:58:21'),
(14, 2, 'Pizza Tunisian', 5, 10.00, 'closed', '2024-05-24 09:58:40'),
(15, 5, 'Chakchouka Tunisian', 1, 15.00, 'in process', '2024-05-26 09:58:55'),
(16, 5, 'Pizza Tunisian', 1, 10.00, 'in process', '2024-05-25 09:59:09'),
(17, 3, 'Kafteji Tunisian', 2, 10.00, 'closed', '2024-05-25 09:59:18'),
(18, 3, 'Couscous Tunisian', 1, 15.00, 'rejected', '2024-05-25 09:59:27'),
(19, 3, 'Vegetable Fried Rice', 1, 5.00, 'closed', '2024-05-26 09:59:36'),
(20, 3, 'Pizza Tunisian', 1, 10.00, 'in process', '2024-05-26 10:00:05'),
(21, 6, 'Mechouia-Salad', 1, 20.00, 'rejected', '2024-05-26 10:00:17'),
(22, 6, 'Yorkshire Lamb Patties', 1, 14.00, 'rejected', '2024-05-26 10:00:24'),
(23, 6, 'Chicken Madeira', 1, 23.00, 'closed', '2024-05-26 10:00:42'),
(24, 6, 'Chakchouka Tunisian', 1, 15.00, 'closed', '2024-05-26 10:00:49'),
(25, 7, 'Yorkshire Lamb Patties', 1, 14.00, NULL, '2024-05-26 10:07:55'),
(26, 7, 'Lobster Thermidor', 3, 36.00, NULL, '2024-05-26 10:07:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
