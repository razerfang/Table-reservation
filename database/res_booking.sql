-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 08:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `res_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_chair`
--

CREATE TABLE `booking_chair` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `chair_id` int(11) DEFAULT NULL,
  `chair_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking_chair`
--

INSERT INTO `booking_chair` (`id`, `booking_id`, `chair_id`, `chair_no`) VALUES
(25, '63d62c0d18e6c', 52, 'TBL-3-4'),
(26, '63d77bb062615', 19, 'TBL-1-2'),
(27, '63d77bb062615', 20, 'TBL-1-3'),
(28, '63d77c9ed0f81', 15, 'TBL-1-1'),
(29, '63d77c9ed0f81', 49, 'TBL-3-1'),
(30, '63d77c9ed0f81', 50, 'TBL-3-2'),
(31, '63d77c9ed0f81', 52, 'TBL-3-4'),
(32, '64310c6a12349', 32, 'TBL-1-1'),
(33, '64310c6a12349', 33, 'TBL-1-2');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `make_date` date DEFAULT NULL,
  `make_time` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(30) DEFAULT NULL,
  `bill` float DEFAULT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0- reject, 1-confirmed',
  `reject` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `res_id`, `c_id`, `make_date`, `make_time`, `name`, `phone`, `booking_date`, `booking_time`, `bill`, `transactionid`, `status`, `reject`) VALUES
