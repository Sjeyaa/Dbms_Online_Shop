

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--CREATE DATABASE IF NOT EXISTS 'amaclone' DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
--USE 'amaclone';



-- Table structure for table 'brands'





--
-- Table structure for table 'cart'
--

CREATE TABLE 'cart' (
  'id' int(10) NOT NULL,
  'p_id' int(10) NOT NULL,
  'ip_add' varchar(250) NOT NULL,
  'user_id' int(10) NOT NULL,
  'product_title' varchar(100) NOT NULL,
  'product_image' varchar(300) NOT NULL,
  'qty' int(100) NOT NULL,
  'price' int(100) NOT NULL,
  'total_amount' int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'cart'
--

INSERT INTO 'cart' ('id', 'p_id', 'ip_add', 'user_id', 'product_title', 'product_image', 'qty', 'price', 'total_amount') VALUES
(79, 11, '0.0.0.0', 2, 'Baby Shirt', 'apple.JPG', 1, 500, 500),
(80, 2, '0.0.0.0', 2, 'iPhone 5s', 'pen.JPG', 1, 25000, 25000);

-- --------------------------------------------------------

--
-- Table structure for table 'categories'
--

CREATE TABLE 'categories' (
  'cat_id' int(11) NOT NULL,
  'cat_title' text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'categories'
--

INSERT INTO 'categories' ('cat_id', 'cat_title') VALUES
(1, 'Fruits'),
(2, 'Vegetables'),
(3, 'Milk Products'),
(4, 'Rices'),
(5, 'Powders'),
(6, 'Stationary');

-- --------------------------------------------------------

--
-- Table structure for table 'customer_order'
--

CREATE TABLE 'customer_order' (
  'id' int(100) NOT NULL,
  'uid' int(100) NOT NULL,
  'pid' int(100) NOT NULL,
  'p_name' varchar(255) NOT NULL,
  'p_price' int(100) NOT NULL,
  'p_qty' int(100) NOT NULL,
  'p_status' varchar(100) NOT NULL,
  'tr_id' varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'customer_order'
--

INSERT INTO 'customer_order' ('id', 'uid', 'pid', 'p_name', 'p_price', 'p_qty', 'p_status', 'tr_id') VALUES
(30, 2, 6, 'apple', 15000, 1, 'CONFIRMED', '15179'),
(31, 2, 15, 'orange', 2500, 1, 'CONFIRMED', '15179'),
(32, 2, 16, 'pen', 600, 1, 'CONFIRMED', '15179');

-- --------------------------------------------------------

--
-- Table structure for table 'products'
--

CREATE TABLE 'products' (
  'product_id' int(100) NOT NULL,
  'product_cat' varchar(100) NOT NULL,
  'product_brand' varchar(100) NOT NULL,
  'product_title' varchar(50) NOT NULL,
  'product_price' int(100) NOT NULL,
  'product_desc' text NOT NULL,
  'product_image' text NOT NULL,
  'product_keywords' text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'products'
--

INSERT INTO 'products' ('product_id', 'product_cat', 'product_brand', 'product_title', 'product_price', 'product_desc', 'product_image', 'product_keywords') VALUES
(1, '1', '2', 'Apples', 500, 'To eat', 'apple.JPG', 'Apple'),
(2, '1', '3', 'Mangos', 250, 'To eat', 'mango.JPG', 'Mangoes'),
(3, '1', '3', 'Orange', 300, 'To eat', 'orange.jpg', 'Orange'),
(4, '1', '2', 'Jackfruit', 100, 'To eat', 'jack.JPG', 'Jackfuit'),
(5, '1', '4', 'Banana', 25, 'To eat', 'banana.JPG', 'Ban'),
(6, '1', '5', 'Cherry', 150, 'To eat', 'cherry.JPG', 'Cherry'),
(7, '2', '6', 'Potato', 150, 'To eat', 'potato.JPG', 'Potatos'),
(8, '2', '6', 'Tomato', 100, 'To eat', 'tomato.JPG', 'Tomatos'),
(9, '2', '6', 'Cabbage', 100, 'To eat', 'cabbage.JPG', 'Cabbages'),
(10, '2', '6', 'Onion', 150, 'To eat', 'onion.JPG', 'Onions'),
(11, '2', '6', 'Brinjal', 75, 'To eat', 'brinjal.JPG', 'Brinjals'),
(12, '2', '6', 'Carrot', 140, 'To eat', 'carrot.JPG', 'Carrots'),
(13, '3', '7', 'Milk',50, 'To eat', 'milk.JPG', 'Milks'),
(14, '3', '7', 'Curd', 40, 'To eat', 'curd.JPG', 'Curds'),
(15, '3', '7', 'Butter', 90, 'To eat', 'butter.JPG', 'Butters'),
(16, '3', '7', 'Butter Milk', 180, 'To eat', 'buttermilk.JPG', 'Bm'),
(17, '3', '7', 'Diary Sweet', 150, 'To eat', 'dairysweet.JPG', 'ds'),
(18, '3', '7', 'Sweets', 100, 'To eat', 'sweet.JPG', 'ss'),
(19, '4', '10', 'Deluxe', 500, 'To eat', 'deluxe.JPG', 'del'),
(20, '4', '10', 'Ponni', 800, 'To eat', 'ponni.JPG', 'pon'),
(21, '4', '10', 'Mayilmark', 800, 'To eat', 'mailmark.JPG', 'mm'),
(22, '4', '10', 'Biriyani Rice', 800, 'To eat', 'biriyanirice.JPG', 'br'),
(23, '4', '10', 'Normal rice', 800, 'To eat', 'normalrice.JPG', 'nr'),
(24, '4', '10', 'Idly rice', 700, 'To eat', 'idlyrice.JPG', 'ir'),
(25, '5', '11', 'Wheat powder', 200, 'To eat', 'wheatpowder.JPG', 'Wp'),
(26, '5', '12', 'Custad', 150, 'To eat', 'custad.JPG', 'Cus'),
(27, '5', '12', 'Turmeric', 150, 'To eat', 'turmeric.JPG', 'Tur'),
(28, '5', '12', 'Ginger powder', 150, 'To eat', 'ginger.JPG', 'Gin'),
(29, '5', '12', 'Chilli powder', 100, 'To eat', 'chilli.JPG', 'Cp'),
(30, '5', '12', 'Masala', 75, 'To eat', 'masala.JPG', 'Mas'),
(31, '6', '8', 'Pencil', 25, 'For school', 'pencil.JPG', 'pencil'),
(32, '6', '8', 'Scale', 25, 'For school', 'scale.JPG', 'scale'),
(33, '6', '8', 'Eraser', 10, 'For school', 'eraser.JPG', 'eraser'),
(34, '6', '8', 'Sharpner', 10, 'For school', 'sharpner.JPG', 'sharp'),
(35, '6', '9', 'Whitener', 60, 'For school', 'whitener.JPG', 'white');
(36, '6', '8', 'Pen', 25, 'For school', 'pen.JPG', 'pens'),

-- --------------------------------------------------------

--
-- Table structure for table 'received_payment'
--

CREATE TABLE 'received_payment' (
  'id' int(100) NOT NULL,
  'uid' int(100) NOT NULL,
  'amt' int(100) NOT NULL,
  'tr_id' int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Table structure for table 'user_info'
--

CREATE TABLE 'user_info' (
  'user_id' int(10) NOT NULL,
  'first_name' varchar(50) NOT NULL,
  'last_name' varchar(50) NOT NULL,
  'email' varchar(300) NOT NULL,
  'password' varchar(100) NOT NULL,
  'mobile' varchar(10) NOT NULL,
  'address1' varchar(300) NOT NULL,
  'address2' varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'user_info'
--

INSERT INTO 'user_info' ('user_id', 'first_name', 'last_name', 'email', 'password', 'mobile', 'address1', 'address2') VALUES
(1, 'Satyam', 'Raj', 'satyammast@gmail.com', '3814d460c26c2dbab2d80294d2cc9882', '8235639917', 'Prem Electronics Block Road Ratu', 'Prem Electronics Block Road Ratu'),
(2, 'Abhijeet', 'Kumar', 'abhinav@krotos.com', '6cebe3b43c4495fdf87fcaa43b485236', '7631649503', 'West Lohanipur, Kadamkuan, MNS Lane', 'Patna'),
(3, 'Krotos', 'Kumar', 'kroto@star.com', 'e3daab6a6b16a140aaf0f1df98d3be24', '7631649503', 'West Lohanipur, Kadamkuan, MNS Lane', 'Patna'),
(4, 'Pranav', 'Prem', 'pranav.prem@gmail.com', '929847725b8d48b47ecba736b0d04520', '8235639917', 'Prem Electronics Block Road Ratu', 'sdsd'),
(5, 'Shubham', 'Raj', 'shubham@gmail.com', '5568fda880263b9be0b72104354fa3dc', '8235639917', 'Prem Electronics Block Road Ratu', 'bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table 'brands'
--
ALTER TABLE 'brands'
  ADD PRIMARY KEY ('brand_id');

--
-- Indexes for table 'cart'
--
ALTER TABLE 'cart'
  ADD PRIMARY KEY ('id');

--
-- Indexes for table 'categories'
--
ALTER TABLE 'categories'
  ADD PRIMARY KEY ('cat_id');

--
-- Indexes for table 'customer_order'
--
ALTER TABLE 'customer_order'
  ADD PRIMARY KEY ('id');

--
-- Indexes for table 'products'
--
ALTER TABLE 'products'
  ADD PRIMARY KEY ('product_id');

--
-- Indexes for table 'received_payment'
--
ALTER TABLE 'received_payment'
  ADD PRIMARY KEY ('id');

--
-- Indexes for table 'user_info'
--
ALTER TABLE 'user_info'
  ADD PRIMARY KEY ('user_id');

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table 'brands'
--
ALTER TABLE 'brands'
  MODIFY 'brand_id' int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table 'cart'
--
ALTER TABLE 'cart'
  MODIFY 'id' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table 'categories'
--
ALTER TABLE 'categories'
  MODIFY 'cat_id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table 'customer_order'
--
ALTER TABLE 'customer_order'
  MODIFY 'id' int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table 'products'
--
ALTER TABLE 'products'
  MODIFY 'product_id' int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table 'received_payment'
--
ALTER TABLE 'received_payment'
  MODIFY 'id' int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table 'user_info'
--
ALTER TABLE 'user_info'
  MODIFY 'user_id' int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
