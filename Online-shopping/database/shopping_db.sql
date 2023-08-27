-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 09:43 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Inventory', 'inventory@gmail.com', NULL, NULL, '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
`brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(14, 'ZARA', 10),
(15, 'Maria.B', 11);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(10, 'Men', 0),
(11, 'Women', 0),
(12, 'kids', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
`s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'Online-shopping', 'Online-shopping', '1624122950LOGO.JPG', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur, perspiciatis quia repudiandae sapiente sed sunt.', '2022 Copyright', 'PKR', '+92 317 8906226', 'info@onlineshopping.com', 'Street  D-12 Builting 120 DHA Phase 4');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE IF NOT EXISTS `order_products` (
`order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT '0',
  `delivery` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_id`, `product_id`, `product_qty`, `total_amount`, `product_user`, `order_date`, `pay_req_id`, `confirm`, `delivery`) VALUES
(50, '10,', '1,', '284', 15, '2021-06-20', '', 0, 0),
(49, '11,', '1,', '759', 15, '2021-06-20', '', 0, 1),
(48, '11,', '1,', '759', 15, '2021-06-20', '', 0, 1),
(47, '9,', '5,', '1795', 15, '2021-06-19', '', 0, 0),
(45, '12,13,', '1,1,', '1532', 2, '2020-12-02', '63148f0e7b7043f5a5e470a9ac1d3dde', 0, 1),
(46, '12,', '1,', '299', 2, '2020-12-04', '3c209af45445486c8aefb6cfb55dcbb7', 0, 1),
(51, '15,', '1,', '4250', 15, '2021-06-21', '', 0, 0),
(52, '10,', '5,', '1420', 15, '2021-06-21', '', 0, 0),
(53, '15,', '5,', '21250', 15, '2021-06-21', '', 0, 1),
(54, '9,', '1,', '359', 15, '2021-06-21', '', 0, 0),
(55, '16,', '1,', '5000', 15, '2021-06-24', '', 0, 0),
(56, '16,', '1,', '5000', 15, '2021-06-24', '', 0, 0),
(57, '16,', '1,', '5000', 15, '2021-06-24', '', 0, 0),
(58, '16,', '1,', '5000', 15, '2021-06-24', '', 0, 0),
(59, '16,', '1,', '5000', 15, '2021-06-24', '', 0, 1),
(60, '17,', '1,', '8351', 16, '2021-06-27', '', 0, 0),
(61, '16,', '5,', '25000', 16, '2021-06-27', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
`payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`) VALUES
(5, '11', 'd388939cdaca4087acca75574a34b035', 759.00, '', 'credit'),
(6, '12', '4e2738d7eade4f57b5fd32434239d35f', 299.00, '', 'credit'),
(7, '12', 'd7a5b179cd07480782fc2d21edec7031', 299.00, '', 'credit'),
(8, '12', 'a0f61b1acd6b444ba5856cc4387e7710', 299.00, '', 'pending'),
(9, '12', '0e2fdf1541994d338c676201097d2481', 598.00, '', 'credit'),
(10, '12', '8b0791e3eb764e45b497b0f0c401d9d6', 299.00, '', 'credit'),
(11, '12', '92c9c474ae864d01b81f7e2f4d3a098e', 299.00, '', 'credit'),
(20, '11', '6863fbdf68be45d5a77aa01774a80885', 759.00, '', 'credit'),
(21, '11', 'ee7d6cea937c4f06b6e5e1fffe47b778', 759.00, '', 'credit'),
(22, '12', 'f7ce91d5964c462fa3972f6cb5373d4a', 299.00, '', 'credit'),
(23, '11', '939d866425ef479c84e276e664ce5a31', 1518.00, '', 'credit'),
(29, '10,11,12,', 'df952fa6bacd4f389de80b1080ed3871', 1342.00, '', 'credit'),
(30, '4,12,', 'd19818d2ba3543ffa03a79a7eb64901b', 94279.00, '', 'credit'),
(31, '11,12,', '2c648ec714914c18b447309d691b7eef', 1058.00, '', 'credit'),
(32, '11,12,', '700bf310ca4a4697b59184f61309275a', 1058.00, '', 'credit'),
(33, '11,12,', '639ccfba60cd41eeba02ba5ff1849249', 1058.00, '', 'credit'),
(34, '11,12,', '792c6616026948e48a2fcc07eb35c158', 1058.00, '', 'credit'),
(35, '11,12,', '153427404661463f83a5e8bd080a95e9', 1058.00, '', 'credit'),
(36, '11,12,', '37473185580340ab8c54d102204c7bf9', 1058.00, '', 'credit'),
(37, '11,12,', '2bb8d2ccf3544d0089d211abf4d55e36', 1058.00, '', 'credit'),
(38, '12,13,', '63148f0e7b7043f5a5e470a9ac1d3dde', 1532.00, '', 'credit'),
(39, '12,', '3c209af45445486c8aefb6cfb55dcbb7', 299.00, '', 'credit'),
(40, '9,', '', 1795.00, '', 'credit'),
(41, '11,', '', 759.00, '', 'credit'),
(42, '11,', '', 759.00, '', 'credit'),
(43, '10,', '', 284.00, '', 'credit'),
(44, '15,', '', 4250.00, '', 'credit'),
(45, '10,', '', 1420.00, '', 'credit'),
(46, '15,', '', 21250.00, '', 'credit'),
(47, '9,', '', 359.00, '', 'credit'),
(48, '16,', '', 5000.00, '', 'credit'),
(49, '16,', '', 5000.00, '', 'credit'),
(50, '16,', '', 5000.00, '', 'credit'),
(51, '16,', '', 5000.00, '', 'credit'),
(52, '16,', '', 5000.00, '', 'credit'),
(53, '17,', '', 8351.00, '', 'credit'),
(54, '16,', '', 25000.00, '', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `product_keywords` text,
  `product_views` int(11) DEFAULT '0',
  `product_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(9, '5fc500c7c7bef', 10, 26, 0, 'Abstract Men Hooded Neck Dark Blue T-Shirt', '359', '10% Instant Discount on Bank Of Baroda Credit Cards\r\n10% Instant Discount on Federal Bank Debit Cards', '1598963616s-tnvhdf.jpeg', 100, NULL, 13, 1),
(10, '5fc500c285db4', 10, 26, 0, 'Printed Men Round Neck Yellow T-Shirt', '284', 'Get extra 5.0% off (price inclusive of discount)\r\n10% Instant Discount on Federal Bank Debit Cards\r\n10% Instant Discount on Bank Of Baroda Credit Cards', '1598963703xl-newyork.jpeg', 90, NULL, 9, 1),
(11, '5fc500bc5d3e3', 11, 27, 0, 'Women Printed Pure Cotton A-line Kurta  (White, Blue, Pink)', '759', '10% Instant Discount on Federal Bank Debit Cards\r\n10% Instant Discount on Bank Of Baroda Credit Cards\r\n5% Unlimited Cashback on Flipkart Axis Bank Credit Card', '1598963806xxl-md377.jpeg', 100, NULL, 28, 1),
(14, '60ce27cab1689', 10, 26, 0, 'Men Shirt', '500', '&lt;p style=&quot;box-sizing: inherit; border: 0px; font-size: 15px; margin-bottom: 1.6em; outline: 0px; padding: 0px; vertical-align: baseline; font-family: Lato, sans-serif; background-color: rgb(249, 249, 249);&quot;&gt;Brand :POLO&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; border: 0px; font-size: 15px; margin-bottom: 1.6em; outline: 0px; padding: 0px; vertical-align: baseline; font-family: Lato, sans-serif; background-color: rgb(249, 249, 249);&quot;&gt;Different Size Available&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; border: 0px; font-size: 15px; margin-bottom: 1.6em; outline: 0px; padding: 0px; vertical-align: baseline; font-family: Lato, sans-serif; background-color: rgb(249, 249, 249);&quot;&gt;Best Quality Shirts&lt;/p&gt;', '1624123338poloshirt.jpg', 100, NULL, 1, 1),
(15, '60cec2d4eeb2f', 10, 29, 0, 'Black Embroidered Kurta Pajama', '4250', '&lt;ul class=&quot;hongo-accordion-section&quot; role=&quot;tablist&quot; style=&quot;width: 456px; color: rgb(128, 128, 128); font-family: &amp;quot;Source Sans Pro&amp;quot;, sans-serif;&quot;&gt;&lt;li class=&quot;description_tab&quot; id=&quot;tab-title-description&quot; role=&quot;tab&quot; aria-controls=&quot;tab-description&quot; style=&quot;border-bottom: 1px solid rgb(232, 232, 232); float: left; width: 456px;&quot;&gt;&lt;p class=&quot;hongo-accordion-section-content woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content open&quot; id=&quot;tab-description&quot; role=&quot;tabpanel&quot; aria-labelledby=&quot;tab-title-description&quot; style=&quot;margin-bottom: 0px; background-color: transparent; border-width: 0px; border-style: initial; border-color: initial; border-radius: 0px; box-shadow: none; padding: 5px 0px 25px; clear: both; width: 456px; float: left;&quot;&gt;&lt;section class=&quot;vc_row wpb_row vc_row-fluid  vc_custom_1550641386235   vc_row-has-fill&quot; style=&quot;padding: 0px; overflow: hidden; margin: 0px; border: 0px; float: left; clear: both; width: 456px;&quot;&gt;&lt;p class=&quot;wpb_column vc_column_container col-xs-mobile-fullwidth vc_col-sm-12 vc_col-md-6 wow fadeIn animated&quot; data-wow-delay=&quot;200ms&quot; data-wow-duration=&quot;1500ms&quot; style=&quot;animation-name: fadeIn; animation-duration: 1500ms; animation-fill-mode: both; width: 228px; position: relative; min-height: 1px; padding-left: 0px; padding-right: 0px; float: left; visibility: visible; animation-delay: 200ms; transition-duration: 1ms !important; animation-iteration-count: 1 !important;&quot;&gt;&lt;p class=&quot;vc_column-inner  hongo_responsive_1566294673742&quot; style=&quot;padding-left: 0px; padding-right: 0px; width: 228px; padding-top: 0px;&quot;&gt;&lt;p class=&quot;wpb_wrapper&quot; style=&quot;padding-left: 0px; padding-right: 0px;&quot;&gt;&lt;p class=&quot;text-block-content hongo-text-block-2 vc_custom_1613647859102 last-paragraph-no-margin&quot; style=&quot;padding-left: 0px; padding-right: 0px; margin-bottom: 30px !important;&quot;&gt;&lt;p style=&quot;margin-bottom: 25px;&quot;&gt;Black Embroidered Kurta Pajama&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px;&quot;&gt;( Short Length Kurta )&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;KEY FEATURES&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;margin-bottom: 15px; padding-left: 16px; list-style-type: disc;&quot;&gt;&lt;li&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;Color: Black&lt;/li&gt;&lt;li&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; Embellishment: Embroidery&lt;/li&gt;&lt;li&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;Material: Wash-And-Wear&lt;/li&gt;&lt;li&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; Premium Quality&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-bottom: 25px;&quot;&gt;Super Fine stitching&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;WHATâ€™S IN THE BOX?&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px;&quot;&gt;1 x Black Embroidered Kurta+Pajama&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Shipping Weight (kg)&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;0.5&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/section&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;', '1624163216kurtap.jpg', 100, NULL, 11, 1),
(16, '60ced2cf7a859', 10, 30, 14, 'Zara Man Shirt for Men', '5000', '&lt;p cel_widget_id=&quot;dpx-softlines-product-description_csm_instrumentation_wrapper&quot; class=&quot;celwidget&quot; data-csa-c-id=&quot;ykg0m8-242197-8qu8js-e8txeg&quot; data-cel-widget=&quot;dpx-softlines-product-description_csm_instrumentation_wrapper&quot; style=&quot;color: rgb(15, 17, 17); font-family: Arial, sans-serif;&quot;&gt;&lt;p id=&quot;descriptionAndDetails&quot; class=&quot;a-section a-spacing-extra-large&quot; style=&quot;margin-bottom: 0px;&quot;&gt;&lt;p id=&quot;dp_productDescription_container_div&quot; class=&quot;celwidget&quot; data-feature-name=&quot;productDescription&quot; data-csa-c-id=&quot;qoh84n-9n3bab-ro35bx-x2x17y&quot; data-cel-widget=&quot;dp_productDescription_container_div&quot;&gt;&lt;p data-feature-name=&quot;productDescription&quot; data-template-name=&quot;productDescription&quot; id=&quot;productDescription_feature_div&quot; class=&quot;a-row feature&quot; data-cel-widget=&quot;productDescription_feature_div&quot; style=&quot;width: 1206px;&quot;&gt;&lt;p id=&quot;productDescription&quot; class=&quot;a-section a-spacing-small&quot; style=&quot;margin-top: 0.5em; margin-bottom: 0em; margin-left: 25px; overflow-wrap: break-word; font-size: small; line-height: initial;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;&quot;&gt;made in turkey Machine Wash Warm Use Only Non Chlorine Tumble Dry Steam Iron As Needed&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;p cel_widget_id=&quot;dpx-btf-productDocuments_csm_instrumentation_wrapper&quot; class=&quot;celwidget&quot; data-csa-c-id=&quot;u4x2j5-3ok46n-mfbiap-2hqo4&quot; data-cel-widget=&quot;dpx-btf-productDocuments_csm_instrumentation_wrapper&quot; style=&quot;color: rgb(15, 17, 17); font-family: Arial, sans-serif;&quot;&gt;&lt;/p&gt;&lt;p cel_widget_id=&quot;dpx-aplus-brand-story_csm_instrumentation_wrapper&quot; class=&quot;celwidget&quot; data-csa-c-id=&quot;boqb3h-1tcf4k-bhx0d-jsm4jl&quot; data-cel-widget=&quot;dpx-aplus-brand-story_csm_instrumentation_wrapper&quot; style=&quot;color: rgb(15, 17, 17); font-family: Arial, sans-serif;&quot;&gt;&lt;/p&gt;&lt;p cel_widget_id=&quot;dpx-softlines-important-information_csm_instrumentation_wrapper&quot; class=&quot;celwidget&quot; data-csa-c-id=&quot;p0gbb1-lhhblb-4fqd3i-x615k9&quot; data-cel-widget=&quot;dpx-softlines-important-information_csm_instrumentation_wrapper&quot; style=&quot;color: rgb(15, 17, 17); font-family: Arial, sans-serif;&quot;&gt;&lt;/p&gt;&lt;p cel_widget_id=&quot;dpx-detail-bullets_csm_instrumentation_wrapper&quot; class=&quot;celwidget&quot; data-csa-c-id=&quot;5lqqcg-uba6ny-2z8c2-4read4&quot; data-cel-widget=&quot;dpx-detail-bullets_csm_instrumentation_wrapper&quot; style=&quot;color: rgb(15, 17, 17); font-family: Arial, sans-serif;&quot;&gt;&lt;p id=&quot;detailBullets&quot; class=&quot;celwidget&quot; data-feature-name=&quot;detailBullets&quot; data-csa-c-id=&quot;hsel5w-dz36m2-rhmgx0-yulba1&quot; data-cel-widget=&quot;detailBullets&quot;&gt;&lt;/p&gt;&lt;/p&gt;', '1624167119zara.jpg', 100, NULL, 13, 1),
(17, '60d772700e4b3', 11, 31, 15, 'Brand Maria.B Embroidered 3PC Twill Linen Dress with Wool Shawl', '8351', '&lt;ul style=&quot;list-style-type: disc; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;&quot;&gt;&lt;li style=&quot;margin-bottom: 0.6em; margin-left: 1.3em;&quot;&gt;Neckline Heavy Embroidery &amp;amp; Sitari Work Patch&lt;/li&gt;&lt;li style=&quot;margin-bottom: 0.6em; margin-left: 1.3em;&quot;&gt;Print Trouser&lt;span class=&quot;text_exposed_show&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;margin-bottom: 0.6em; margin-left: 1.3em;&quot;&gt;&lt;span class=&quot;text_exposed_show&quot;&gt;Wool Shawl&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul style=&quot;list-style-type: disc; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;&quot;&gt;&lt;li style=&quot;margin-bottom: 0.6em; margin-left: 1.3em;&quot;&gt;Cash on Delivery&lt;/li&gt;&lt;li style=&quot;margin-bottom: 0.6em; margin-left: 1.3em;&quot;&gt;Need Help? WhatsApp Us: 0345-3481127&lt;/li&gt;&lt;li style=&quot;margin-bottom: 0.6em; margin-left: 1.3em;&quot;&gt;Note:&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Please Bear in mind that colors in the picture may vary Slightly From Actual Item due to Lighting Effects, Your Device Displays or printing quality of Catalogue or inlay cards.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', '1624732272image-2021-06-26-233107.png', 50, NULL, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE IF NOT EXISTS `product_cart` (
`s_no` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `product_cart` (`s_no`, `product_id`, `user_id`) VALUES
(1, 10, 16);
-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_categories` (
`sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT '0',
  `show_in_header` tinyint(4) NOT NULL DEFAULT '1',
  `show_in_footer` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(32, 'Men', 10, 0, 1, 1),
(26, 'Men''s T-Shirts', 10, 3, 0, 1),
(27, 'Kurti''s', 11, 1, 0, 1),
(31, 'Women', 11, 1, 1, 1),
(29, 'Kurta Pajama', 10, 1, 0, 1),
(30, 'Casual shirts', 10, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `username`, `email`, `password`, `mobile`, `address`, `city`, `user_role`) VALUES
(16, 'Khizar', 'Siddiqui', 'khizarsiddiqui10@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b', '+923178906226', 'H 75', 'Karachi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
 ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
 ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
 ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
 ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
