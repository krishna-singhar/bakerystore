-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 07:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20726757_cake_db`
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
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2022-03-20 09:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

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
(30, 65, 'White forest cake  1Kg', 'This white forest cake is a six-inch layer cake made of white cake layered between cherry filling and a white chocolate whipped cream frosting.', '650.00', '64020584e1f3f.jpg'),
(31, 65, 'Black forest cake  1Kg', 'The traditional version consists of multiple layers of chocolate sponge cake with whipped cream and cherries, covered on each side with whipped cream and chocolate chips, as well as with cherries on top. ', '700.00', '640204f5e0a13.jpg'),
(53, 67, 'Tutti Frutti bread 250g', 'Tutti frutti bread is a sweet bread which is loaded with lots of fruits, nuts, sesame seed etc. ', '100.00', '64020ac7940d0.jpg'),
(58, 67, 'Banana Bread 300g', 'Banana bread is a type of sweet bread made from mashed bananas. It is often a moist and sweet quick bread but some recipes are yeast raised.', '249.00', '64020797887bb.jpg'),
(59, 65, 'Black Currant Cake 1kg', 'The blackcurrants are clearly the star of the show and their tart taste is the perfect antidote to the sweet sponge cake.', '550.00', '64020702860f4.jpg'),
(60, 65, 'Red Velvet cake  1Kg', 'Red velvet cake tastes like very mild cocoa with a slightly tart edge. The cream cheese frosting is the most forward flavor. Perhaps even more important than the taste is the texture: smooth, soft, tender and light with cr', '800.00', '640205dd8df57.jpg'),
(61, 65, 'Butter Scotch cake 1kg', 'This butterscotch cake is made with moist and tender brown sugar cake layers, homemade butterscotch sauce, and topped and filled with butterscotch buttercream. ', '550.00', '6401ad0601ce4.jpg'),
(62, 67, 'Chocolate bread 250g', 'Chocolate bread also contains sugar, flour eggs – which makes it much closer to a cake and is made similar to muffins. ', '200.00', '64020b5c5b531.jpg'),
(63, 67, 'Sweet bread 250g', 'Sweetbreads have a rich, slightly gamey flavor and a tender, succulent texture. ', '100.00', '6402128924c3a.jpg'),
(64, 70, 'Hot Chocolate  ', 'Hot chocolate is a hot, sweet drink made from cocoa powder, sugar, and milk.', '100.00', '640b63caa5086.jpg'),
(65, 65, 'Mango Cake 1kg', 'Mango cake with fluffy whipped cream, juicy mangoes, intensely flavorful secret sauce, layers of soft sponge cake', '450.00', '640b65293a7a5.jpg'),
(66, 65, 'Cheese Cake 1kg', 'Cheesecake is a sweet dessert consisting of one or more layers. The main, and thickest, layer consists of a mixture of a soft, fresh cheese eggs, and sugar.', '500.00', '640b6594cf5a0.jpg'),
(67, 65, 'Fruit overload cake 1kg', 'Fruitcake is a bread-like cake made with candied or dried fruits, and fresh fruits', '700.00', '640b6626842b9.jpg'),
(68, 65, ' Chocolate Truffle Cake 1kg', ' Chocolate Truffle Cake - a chocolate layer cake recipe with dense, moist chocolate cake, silky chocolate truffle frosting ', '750.00', '640b668e28ed3.jpg'),
(69, 65, 'Ferrero Rocher cake 1kg', 'Ferrero Rocher cake is made with a fluffy moist chocolate cake filled with a hazelnut praline chocolate ganache, frosted with Nutella buttercream and of course, topped with Ferrero Rocher chocolates.', '900.00', '640b66e988a48.jpg'),
(70, 65, 'Pull Me Up cake 1kg', 'The trend involves a decadent chocolate cake surrounded snugly by a see-through plastic sheet. And as you slowly pull up the sheet, there is an explosion of chocolate all over.', '700.00', '640b6745bc0a8.jpg'),
(71, 66, 'Brownie 1pc', 'Chocolate brownie is fudgy on the inside and chewy on the outside', '45.00', '640b68e66d760.jpg'),
(72, 66, 'Mousse 1pc', 'A mousse is a soft prepared food that incorporates air bubbles to give it a light and airy texture.', '75.00', '640c15b390775.jpg'),
(73, 69, 'Chicken sandwich', 'A chicken sandwich is a sandwich that typically consists of boneless, skinless chicken breast or thigh served between slices of bread, on a bun, or on a roll.', '99.00', '640c1601239e2.jpg'),
(74, 69, 'Vegetable sandwich', 'Vegetable sandwich is a type of vegetarian sandwich consisting of a vegetable filling between bread. ', '65.00', '640c163a5f754.jpg'),
(75, 69, 'Paneer sandwich', 'Paneer sandwich is a type of vegetarian sandwich consisting of a panner filling between bread. ', '80.00', '640c168e472ac.jpg'),
(76, 69, 'Mushroom sandwich', 'Mushroom sandwich is a type of vegetarian sandwich consisting of a mushroom filling between bread. ', '80.00', '640c16d470a84.jpg'),
(77, 69, 'Egg sandwich', 'Egg sandwich is a type of  sandwich consisting of a egg filling between bread. ', '85.00', '640c16f56734d.jpg'),
(78, 66, 'Custard tart 1pc', 'custard tarts are usually made from shortcrust pastry, eggs, sugar, milk or cream, and vanilla, sprinkled with nutmeg and then baked.', '60.00', '640c17a9bcccc.jpg'),
(79, 66, 'Cupcakes', 'Cupcakes are small, tasty snack cakes that are favored for their portability and portion-control.', '35.00', '640c18a95893b.jpg'),
(80, 66, 'Muffins', ' muffins have a thin, evenly browned crust. Top is symmetrical, but looks rough. When broken apart, texture is uniform and crumb is tender and light.', '30.00', '640c196201809.jpg'),
(81, 70, ' Cold Coffee', ' Cold Coffee is a creamy and popular cold beverage that is made from 3 main ingredients - coffee, sugar, and cold milk shaken or blended well in a mixer grinder.', '85.00', '640c19e93bb61.jpg'),
(82, 70, 'Lemon Mojito', 'Lemon Mojito is made from fresh mint, muddled limes, sugar syrup and white rum, which is combined and mixed using crushed ice to form a long, refreshing, lemon mojito.', '100.00', '640c1a90b4b2f.jpg'),
(83, 70, 'Raspberry Mojito', 'This Raspberry Mojito recipe is an easy refreshing summer drink that combines sweet raspberries, rum, and mint for the perfect sit-back-and-relax drink.', '110.00', '640c1afdbd5bb.jpg'),
(84, 70, 'Watermelon mojito', 'watermelon mojito mocktail is made with fresh juicy watermelon, lime juice, and delicious fresh mint.', '110.00', '640c1ba722129.jpg'),
(85, 68, 'Chocolate chips cookies 1pc', 'Chocolate chips are small chunks of sweetened chocolate, used as an ingredient in a number of desserts', '10.00', '640c1d2f2b544.jpg'),
(86, 68, 'Walnut Cookies 1pc', 'Walnut Cookies is a baked or cooked snack or dessert that is typically small, flat and sweet.', '12.00', '640c1e430f838.jpg'),
(87, 68, 'Strawberry Cookies 1pc', 'Strawberry Cookies is a baked or cooked snack or dessert that is typically small, flat and sweet.', '12.00', '640c1eb006a20.jpg'),
(88, 68, 'Oats Cookie 1pc', 'Oats Cookies is a baked or cooked snack or dessert that is typically small, flat and sweet, made with oats.', '10.00', '640c1f40a56a4.jpg'),
(89, 68, 'Almond Cookies 1pc', 'Almond Cookies is a baked or cooked snack or dessert that is typically small, flat and sweet,make with almond', '12.00', '640c20f008238.jpg'),
(90, 71, 'chocolate donut', 'A chocolate donut is a fried bread-based confection that is either made with, topped with, or filled with chocolate.', '30.00', '640c21c5c1b5f.jpg'),
(91, 71, 'Sugar Donuts ', 'Sugar Donuts – donut dough is made with flour, milk, egg yolks, yeast, and sugar, then the donuts are fried and dredged in sugar. ', '30.00', '640c228266e51.jpg'),
(92, 71, 'Strawberry Donuts', 'Strawberry Donuts are filled with fresh strawberries, chopped small, and topped with a fresh strawberry glaze', '35.00', '640c242f814c1.jpg'),
(93, 71, 'Peanut Butter Donuts', ' creamy peanut butter and classic baking ingredients transforms into soft and fluffy Peanut Butter Donuts.', '30.00', '640c3a66de942.jpg'),
(94, 71, 'Classic Donut', 'Classic Donut - small cake of sweetened or, sometimes, unsweetened dough fried in deep fat, typically shaped like a ring or, when prepared with a filling', '30.00', '640c3b9f0118d.jpg'),
(95, 72, 'Chocolate waffle', 'A Chocolate waffle is a dish made from leavened batter or dough that is cooked between two plates that are patterned and adding chocolate to it', '45.00', '640c3d77cce8c.jpg'),
(96, 72, 'Regular Waffle', 'A waffle is  made from dough that is cooked between two plates that are patterned.', '40.00', '640c3df549259.jpg'),
(97, 72, 'Nutella Waffles', 'Nutella Waffles are crispy on the outside with a fluffy inside and a creamy Nutella filling. ', '45.00', '640c3f3340f3f.jpg'),
(98, 72, 'Belgian waffles', 'Belgian waffles are beloved for their extra-deep pockets—the better for filling with butter, jam, or maple syrup.', '40.00', '640c3f867a7d2.jpg'),
(99, 72, 'Red Velvet Waffles', 'Red Velvet Waffles recipe is made with many of the same ingredients that are found in a traditional Red Velvet cake: flour, sugar, eggs, cocoa powder, buttermilk, butter, vinegar, and red food coloring.', '50.00', '640c401751384.jpg'),
(100, 70, 'Hot Coffee', 'Coffee is a beverage brewed from the roasted and ground seeds of the tropical evergreen coffee plant', '60.00', '640f6ddbb6569.jpg');

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
(71, 39, 'in process', 'Dispatching...', '2022-03-17 12:31:14'),
(72, 39, 'closed', 'Order delivered.', '2022-03-17 12:35:00'),
(73, 42, 'closed', 'Order delivered & payment received successfully.', '2022-03-23 13:53:20'),
(74, 47, 'rejected', 'Order Cancelled by User.', '2022-03-23 13:54:08'),
(75, 43, 'in process', 'Expected Delivery: 25th March, Friday ', '2022-03-23 14:07:03'),
(76, 53, 'closed', 'done', '2023-03-13 18:54:27');

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
(65, 18, 'Cake', '', '', '', '', '', '', '', '640199a41e81b.jpg', '2023-03-03 06:54:28'),
(66, 19, 'Pastry', '@', '123456789', '.com', '6am', '4pm', 'mon-wed', 'chennai', '6401a12e89250.jpg', '2023-03-03 07:26:38'),
(67, 18, 'Bread', '@', '123456789', '.com', '7am', '8pm', 'mon-thu', 'ch', '6401a15b83579.jpg', '2023-03-03 07:27:23'),
(68, 20, 'Cookies', '@', '123456', '.com', '9am', '8pm', 'mon-thu', 'ch', '6401a193a3b0a.jpg', '2023-03-03 07:28:19'),
(69, 18, 'Sandwich', '@', '123546789', '.com', '10am', '9pm', 'mon-fri', 'chen', '6401a1d6e9a44.jpg', '2023-03-03 07:29:26'),
(70, 12, 'Drinks', '', '', '', '', '', '', '', '640f75e4b0524.jpg', '2023-03-13 19:13:40'),
(71, 19, 'Donuts', '@', '1', 'a', '6am', '8pm', 'mon-fri', 'ch', '640210cf8f8ce.jpg', '2023-03-03 15:22:55'),
(72, 19, 'Waffle', '@', '1', 'a', '8am', '5pm', 'mon-thu', 'ch', '6402111290065.jpg', '2023-03-03 15:24:02');

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
(12, 'Cafe', '2022-03-05 14:07:48'),
(13, 'Chettinadu', '2022-03-05 14:10:18'),
(14, 'Multicuisine', '2022-03-05 14:10:36'),
(15, 'North-Indian', '2022-03-09 15:39:06'),
(16, 'South-Indian', '2022-03-09 15:38:14'),
(17, 'Chinese', '2022-03-05 14:11:08'),
(18, 'French', '2022-03-05 14:11:22'),
(19, 'Italian', '2022-03-05 14:11:30'),
(20, 'Continental', '2022-03-17 12:10:28');

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
(46, 'pooja', 'pooja', 'pooja', 'pooja@gmail.com', '0123456789', '2843848283857888b993e93b89a54b8b', 'chennai', 1, '2023-03-19 18:36:23');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