(1, '63d62c0d18e6c', 4, 22, '2023-01-29', '02:19:25pm', 'Chetana', '01751235864', '2023-01-30', '10:00am', 360, '012', 1, 0),
(15, '63d77bb062615', 4, 24, '2023-01-30', '02:11:28pm', 'chandru', '8618136079', '2023-01-30', '11:30am', 680, '98', 0, 0),
(16, '63d77c9ed0f81', 4, 25, '2023-01-30', '02:15:26pm', 'nikhil', '34827669', '2023-01-30', '2:15pm', 530, '99', 0, 0),
(17, '64310c6a12349', 6, 22, '2023-04-08', '12:40:42pm', 'Chetana', '01751235864', '2023-04-09', '10:00am', 2390, '0333', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_menus`
--

CREATE TABLE `booking_menus` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking_menus`
--

INSERT INTO `booking_menus` (`id`, `booking_id`, `item_id`, `qty`) VALUES
(32, '63d62c0d18e6c', 1, 1),
(33, '63d62c0d18e6c', 85, 0),
(34, '63d62c0d18e6c', 65, 0),
(35, '63d77bb062615', 1, 1),
(36, '63d77bb062615', 86, 0),
(37, '63d77bb062615', 65, 0),
(38, '63d77c9ed0f81', 3, 0),
(39, '63d77c9ed0f81', 64, 0),
(40, '64310c6a12349', 15, 10),
(41, '64310c6a12349', 16, 0),
(42, '64310c6a12349', 72, 1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Jayanagar'),
(2, 'Basavanagudi'),
(3, 'Malleshwaram\r\n'),
(4, 'Rajajinagar'),
(5, 'RR Nagar');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `madeby` varchar(300) DEFAULT NULL,
  `food_type` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `res_id`, `item_name`, `madeby`, `food_type`, `price`, `image`) VALUES
(1, 4, 'Idli vada', 'made with semolina ', 'Fast Food', 50, 'idli.png'),
(2, 4, 'Masala dosa', 'ID batter', 'Fast Food', 60, 'massaladosa.png'),
(3, 4, 'Kesari bath', 'pineapple and semolina', 'Fast Food', 120, 'kaseribath.png'),
(4, 3, 'Idli vada ', 'semolina', 'Fast Food', 60, 'idli.png'),
(5, 3, 'Masala dosa', 'ID batter', 'Fast Food', 60, 'massaladosa.png'),
(6, 3, 'Coffee', 'Milk and Levista coffee powder', 'Drinks', 20, 'coffee.png'),
(7, 1, 'Meal combo\r\n(Naan,Dal tadka,jeera rice,paneer butter masala,curd rice,jamoon)', 'Wheat flour,paneer,peas,curd,jeera,rice', 'Fast Food', 180, 'mealcombo.png'),
(8, 1, 'Unlimited buffet', 'Variety of food', 'Fast Food', 459, 'buffet.png'),
(9, 1, 'Death-by-chocolate', 'Brownie,chocolate', 'Dessert', 210, 'dbc.png'),
(10, 2, 'Chicken biryani', 'Chicken,rice,raita', 'Fast Food', 220, 'chickenbir.png'),
(11, 2, 'Chicken 65', 'Chicken', 'Fast Food', 250, 'chicken65.png'),
(12, 2, 'Chicken Lollipop', 'Chicken Leg, Besan, Spices, Oil', 'Fast Food', 180, 'lolipop.png'),
(13, 5, 'Vodka', 'Vodka', 'Drink', 180, 'vodka.png'),
(14, 5, 'French fries', 'Potato', 'Fast Food', 180, 'frenchfries.png'),
(15, 6, 'Butter naan', 'Maida', 'Fast Food', 120, 'butternan.png'),
(16, 6, 'Choco-Brownie-Fudge', 'Chocolate,brownie', 'Dessert', 250, 'choco.png'),
(17, 5, 'Margarita Pizza', 'Wheat Flour, Tomato Sause, Spices Herbs, Cheese', 'Fast Food', 250, 'pizza.png'),
(18, 6, 'Smoky Chicken Pasta ', 'Chicken, Pasta, Cheese, Tomato & BBQ Sause ', 'Fast Food', 150, 'pasta.png'),
(19, 7, 'Truffle Fries ', 'Cheese and Potato ', 'Fast Food', 120, 'fries.png'),
(20, 7, 'Rumali Roti & Butter Chicken ', 'Wheat Flour, Chicken, Lots of butter  ', 'Fast Food', 210, 'rumaliii.png'),
(21, 7, 'Smoky BBQ Burger ', 'Brioche Bun, BBQ Sause, Well Marinated Chicken and Spices & Herbs  ', 'Fast Food', 180, 'burger.png'),
(22, 5, 'Mutton Biryani ', 'Basmati Rice, Spices', 'Fast Food', 300, 'biryani.png'),
(23, 8, 'Sandwich ', 'Bread, Mayo, Tomato Ketchup, Cheese, Veggies/Chicken  ', 'Fast Food', 60, 'sandwich.png'),
(24, 8, 'Potato Twisters ', 'Potato, Spices  ', 'Fast Food', 35, 'twisters.png'),
(25, 8, 'Pizza', 'Wheat Flour, Tomato Sause, Cheese ', 'Fast Food', 120, 'pizza.png'),
(29, 1, 'Masala Chai ', 'Milk & Tea Leaf', 'Drink', 10, 'tea.png'),
(30, 1, 'Lemon Tea ', 'Lemon & Tea Leaf', 'Drink', 20, 'lemon.png'),
(32, 2, 'Lassi ', 'Curd, Sugar ', 'Drink', 50, 'lassi.png'),
(33, 2, 'Apple Milkshake', 'Apple, Milk, Sugar ', 'Drink', 40, 'apple.png'),
(37, 4, 'Filter Coffee', 'Milk & Coffee Powder', 'Drink', 10, 'coffee.png'),
(38, 4, 'Rose Milk', 'Rose Essence & Milk ', 'Drink', 40, 'rose.png'),
(39, 4, 'Cold Badami Halu', 'Milk & Badami Powder ', 'Drink', 30, 'badam.png'),
(40, 5, 'Beer, One Pint', 'Barley', 'Drink', 180, 'beer.png'),
(41, 5, 'Irish Coffee', 'Alcohol & Coffee ', 'Drink', 250, 'irish.png'),
(42, 5, 'Cosmopolitan ', 'Vodka & Cranberry ', 'Drink', 280, 'cosmopolitan.png'),
(43, 6, 'Bloody Mary ', 'Vodka, Pepper, Worcestershire sauce, Lemon Juice, salt, Tabasco, Tomato Juice  ', 'Drink', 300, 'bloodymary.png'),
(44, 6, 'Martini ', 'Dry Vermouth, Gin', 'Drink', 250, 'martini.png'),
(45, 6, 'Whisky(Red Label) ', 'A Fermented Mash Of Cereal Grains And Aged In Wooden Containers, Which Are Usually Constructed Of Oak.', 'Drink', 350, 'wiskey.png'),
(46, 7, 'Wine', 'Fermented Grape ', 'Drink', 250, 'wine.png'),
(47, 7, 'Screwdriver', 'Vodka, Orange Juice\r\n\r\n', 'Drink', 350, 'screwdriver.png'),
(48, 7, 'Mimosa ', 'Champagne, Orange Juice ', 'Drink', 450, 'mimosa.png'),
(49, 8, 'Virgin Mojito', 'Fresh mint, Fresh Lime Juice, Simple Syrup, Club Soda, And Plenty Of Ice!', 'Drink', 150, 'mojito.png'),
(50, 8, 'Mango Mule', 'Slices Of Cucumber, Honey Syrup, Mango Puree, Fresh Lime Juice, Ginger Beer', 'Drink', 200, 'mangomule.png'),
(51, 8, 'Lyre’s Dublin Double Irish Coffee', 'Lyre’s American Malt, Hot Brewed Coffee, Premium Maple Syrup, Whipped Cream', 'Drink', 360, 'lyre.png'),
(52, 5, 'Vodka', 'Vodka', 'Drinks', 180, 'vodka.png'),
(53, 5, 'Vodka', 'Vodka', 'Drinks', 180, 'vodka.png'),
(54, 1, 'Filter Coffee', 'Milk & Coffee Powder', 'Drinks', 15, 'coffee.png'),
(55, 1, 'Masala Chai ', 'Milk & Tea Leaf', 'Drinks', 10, 'tea.png'),
(56, 1, 'Lemon Tea ', 'Lemon & Tea Leaf', 'Drinks', 20, 'lemon.png'),
(57, 2, 'Filter Coffee', 'Milk & Coffee Powder', 'Drinks', 15, 'coffee.png'),
(59, 2, 'Lassi ', 'Curd, Sugar ', 'Drinks', 50, 'lassi.png'),
(60, 2, 'Apple Milkshake', 'Apple, Milk, Sugar ', 'Drinks', 40, 'apple.png'),
(61, 3, 'Filter Coffee', 'Milk & Coffee', 'Drinks', 10, 'coffee.png'),
(62, 3, 'Tea', 'Milk & Tea Leaf', 'Drinks', 10, 'tea.png'),
(63, 3, 'Badami Halu ', 'Milk, Badami Powder, Sugar ', 'Drinks', 20, 'badam.png'),
(64, 4, 'Filter Coffee', 'Milk & Coffee Powder', 'Drinks', 10, 'coffee.png'),
(65, 4, 'Rose Milk', 'Rose Essence & Milk ', 'Drinks', 40, 'rose.png'),
(66, 4, 'Cold Badami Halu', 'Milk & Badami Powder ', 'Drinks', 30, 'badam.png'),
(67, 5, 'Beer, One Pint', 'Barley', 'Drinks', 180, 'beer.png'),
(68, 5, 'Irish Coffee', 'Alcohol & Coffee ', 'Drinks', 250, 'irish.png'),
(69, 5, 'Cosmopolitan ', 'Vodka & Cranberry ', 'Drinks', 280, 'cosmopolitan.png'),
(70, 6, 'Bloody Mary ', 'Vodka, Pepper, Worcestershire sauce, Lemon Juice, salt, Tabasco, Tomato Juice  ', 'Drinks', 300, 'bloodymary.png'),
(71, 6, 'Martini ', 'Dry Vermouth, Gin', 'Drinks', 250, 'martini.png'),
(72, 6, 'Whisky(Red Label) ', 'A Fermented Mash Of Cereal Grains And Aged In Wooden Containers, Which Are Usually Constructed Of Oak.', 'Drinks', 350, 'wiskey.png'),
(74, 7, 'Wine', 'Fermented Grape ', 'Drinks', 250, 'wine.png'),
(75, 7, 'Screwdriver', 'Vodka, Orange Juice\r\n\r\n', 'Drinks', 350, 'screwdriver.png'),
(76, 7, 'Mimosa ', 'Champagne, Orange Juice ', 'Drinks', 450, 'mimosa.png'),
(77, 8, 'Virgin Mojito', 'Fresh mint, Fresh Lime Juice, Simple Syrup, Club Soda, And Plenty Of Ice!', 'Drinks', 150, 'mojito.png'),
(78, 8, 'Mango Mule', 'Slices Of Cucumber, Honey Syrup, Mango Puree, Fresh Lime Juice, Ginger Beer', 'Drinks', 200, 'mangomule.png'),
(79, 8, 'Lyre’s Dublin Double Irish Coffee', 'Lyre’s American Malt, Hot Brewed Coffee, Premium Maple Syrup, Whipped Cream', 'Drinks', 360, 'lyre.png'),
(80, 2, 'Pineapple Fudge ', 'Sugar, milk, butter, and other ingredients such as cocoa & Pineapple ', 'Dessert', 100, 'piniapplefudge.png'),
(81, 2, 'Gulab Jamun  ', 'Mawa (khoya) ,All purpose flour ,Cashews,Raisins ,Sugar ,Ghee', 'Dessert', 60, 'gulabjamun.png'),
(82, 3, 'Kesari Baath ', 'pineapple, semolina & sugar ', 'Dessert', 120, 'kaseribath.png'),
(83, 3, 'Mysore Pak', 'Sugar, water, besan , ghee , oil ', 'Dessert', 45, 'mysorepak.png'),
(84, 3, 'Kaju Barfi/Kattli ', 'Cashew nuts soaked in water for a considerable period of time (usually overnight), which are then ground to a paste.', 'Dessert', 180, 'kajubarfi.png'),
(85, 4, 'Motichuur Ladoo', 'Motichoor ladoo are made with gram flour or besan as we call it. Tiny drops of chickpea flour (boondi) are deep fried and then mixed with a sugar syrup and then shaped into round balls.', 'Dessert', 95, 'motichoor.png'),
(86, 4, 'Carrot Halwa', 'Grated carrots, milk, sugar and nuts are stirred and cooked together. Whole lot of nuts make this a great choice to fulfill those post meal dessert cravings.', 'Dessert', 140, 'carrothalwa.png'),
(87, 4, 'Payasam ', 'Rice, milk, cardamom , sugar, ghee (clarified butter),cashew nuts, raisins', 'Dessert', 100, 'payasam.png'),
(88, 5, 'Cheese Cake ', '1/2 cups (128g) graham cracker crumbs, 9 to 10 whole graham crackers, crushed\r\n1/4 cup (28g) confectioners\' sugar\r\n5 1/3 tablespoons (74g) butter, melted\r\n1/8 teaspoon salt\r\nFilling\r\ntwo 8-ounce packages (452g) cream cheese, at room temperature\r\n2/3 cup (152g) granulated sugar\r\n2 large eggs, at room', 'Dessert', 250, 'cheesecake.png'),
(89, 5, 'Chocolate Moose', 'Melting chocolate, then folding in foamy egg yolks, whites or both and sometimes whipped cream.', 'Dessert', 150, 'chocomoose.png'),
(90, 5, 'Hot Chocolate', 'Milk powder, cocoa powder, and sugar', 'Dessert', 150, 'hotchoco.png'),
(91, 6, 'Apple Pie', 'Dough for double-crust pie\r\n1/3 cup sugar\r\n1/3 cup packed brown sugar\r\n1/4 cup all-purpose flour\r\n1 teaspoon ground cinnamon\r\n1/4 teaspoon ground ginger\r\n1/4 teaspoon ground nutmeg\r\n6 to 7 cups thinly sliced peeled tart apples\r\n1 tablespoon lemon juice\r\n1 tablespoon butter\r\n1 large egg white\r\nOption', 'Dessert', 300, 'pie.png'),
(92, 6, 'Brownie', 'All-purpose flour, white granulated sugar, unsweetened cocoa powder, a pair of eggs, and a bit of unsalted butter', 'Dessert', 90, 'brownie.png'),
(93, 6, 'Churros', 'Flour, water, salt & powered sugar', 'Dessert', 275, 'chrros.png'),
(94, 7, 'Tiramisu', 'Egg Yolks, Sugar, Milk, Cream, vanilla, Mascarpone, Coffee, Rum, Sponge Cake, Cocoa Powder ', 'Dessert', 400, 'tiramisu.png'),
(95, 7, 'Cinnamon rolls', 'A rolled sheet of yeast-leavened dough onto which a cinnamon and sugar mixture (and raisins or other ingredients in some cases) is sprinkled over a thin coat of butter', 'Dessert', 250, 'cinnamon.png'),
(96, 7, 'Donuts', 'Milk, Yeast, Sugar, Eggs, Butter, Salt & Vanilla Extract, Nutmeg, Flour', 'Dessert', 150, 'donut.png'),
(97, 8, 'Macaroons', 'Shredded coconut, egg whites, sugar, other flavorings (like vanilla extract), and sometimes ground almonds.', 'Dessert', 250, 'macaroons.png'),
(98, 8, 'Lemon Souffle', 'A flavored crème pâtissière, cream sauce or béchamel, or a purée as the base. egg whites beaten to a soft peak.', 'Dessert', 350, 'souffle.png'),
(99, 8, 'Baklava', 'Phyllo dough, finely crushed pistachios, butter, and a simple syrup made of sugar, water, and lemon juice', 'Dessert', 500, 'baklava.png'),
(100, 1, 'black Forest', 'frozen tart cherries, sugar, cornstarch, butter, and almond extract.', 'Dessert', 120, 'blackforest.png'),
(101, 1, 'Choco Chip Cookie  ', 'White sugar; brown sugar; flour; salt; eggs; a leavening agent such as baking soda; a fat, typically butter or shortening; vanilla extract; and chocolate pieces.', 'Dessert', 50, 'chochip.png');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_chair`
--

CREATE TABLE `restaurant_chair` (
  `id` int(11) NOT NULL,
  `tbl_id` int(11) DEFAULT NULL,
  `chair_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant_chair`
--

INSERT INTO `restaurant_chair` (`id`, `tbl_id`, `chair_no`) VALUES
(1, 4, 'TBL-1-1'),
(2, 4, 'TBL-1-2'),
(3, 3, 'TBL-3-1'),
(4, 3, 'TBL-3-2'),
(5, 3, 'TBL-3-3'),
(6, 2, 'TBL-2-1'),
(7, 2, 'TBL-2-2'),
(9, 1, 'TBL-1-1'),
(10, 1, 'TBL-1-2'),
(12, 1, 'TBL-1-3'),
(13, 1, 'TBL-1-4'),
(15, 9, 'TBL-1-1'),
(16, 9, 'TBL-1-2'),
(18, 8, 'TBL-1-1'),
(19, 8, 'TBL-1-2'),
(20, 8, 'TBL-1-3'),
(21, 6, 'TBL-1-1'),
(22, 6, 'TBL-1-2'),
(23, 6, 'TBL-1-3'),
(24, 14, 'TBL-1-2'),
(25, 14, 'TBL-1-1'),
(26, 13, 'TBL-1-1'),
(27, 13, 'TBL-1-2'),
(28, 12, 'TBL-1-1'),
(29, 12, 'TBL-1-2'),
(30, 12, 'TBL-1-3'),
(31, 12, 'TBL-1-4'),
(32, 11, 'TBL-1-1'),
(33, 11, 'TBL-1-2'),
(34, 10, 'TBL-1-1'),
(35, 10, 'TBL-1-2'),
(36, 9, 'TBL-1-1'),
(37, 9, 'TBL-1-2'),
(38, 8, 'TBL-1-1'),
(39, 8, 'TBL-1-2'),
(40, 8, 'TBL-1-3'),
(41, 8, 'TBL-1-4'),
(42, 7, 'TBL-2-1'),
(43, 7, 'TBL-2-3'),
(44, 7, 'TBL-2-2'),
(47, 5, 'TBL-2-1'),
(48, 5, 'TBL-2-2'),
(49, 9, 'TBL-3-1'),
(50, 9, 'TBL-3-2'),
(51, 9, 'TBL-3-3'),
(52, 9, 'TBL-3-4'),
(53, 10, 'TBL-4-1'),
(54, 10, 'TBL-4-2'),
(55, 11, 'TBL-1-1'),
(56, 11, 'TBL-1-2'),
(57, 11, 'TBL-1-3'),
(58, 11, 'TBL-1-4'),
(76, 7, 'TBL-2-1'),
(77, 7, 'TBL-2-2'),
(78, 5, 'TBL-2-1'),
(79, 5, 'TBL-2-2'),
(81, 18, 'TBL-1-1'),
(82, 18, 'TBL-1-2'),
(83, 18, 'TBL-1-3'),
(84, 18, 'TBL-1-4'),
(85, 18, 'TBL-1-5'),
(86, 19, 'TBL-2-1'),
(87, 19, 'TBL-2-2'),
(88, 19, 'TBL-2-3'),
(89, 19, 'TBL-2-4'),
(91, 20, 'TBL-1-1'),
(92, 20, 'TBL-1-2'),
(93, 20, 'TBL-1-3'),
(94, 20, 'TBL-1-4'),
(95, 20, 'TBL-1-5'),
(96, 21, 'TBL-2-1'),
(97, 21, 'TBL-2-2'),
(98, 21, 'TBL-2-3'),
(99, 21, 'TBL-2-4'),
(100, 21, 'TBL-2-5'),
(101, 22, 'TBL-1-1'),
(102, 22, 'TBL-1-2'),
(103, 22, 'TBL-1-3'),
(104, 22, 'TBL-1-4'),
(106, 23, 'TBL-2-1'),
(107, 23, 'TBL-2-2'),
(108, 23, 'TBL-2-3'),
(109, 23, 'TBL-2-4'),
(111, 24, 'TBL-3-1'),
(112, 24, 'TBL-3-2'),
(113, 24, 'TBL-3-3'),
(114, 24, 'TBL-3-4'),
(116, 25, 'TBL-4-1'),
(117, 25, 'TBL-4-2'),
(118, 25, 'TBL-4-3'),
(119, 25, 'TBL-4-4'),
(121, 26, 'TBL-1-1'),
(122, 26, 'TBL-1-2'),
(123, 26, 'TBL-1-3'),
(124, 26, 'TBL-1-4'),
(125, 26, 'TBL-1-5'),
(127, 27, 'TBL-2-1'),
(128, 27, 'TBL-2-2'),
(129, 27, 'TBL-2-3'),
(130, 27, 'TBL-2-4'),
(131, 27, 'TBL-2-5'),
(137, 28, 'TBL-3-1'),
(138, 28, 'TBL-3-2'),
(139, 28, 'TBL-3-3'),
(140, 28, 'TBL-3-4'),
(142, 29, 'TBL-4-1'),
(143, 29, 'TBL-4-2'),
(144, 29, 'TBL-4-3'),
(145, 29, 'TBL-4-4'),
(146, 29, 'TBL-4-5'),
(147, 30, 'TBL-1-1'),
(148, 30, 'TBL-1-2'),
(149, 30, 'TBL-1-3'),
(150, 30, 'TBL-1-4'),
(151, 30, 'TBL-1-5'),
(152, 31, 'TBL-2-1'),
(153, 31, 'TBL-2-2'),
(154, 31, 'TBL-2-3'),
(155, 31, 'TBL-2-4'),
(156, 31, 'TBL-2-5'),
(157, 33, 'TBL-3-1'),
(158, 33, 'TBL-3-2'),
(159, 33, 'TBL-3-3'),
(160, 33, 'TBL-3-4'),
(161, 33, 'TBL-3-5'),
(162, 34, 'TBL-4-1'),
(163, 34, 'TBL-4-2'),
(164, 34, 'TBL-4-3'),
(165, 34, 'TBL-4-4'),
(166, 34, 'TBL-4-5'),
(167, 35, 'TBL-1-1'),
(168, 35, 'TBL-1-2'),
(169, 39, 'TBL-1-3'),
(170, 39, 'TBL-1-4'),
(171, 39, 'TBL-1-5'),
(172, 36, 'TBL-2-1'),
(173, 36, 'TBL-2-2'),
(174, 36, 'TBL-2-3'),
(175, 36, 'TBL-2-4'),
(176, 36, 'TBL-2-5'),
(177, 37, 'TBL-3-1'),
(178, 37, 'TBL-3-2'),
(179, 37, 'TBL-3-3'),
(180, 37, 'TBL-3-4'),
(181, 37, 'TBL-3-5'),
(183, 38, 'TBL-4-1'),
(184, 38, 'TBL-4-2'),
(185, 38, 'TBL-4-3'),
(186, 38, 'TBL-4-4'),
(187, 38, 'TBL-4-5'),
(188, 40, 'TBL-1-1'),
(189, 40, 'TBL-1-2'),
(190, 40, 'TBL-1-3'),
(191, 40, 'TBL-1-4'),
(192, 40, 'TBL-1-5'),
(193, 41, 'TBL-2-1'),
(194, 41, 'TBL-2-2'),
(195, 41, 'TBL-2-3'),
(196, 42, 'TBL-2-4'),
(197, 42, 'TBL-2-5'),
(198, 42, 'TBL-3-1'),
(199, 42, 'TBL-3-2'),
(200, 42, 'TBL-3-3'),
(201, 42, 'TBL-3-4'),
(202, 42, 'TBL-3-5'),
(203, 44, 'TBL-4-1'),
(204, 44, 'TBL-4-2'),
(205, 44, 'TBL-4-3'),
(206, 44, 'TBL-4-4'),
(207, 44, 'TBL-4-5'),
(208, 44, 'TBL-1-1'),
(209, 44, 'TBL-1-2'),
(210, 44, 'TBL-1-3'),
(212, 44, 'TBL-4'),
(213, 44, 'TBL-5'),
(214, 45, 'TBL-2-1'),
(215, 45, 'TBL-2-2'),
(216, 45, 'TBL-2-3'),
(217, 45, 'TBL-2-4'),
(218, 45, 'TBL-2-5'),
(219, 46, 'TBL-3-1'),
(220, 46, 'TBL-3-2'),
(221, 46, 'TBL-3-3'),
(222, 46, 'TBL-3-4'),
(223, 47, 'TBL-3-5'),
(224, 47, 'TBL-4-1'),
(225, 47, 'TBL-4-2'),
(226, 47, 'TBL-4-3'),
(227, 47, 'TBL-4-4'),
(228, 47, 'TBL-4-5');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_info`
--

CREATE TABLE `restaurant_info` (
  `id` int(11) NOT NULL,
  `restaurent_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `location` int(11) NOT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `bkashnumber` varchar(20) DEFAULT NULL,
  `approve_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not approve,1-approve ',
  `role` int(20) DEFAULT NULL COMMENT '1 = restaurant, 2 = customer '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant_info`
--

INSERT INTO `restaurant_info` (`id`, `restaurent_name`, `email`, `phone`, `address`, `location`, `logo`, `password`, `bkashnumber`, `approve_status`, `role`) VALUES
(1, 'Subz Restaurant', 'subzz@gmail.com', '01821356478', '26 Indira Rd, jayangar', 1, 'subz.png', '123', '01821356478', 0, 1),
(2, 'Empire Restaurant', 'he@gmail.com', '01711555263', 'Dr.MC Modi Hospital Road, Rajajinagar', 4, 'empire.png', '123', '01711555263', 0, 1),
(3, 'Vidyarthi Bhavan', 'vb@gmail.com', '01751235864', 'Bull Temple Road,Basavanagudi', 2, 'vb.png', '123', '01751235864', 0, 1),
(4, 'Central Tiffin Room', 'ctr@gmail.com', '01514569852', 'Opp Krishna Sweet, Malleshwaram', 3, 'ctr.png', '123', '01514569852', 0, 1),
(5, '1947 Restaurant', '1947r@gmail.com', '01614552245', '1st main road,Rajajinagar', 4, '1947.png', '123', '01614552245', 0, 1),
(6, 'The Watering Hole Resto', 'twhr@gmail.com', '01516189260', '1st phase,Ideal homes,RRnagar', 5, 'twh.png', '123', '4564743738', 0, 1),
(7, 'JetLag Resto&Bar', 'JetLag@gmail.com', '01811555666', 'Dr.Rajkumar Road, Rajajinagar', 4, 'jetlag.png', '123', '01811555666', 0, 1),
(8, 'Truffles', 'Truflesa@gmial.com', '01511444852', '#59, opp RNSIT College, RR Nagar ', 5, 'truffles.png', '123', '01511444852', 0, 1),
(9, 'Toscano', 'tos@gmail.com', '080 4155 8423', 'Ashoka Pillar Rd, near Madhavan Park Circle, 6th Block, 1st Block, Jayanagar, Bengaluru, Karnataka 560011', 1, 'toscano.png', '123', '7685943657', 0, 1),
(10, 'Golden OAK', 'go@gmail.com', '08043335333', 'SOUTH-END CIRCLE, #1, 14th Cross Rd, 2nd Block, Jayanagar, Bengaluru, Karnataka 560011', 1, 'goldenoak.png', '123', '8960473567', 0, 1),
(11, 'Soho Bar & Grill', 'sbg@gmail.com', '345678965', '198, 4th Floor, Old Soho pub n grill, Gandhi Bazaar Main Rd, Basavanagudi, Bengaluru, Karnataka 560004', 2, 'soho.png', '123', '8796573458', 0, 1),
(12, 'Food Adda', 'fa@gmail.com', '08660932449', 'BBMP south, 18/1 ground floor, Bull Temple Rd, Basavanagudi, Bengaluru, Karnataka 560004', 2, 'foodadda.png', '123', '7685947568', 0, 1),
(13, 'Barbecue by Punjab Grill', 'pg.gmail.com', '09821634576', 'Sampige Rd Unit T-1, Third Floor, Mantri Square Mall, Malleshwaram, Bengaluru, Karnataka 560003', 3, 'bbq.png', '123', '8796573458', 0, 1),
(14, 'Nando\'s', 'https://www.nandosindia.com/', '08022682324', 'Dr Rajkumar Rd Orion Mall, Rajajinagar, Karnataka 560055', 3, 'nandos.png', '123', '9875674563', 0, 1),
(15, 'Onesta', 'http://www.onestalove.in/', '09513736269', '# 335,Ideal Home .BKVHVP Aracade, Rajarajeshwari Temple Rd, Rajarajeshwari, Nagar, Bengaluru, Karnataka 560098', 5, 'on.png', '123', '9785674635', 0, 1),
(22, 'Chetana', 'chetanaks21@gmail.com', '01751235864', 'Vijayanagr', 0, 'ag logo.png', '123', NULL, 0, 2),
(23, 'la', 'la@gmail.com', '45678998', 'mei layout', 0, 'logo.jpg', '123', NULL, 0, 2),
(24, 'chandru', 'chandru@gmail.com', '8618136079', 'ypr', 0, 'WIN_20200511_16_20_24_Pro.jpg', '1360', NULL, 0, 2),
(25, 'nikhil', 'nikhil@gmail.com', '34827669', 'jayanagar', 0, 'samu (2).png', '123', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`id`, `res_id`, `table_name`) VALUES
(1, 1, 'TBL-2'),
(2, 1, 'TBL-1'),
(3, 1, 'TBL-3'),
(4, 2, 'TBL-1'),
(5, 2, 'TBL-2\r\n'),
(6, 3, 'TBL-1'),
(7, 3, 'TBL-2'),
(8, 4, 'TBL-1'),
(9, 4, 'TBL-1'),
(10, 5, 'TBL-1'),
(11, 6, 'TBL-1'),
(12, 7, 'TBL-1'),
(13, 7, 'TBL-1'),
(14, 8, 'TBL-1'),
(18, 9, 'TBL-1'),
(19, 9, 'TBL-2'),
(20, 9, 'TBL-3'),
(21, 9, 'TBL-4'),
(22, 10, 'TBL-1'),
(23, 10, 'TBL-2'),
(24, 10, 'TBL-3'),
(25, 10, 'TBL-4'),
(26, 11, 'TBL-1'),
(27, 11, 'TBL-2'),
(28, 11, 'TBL-3'),
(29, 11, 'TBL-4'),
(30, 12, 'TBL-1'),
(31, 12, 'TBL-2'),
(33, 12, 'TBL-3'),
(34, 12, 'TBL-4'),
(35, 13, 'TBL-1'),
(36, 13, 'TBL-2'),
(37, 13, 'TBL-3'),
(38, 13, 'TBL-4'),
(39, 13, 'TBL-5'),
(40, 14, 'TBL-1'),
(41, 14, 'TBL-2'),
(42, 14, 'TBL-3'),
(43, 14, 'TBL-4'),
(44, 15, 'TBL-1'),
(45, 15, 'TBL-2'),
(46, 15, 'TBL-3'),
(47, 15, 'TBL-4');

-- --------------------------------------------------------

--
-- Stand-in structure for view `rest_loc`
-- (See below for the actual view)
--
CREATE TABLE `rest_loc` (
`id` int(11)
,`restaurent_name` varchar(255)
,`address` varchar(200)
,`location_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `rest_loc`
--
DROP TABLE IF EXISTS `rest_loc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rest_loc`  AS SELECT `r`.`id` AS `id`, `r`.`restaurent_name` AS `restaurent_name`, `r`.`address` AS `address`, `l`.`location_name` AS `location_name` FROM (`restaurant_info` `r` join `locations` `l`) WHERE `r`.`location` = `l`.`id` AND `l`.`location_name` = 'Rajajinagar''Rajajinagar'  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_chair`
--
ALTER TABLE `booking_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_menus`
--
ALTER TABLE `booking_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_chair`
--
ALTER TABLE `booking_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `booking_menus`
--
ALTER TABLE `booking_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
