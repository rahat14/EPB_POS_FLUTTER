-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 08:49 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_accounts_mapping`
--

CREATE TABLE `acc_accounts_mapping` (
  `mapping_id` int(11) NOT NULL,
  `operation_name` int(1) NOT NULL COMMENT 'acc_mapping_types.mapping_type_id',
  `account_id_auto` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `machine_id` varchar(30) NOT NULL,
  `outlet_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_accounts_mapping`
--

INSERT INTO `acc_accounts_mapping` (`mapping_id`, `operation_name`, `account_id_auto`, `created_by`, `create_date`, `updated_by`, `update_date`, `machine_id`, `outlet_id`) VALUES
(1, 1, 100001, 1, '2020-11-14 10:43:32', 0, '2020-11-14 10:43:32', '', 2),
(2, 2, 300001, 1, '2020-11-14 10:44:00', 0, '2020-11-14 10:44:00', '', 2),
(3, 3, 400002, 1, '2020-11-14 10:44:17', 0, '2020-11-14 10:44:17', '', 2),
(4, 4, 100004, 1, '2020-11-14 10:44:32', 0, '2020-11-14 10:44:32', '', 2),
(5, 5, 200003, 1, '2020-11-14 11:43:44', 0, '2020-11-14 11:43:44', '', 2),
(6, 6, 200002, 1, '2020-12-28 18:13:54', 0, '2020-12-28 18:13:54', '', 2),
(7, 7, 400003, 1, '2020-11-16 18:32:26', 0, '2020-11-16 18:32:26', '', 2),
(8, 8, 400001, 1, '2020-11-16 18:32:16', 0, '2020-11-16 18:32:16', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `acc_chart_of_accounts`
--

CREATE TABLE `acc_chart_of_accounts` (
  `account_id_auto` int(11) NOT NULL,
  `account_id` varchar(15) NOT NULL,
  `account_type` int(1) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `opening_balance` float NOT NULL DEFAULT 0,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `machine_id` varchar(30) NOT NULL,
  `outlet_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_chart_of_accounts`
--

INSERT INTO `acc_chart_of_accounts` (`account_id_auto`, `account_id`, `account_type`, `account_name`, `parent_id`, `opening_balance`, `is_active`, `created_by`, `create_date`, `updated_by`, `update_date`, `machine_id`, `outlet_id`) VALUES
(100001, '1001', 1, 'Cash', 0, 0, 1, 1, '2020-11-14 01:23:22', 0, '2020-11-14 01:23:22', '', 2),
(100002, '1002', 1, 'Bank', 0, 0, 1, 1, '2020-11-14 10:21:56', 0, '2020-11-14 10:21:56', '', 2),
(100003, '1003', 1, 'bKash', 0, 0, 1, 1, '2020-11-14 10:22:16', 0, '2020-11-14 10:22:16', '', 2),
(100004, '1004', 1, 'Customer Receivable', 0, 0, 1, 1, '2020-11-14 10:23:07', 0, '2020-11-14 10:23:07', '', 2),
(200001, '2001', 2, 'Owner Equity', 0, 0, 1, 1, '2020-11-14 01:24:16', 0, '2020-11-14 01:24:16', '', 2),
(200002, '2002', 2, 'Profit and loss account', 0, 0, 1, 1, '2020-11-14 10:56:12', 0, '2020-11-14 10:56:12', '', 2),
(200003, '2003', 2, 'Supplier Payables', 0, 0, 1, 1, '2020-11-14 11:43:22', 0, '2020-11-14 11:43:22', '', 2),
(300001, '3001', 3, 'Sales', 0, 0, 1, 1, '2020-11-14 10:30:26', 0, '2020-11-14 10:30:26', '', 2),
(400001, '4001', 4, 'Miscellaneous Expenses', 0, 0, 1, 1, '2020-11-14 10:35:53', 0, '2020-11-14 10:35:53', '', 2),
(400002, '4002', 4, 'Purchase', 0, 0, 1, 1, '2020-11-14 10:42:40', 0, '2020-11-14 10:42:40', '', 2),
(400003, '4003', 4, 'Wastage', 0, 0, 1, 1, '2020-11-14 10:43:13', 0, '2020-11-14 10:43:13', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `acc_mapping_types`
--

CREATE TABLE `acc_mapping_types` (
  `mapping_type_id` int(1) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_mapping_types`
--

INSERT INTO `acc_mapping_types` (`mapping_type_id`, `type_name`) VALUES
(1, 'Cash Account'),
(2, 'Sales Account'),
(3, 'Purchase Account'),
(4, 'Customer Account'),
(5, 'Supplier Account'),
(6, 'Profit Loss Account'),
(7, 'Wastage Account'),
(8, 'Miscellaneous Account');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction_details`
--

CREATE TABLE `acc_transaction_details` (
  `txn_id` int(11) NOT NULL,
  `account_id_auto` int(11) NOT NULL,
  `amount_dr` float NOT NULL DEFAULT 0,
  `amount_cr` float NOT NULL DEFAULT 0,
  `referance_no` varchar(20) NOT NULL COMMENT 'customer_id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction_mst`
--

CREATE TABLE `acc_transaction_mst` (
  `txn_id` int(11) NOT NULL,
  `txn_date_auto` timestamp NOT NULL DEFAULT current_timestamp(),
  `voucher_date` date NOT NULL,
  `particulars` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  `txn_type` varchar(10) NOT NULL COMMENT '6	TransType	Char(6)	Manual,Sales,Purchase',
  `created_by` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `machine_id` varchar(30) NOT NULL,
  `outlet_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_payment_methods`
--

CREATE TABLE `admin_payment_methods` (
  `id` int(11) NOT NULL,
  `payment_method_id` smallint(6) NOT NULL,
  `method_name` varchar(50) NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_payment_methods`
--

INSERT INTO `admin_payment_methods` (`id`, `payment_method_id`, `method_name`, `del_status`) VALUES
(1, 1, 'Cash', 'Live'),
(2, 2, 'Card', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_currencies`
--

CREATE TABLE `tbl_admin_currencies` (
  `id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `symbol` varchar(25) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_currencies`
--

INSERT INTO `tbl_admin_currencies` (`id`, `country`, `currency`, `code`, `symbol`, `del_status`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', 'Live'),
(2, 'America', 'Dollars', 'USD', '$', 'Live'),
(3, 'Afghanistan', 'Afghanis', 'AF', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(4, 'Argentina', 'Pesos', 'ARS', '$', 'Live'),
(5, 'Aruba', 'Guilders', 'AWG', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(6, 'Australia', 'Dollars', 'AUD', '$', 'Live'),
(7, 'Azerbaijan', 'New Manats', 'AZ', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(8, 'Bahamas', 'Dollars', 'BSD', '$', 'Live'),
(9, 'Barbados', 'Dollars', 'BBD', '$', 'Live'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', 'Live'),
(11, 'Belgium', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', 'Live'),
(13, 'Bermuda', 'Dollars', 'BMD', '$', 'Live'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', 'Live'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', 'Live'),
(16, 'Botswana', 'Pula\'s', 'BWP', 'P', 'Live'),
(17, 'Bulgaria', 'Leva', 'BG', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(18, 'Brazil', 'Reais', 'BRL', 'R$', 'Live'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', 'Live'),
(21, 'Cambodia', 'Riels', 'KHR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(22, 'Canada', 'Dollars', 'CAD', '$', 'Live'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', 'Live'),
(24, 'Chile', 'Pesos', 'CLP', '$', 'Live'),
(25, 'China', 'Yuan Renminbi', 'CNY', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(26, 'Colombia', 'Pesos', 'COP', '$', 'Live'),
(27, 'Costa Rica', 'ColÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â', 'CRC', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', 'Live'),
(29, 'Cuba', 'Pesos', 'CUP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(30, 'Cyprus', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'KÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢Ãƒ', 'Live'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', 'Live'),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', 'Live'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', 'Live'),
(35, 'Egypt', 'Pounds', 'EGP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(36, 'El Salvador', 'Colones', 'SVC', '$', 'Live'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(38, 'Euro', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(39, 'Falkland Islands', 'Pounds', 'FKP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(40, 'Fiji', 'Dollars', 'FJD', '$', 'Live'),
(41, 'France', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(42, 'Ghana', 'Cedis', 'GHC', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(43, 'Gibraltar', 'Pounds', 'GIP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(44, 'Greece', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', 'Live'),
(46, 'Guernsey', 'Pounds', 'GGP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(47, 'Guyana', 'Dollars', 'GYD', '$', 'Live'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', 'Live'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', 'Live'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', 'Live'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', 'Live'),
(53, 'India', 'Rupees', 'INR', 'Rp', 'Live'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', 'Live'),
(55, 'Iran', 'Rials', 'IRR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(56, 'Ireland', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(57, 'Isle of Man', 'Pounds', 'IMP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(58, 'Israel', 'New Shekels', 'ILS', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(59, 'Italy', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', 'Live'),
(61, 'Japan', 'Yen', 'JPY', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(62, 'Jersey', 'Pounds', 'JEP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(64, 'Korea (North)', 'Won', 'KPW', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(65, 'Korea (South)', 'Won', 'KRW', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(67, 'Laos', 'Kips', 'LAK', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', 'Live'),
(69, 'Lebanon', 'Pounds', 'LBP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(70, 'Liberia', 'Dollars', 'LRD', '$', 'Live'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', 'Live'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', 'Live'),
(73, 'Luxembourg', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(74, 'Macedonia', 'Denars', 'MKD', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', 'Live'),
(76, 'Malta', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(77, 'Mauritius', 'Rupees', 'MUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(78, 'Mexico', 'Pesos', 'MX', '$', 'Live'),
(79, 'Mongolia', 'Tugriks', 'MNT', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(80, 'Mozambique', 'Meticais', 'MZ', 'MT', 'Live'),
(81, 'Namibia', 'Dollars', 'NAD', '$', 'Live'),
(82, 'Nepal', 'Rupees', 'NPR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(84, 'Netherlands', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(85, 'New Zealand', 'Dollars', 'NZD', '$', 'Live'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', 'Live'),
(87, 'Nigeria', 'Nairas', 'NG', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(88, 'North Korea', 'Won', 'KPW', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(89, 'Norway', 'Krone', 'NOK', 'kr', 'Live'),
(90, 'Oman', 'Rials', 'OMR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(91, 'Pakistan', 'Rupees', 'PKR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', 'Live'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', 'Live'),
(94, 'Peru', 'Nuevos Soles', 'PE', 'S/.', 'Live'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', 'Live'),
(96, 'Poland', 'Zlotych', 'PL', 'zÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢Ãƒ', 'Live'),
(97, 'Qatar', 'Rials', 'QAR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(98, 'Romania', 'New Lei', 'RO', 'lei', 'Live'),
(99, 'Russia', 'Rubles', 'RUB', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(100, 'Saint Helena', 'Pounds', 'SHP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(102, 'Serbia', 'Dinars', 'RSD', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(103, 'Seychelles', 'Rupees', 'SCR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(104, 'Singapore', 'Dollars', 'SGD', '$', 'Live'),
(105, 'Slovenia', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', 'Live'),
(107, 'Somalia', 'Shillings', 'SOS', 'S', 'Live'),
(108, 'South Africa', 'Rand', 'ZAR', 'R', 'Live'),
(109, 'South Korea', 'Won', 'KRW', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(110, 'Spain', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(111, 'Sri Lanka', 'Rupees', 'LKR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', 'Live'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', 'Live'),
(114, 'Suriname', 'Dollars', 'SRD', '$', 'Live'),
(115, 'Syria', 'Pounds', 'SYP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', 'Live'),
(117, 'Thailand', 'Baht', 'THB', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', 'Live'),
(119, 'Turkey', 'Lira', 'TRY', 'TL', 'Live'),
(120, 'Turkey', 'Liras', 'TRL', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', 'Live'),
(122, 'Ukraine', 'Hryvnia', 'UAH', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(123, 'United Kingdom', 'Pounds', 'GBP', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(124, 'United States of America', 'Dollars', 'USD', '$', 'Live'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', 'Live'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(127, 'Vatican City', 'Euro', 'EUR', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', 'Live'),
(129, 'Vietnam', 'Dong', 'VND', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(130, 'Yemen', 'Rials', 'YER', 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ', 'Live'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', 'Live'),
(132, 'Bangladesh', 'Bangladeshi Taka', 'BDT', '৳', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_user_menus`
--

CREATE TABLE `tbl_admin_user_menus` (
  `id` int(10) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `controller_name` varchar(50) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_user_menus`
--

INSERT INTO `tbl_admin_user_menus` (`id`, `menu_name`, `controller_name`, `del_status`) VALUES
(1, 'Sale', 'Sale', 'Live'),
(2, 'Purchase', 'Purchase', 'Live'),
(3, 'Inventory', 'Inventory', 'Live'),
(4, 'Waste', 'Waste', 'Live'),
(6, 'Expense', 'Expense', 'Live'),
(7, 'Report', 'Report', 'Live'),
(8, 'Dashboard', 'Dashboard', 'Live'),
(9, 'Master', 'Master', 'Live'),
(10, 'User', 'User', 'Live'),
(11, 'Supplier Payment', 'SupplierPayment', 'Live'),
(12, 'PdfGenerator', 'PdfGenerator', 'Live'),
(13, 'InventoryAdjustment', 'InventoryAdjustment', 'Live'),
(14, 'Subscription', 'Subscription', 'Live'),
(15, 'TomorrowsDelivery', 'TomorrowsDelivery', 'Live'),
(16, 'TodaysDelivery', 'TodaysDelivery', 'Live'),
(17, 'Analytic Item', 'AnalyticItem', 'Live'),
(18, 'Customer Payment', 'CustomerPayment', 'Live'),
(19, 'Transfer', 'Transfer', 'Live'),
(20, 'Outlet', 'Outlet', 'Live'),
(21, 'Production', 'Production', 'Live'),
(22, 'ItemExchange', 'ItemExchange', 'Live'),
(23, 'Offer', 'Offer', 'Live'),
(24, 'Purchase Return', 'PurchaseReturn', 'Live'),
(25, 'Affiliate', 'Affiliate', 'Live'),
(26, 'Accounting', 'Accounting', 'Live'),
(27, 'Inventory Serial', 'InventorySerial', 'Live'),
(28, 'Brands', 'Brands', 'Live'),
(29, 'Sale Return', 'SaleReturn', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_affiliate_amount`
--

CREATE TABLE `tbl_affiliate_amount` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `a_customer_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_affiliate_customers`
--

CREATE TABLE `tbl_affiliate_customers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `percentage_amount` float DEFAULT NULL,
  `minimum_payout_amount` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_af_customer_payments`
--

CREATE TABLE `tbl_af_customer_payments` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `a_customer_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_areas`
--

CREATE TABLE `tbl_areas` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `lat` varchar(256) DEFAULT NULL,
  `lng` varchar(256) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_areas`
--

INSERT INTO `tbl_areas` (`id`, `name`, `lat`, `lng`, `company_id`, `del_status`) VALUES
(1, 'Dhaka, Bangladesh', '23.810332', '90.41251809999994', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `id` int(10) NOT NULL,
  `brand_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cardlists`
--

CREATE TABLE `tbl_cardlists` (
  `id` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `card_no` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_registers`
--

CREATE TABLE `tbl_cash_registers` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `opening_balance` float(10,2) DEFAULT NULL,
  `closing_balance` float(10,2) NOT NULL,
  `sales_paid` float(10,2) DEFAULT NULL,
  `sales_due` float(10,2) DEFAULT NULL,
  `coupon_amount` float(10,2) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `open_time` varchar(20) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `entry_type` int(5) DEFAULT 1,
  `status` int(5) NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkouts`
--

CREATE TABLE `tbl_checkouts` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `item_data` text DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_checkouts`
--

INSERT INTO `tbl_checkouts` (`id`, `customer_name`, `customer_phone`, `outlet_id`, `item_data`, `del_status`) VALUES
(1, 'Zakir', '01796554787', 1, '[{\"item_id\":\"38\",\"qty\":\"1\"},{\"item_id\":\"29\",\"qty\":\"1\"},{\"item_id\":\"21\",\"qty\":\"1\"},{\"item_id\":\"25\",\"qty\":\"1\"},{\"item_id\":\"24\",\"qty\":\"1\"},{\"item_id\":\"30\",\"qty\":\"1\"},{\"item_id\":\"3\",\"qty\":\"1\"},{\"item_id\":\"34\",\"qty\":\"1\"},{\"item_id\":\"12\",\"qty\":\"1\"},{\"item_id\":\"11\",\"qty\":\"1\"},{\"item_id\":\"5\",\"qty\":\"1\"}]', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companies`
--

CREATE TABLE `tbl_companies` (
  `id` int(10) NOT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_companies`
--

INSERT INTO `tbl_companies` (`id`, `currency`, `timezone`, `date_format`) VALUES
(1, 'ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ', 'Asia/Dhaka', 'd/m/Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configuration`
--

CREATE TABLE `tbl_configuration` (
  `id` int(10) NOT NULL,
  `system_name` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `google_plus` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `system_logo` varchar(300) DEFAULT NULL,
  `system_featured_photo` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_configuration`
--

INSERT INTO `tbl_configuration` (`id`, `system_name`, `phone`, `address`, `email`, `facebook`, `google_plus`, `twitter`, `system_logo`, `system_featured_photo`) VALUES
(2, 'Easy POS BD', '01785658412', 'Dhaka,Bangladesh', 'garnerstationery@gmail.com', 'www.facebook.com/garnerstationery', '', '', '8385a300858707e881a99bf38a4b535c.jpg', '4e7287054a1413783f44517a1296db32.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_us`
--

CREATE TABLE `tbl_contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_contact_us`
--

INSERT INTO `tbl_contact_us` (`id`, `name`, `mobile`, `email`, `message`, `del_status`, `added_date`) VALUES
(2, 'S M Abdul Kader', '+8801737909810', 'smak@gmail.com', 'This Is a Test Message.....', 'Live', '2018-12-26 10:29:04'),
(3, 'Md. Zakirul Islam', '01741214589', 'zakircse@gmail.com', 'Happy New Year to everyone...!', 'Deleted', '2018-12-26 10:32:16'),
(4, 'S M Abdul Kader', '542354632', 'srabon1684@gmail.com', 'ewvgewrtbde', 'Deleted', '2018-12-26 10:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `anniversary_date` date DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `credit_sale` varchar(10) NOT NULL DEFAULT 'No',
  `sync_status` int(10) NOT NULL DEFAULT 1,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `akc_id` int(11) NOT NULL DEFAULT 1,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `dob`, `address`, `registration_date`, `anniversary_date`, `area_id`, `user_id`, `company_id`, `credit_sale`, `sync_status`, `row_updated`, `akc_id`, `del_status`) VALUES
(1, 'Walk-in Customer', '', '', NULL, '', '0000-00-00', NULL, 0, 1, 1, 'No', 1, '2019-04-02 03:14:38', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_address`
--

CREATE TABLE `tbl_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `del_status` varchar(5) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_payments`
--

CREATE TABLE `tbl_customer_payments` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_relations`
--

CREATE TABLE `tbl_customer_relations` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `relation_id` int(2) DEFAULT NULL,
  `relation` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `del_status` varchar(200) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_demo_requests`
--

CREATE TABLE `tbl_demo_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `business_name` varchar(200) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `message` text DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_desktop_server_config`
--

CREATE TABLE `tbl_desktop_server_config` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `server_root_url` varchar(250) DEFAULT NULL,
  `client_setup_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_desktop_server_config`
--

INSERT INTO `tbl_desktop_server_config` (`id`, `user_name`, `outlet_id`, `server_root_url`, `client_setup_id`) VALUES
(1, 'Outlet Name', 2, 'https://sub_domain.easyposbd.com/', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discountsettings`
--

CREATE TABLE `tbl_discountsettings` (
  `id` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `cat_id` int(10) DEFAULT NULL,
  `percentage` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `is_salesman` varchar(10) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`id`, `name`, `designation`, `phone`, `description`, `user_id`, `company_id`, `del_status`, `is_salesman`) VALUES
(1, 'Tonima', 'Admin', '01906440632', '', 1, 1, 'Live', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exchanges`
--

CREATE TABLE `tbl_exchanges` (
  `id` int(10) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT 'Exchange/Return',
  `reference_no` varchar(50) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `exchange_subtotal` float(10,2) DEFAULT NULL,
  `new_subtotal` float(10,2) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `payable` float(10,2) DEFAULT NULL,
  `due` float DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `new_disc_amount` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `sale_amunt` float(10,2) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(50) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exchange_items`
--

CREATE TABLE `tbl_exchange_items` (
  `id` int(10) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `exchange_disc_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `exchange_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exchange_new_items`
--

CREATE TABLE `tbl_exchange_new_items` (
  `id` int(10) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `new_disc_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `exchange_id` int(10) DEFAULT NULL,
  `actual_vat` float DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ref_no` varchar(30) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_items`
--

CREATE TABLE `tbl_expense_items` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `feedback` varchar(300) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `company_id` int(11) NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus`
--

CREATE TABLE `tbl_food_menus` (
  `id` int(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `health_product` enum('Yes','No','','') DEFAULT NULL,
  `available_for_subscription` enum('Yes','No','','') DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sale_price` float(10,2) DEFAULT NULL,
  `vat_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `pc_original_thumb` varchar(250) DEFAULT NULL,
  `pc_mobile_thumb` varchar(250) DEFAULT NULL,
  `pc_teb_thumb` varchar(250) DEFAULT NULL,
  `pc_desktop_thumb` varchar(250) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_items`
--

CREATE TABLE `tbl_food_menus_items` (
  `id` bigint(50) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menu_categories`
--

CREATE TABLE `tbl_food_menu_categories` (
  `id` int(10) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_get_quotes`
--

CREATE TABLE `tbl_get_quotes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` int(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `outlets_no` varchar(100) DEFAULT NULL,
  `users_no` varchar(100) DEFAULT NULL,
  `business_type` varchar(100) DEFAULT NULL,
  `business_location` varchar(100) DEFAULT NULL,
  `del_status` varchar(11) NOT NULL DEFAULT 'Live',
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds`
--

CREATE TABLE `tbl_holds` (
  `id` int(11) NOT NULL,
  `table_content` longtext DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `sale_mode` varchar(20) NOT NULL DEFAULT 'Normal',
  `setup_id` int(11) DEFAULT NULL,
  `customer_name_mobile` varchar(100) DEFAULT NULL,
  `total_item` varchar(100) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_discount_field` float(10,2) DEFAULT NULL,
  `del_status` varchar(15) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventoryadjustments`
--

CREATE TABLE `tbl_inventoryadjustments` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventoryadjustment_items`
--

CREATE TABLE `tbl_inventoryadjustment_items` (
  `id` int(10) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `inventoryadjustment_amount` float(10,2) DEFAULT NULL,
  `inventoryadjustment_id` int(10) DEFAULT NULL,
  `inventoryadjustment_status` varchar(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `id` int(10) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '0',
  `custom_code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type_id` int(11) NOT NULL DEFAULT 1,
  `category_id` int(10) DEFAULT NULL,
  `purchase_price` float(10,2) DEFAULT NULL,
  `dealer_price` float(10,2) DEFAULT 0.00,
  `sale_price` double(10,2) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `waight` varchar(30) DEFAULT NULL,
  `material` varchar(200) DEFAULT NULL,
  `alert_quantity` float(10,2) DEFAULT NULL,
  `vat_id` int(11) DEFAULT NULL,
  `unit_id` int(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `available_for_subscription` varchar(10) NOT NULL DEFAULT 'No',
  `featured_item` varchar(10) DEFAULT 'No',
  `pc_original_thumb` varchar(255) DEFAULT NULL,
  `pc_mobile_thumb` varchar(255) DEFAULT NULL,
  `pc_teb_thumb` varchar(255) DEFAULT NULL,
  `pc_desktop_thumb` varchar(255) DEFAULT NULL,
  `perishable_status` varchar(10) DEFAULT NULL,
  `perishable_days` varchar(10) DEFAULT NULL,
  `production_item` varchar(10) NOT NULL DEFAULT 'No',
  `del_status` varchar(10) DEFAULT 'Live',
  `status` varchar(15) NOT NULL DEFAULT 'Active',
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`id`, `code`, `custom_code`, `name`, `type_id`, `category_id`, `purchase_price`, `dealer_price`, `sale_price`, `brand`, `brand_id`, `color`, `size`, `waight`, `material`, `alert_quantity`, `vat_id`, `unit_id`, `user_id`, `expiry_date`, `company_id`, `available_for_subscription`, `featured_item`, `pc_original_thumb`, `pc_mobile_thumb`, `pc_teb_thumb`, `pc_desktop_thumb`, `perishable_status`, `perishable_days`, `production_item`, `del_status`, `status`, `row_updated`, `description`) VALUES
(1, '12', '11', 'test', 1, 1, 123.00, 120.00, 124.00, 'test', 1, 'red', 's', '1', 'cas', 2.00, 1, 1, 1, '2022-01-02', 1, 'No', 'No', 're', 're', 're', 're', '0', '0', 'No', 'Live', 'Active', '2022-01-03 15:56:57', 'dsdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_categories`
--

CREATE TABLE `tbl_item_categories` (
  `id` int(10) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `identity_i` int(11) DEFAULT NULL,
  `identity_ii` int(11) DEFAULT NULL,
  `identity_iii` int(11) DEFAULT NULL,
  `category_type` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_serials`
--

CREATE TABLE `tbl_item_serials` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `serial` varchar(20) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `is_sold` tinyint(1) NOT NULL DEFAULT 0,
  `row_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` int(11) NOT NULL,
  `notifications_details` varchar(300) DEFAULT NULL,
  `visible_status` int(1) DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) NOT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `outlet_id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `start_date` varchar(20) DEFAULT NULL,
  `end_date` varchar(20) DEFAULT NULL,
  `offer_type` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `active_status` varchar(10) DEFAULT 'active',
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_buy_gets`
--

CREATE TABLE `tbl_offer_buy_gets` (
  `id` int(11) NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `buy_item_id` int(11) DEFAULT NULL,
  `buy_qty` int(11) DEFAULT NULL,
  `get_item_id` int(11) DEFAULT NULL,
  `get_qty` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_coupons`
--

CREATE TABLE `tbl_offer_coupons` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `coupon_no` varchar(50) DEFAULT NULL,
  `discount_amount` float(10,2) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `used_amount` float DEFAULT NULL,
  `used_status` int(11) NOT NULL DEFAULT 0,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_coupon_items`
--

CREATE TABLE `tbl_offer_coupon_items` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_generals`
--

CREATE TABLE `tbl_offer_generals` (
  `id` int(11) NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlets`
--

CREATE TABLE `tbl_outlets` (
  `id` int(10) NOT NULL,
  `outlet_name` varchar(50) DEFAULT NULL,
  `area_id` int(10) DEFAULT NULL,
  `delivery_cost` float(10,2) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `collect_vat` enum('Yes','No') DEFAULT NULL,
  `vat_reg_no` varchar(50) DEFAULT NULL,
  `mushak_name` varchar(100) DEFAULT NULL,
  `invoice_print` enum('Yes','No') DEFAULT NULL,
  `print_select` enum('POS','A4','','') DEFAULT NULL,
  `credit_sale` enum('Yes','No','','') DEFAULT NULL,
  `available_item_alert` enum('Yes','No','','') NOT NULL DEFAULT 'No',
  `kot_print` enum('Yes','No','','') DEFAULT NULL,
  `token_print` enum('Yes','No','','') NOT NULL DEFAULT 'No',
  `starting_date` date DEFAULT NULL,
  `next_expiry` date DEFAULT NULL,
  `sale_price_editable` enum('Yes','No','','') NOT NULL DEFAULT 'No',
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `outlet_type` enum('General Outlet','Warehouse','','') DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_outlets`
--

INSERT INTO `tbl_outlets` (`id`, `outlet_name`, `area_id`, `delivery_cost`, `address`, `phone`, `collect_vat`, `vat_reg_no`, `mushak_name`, `invoice_print`, `print_select`, `credit_sale`, `available_item_alert`, `kot_print`, `token_print`, `starting_date`, `next_expiry`, `sale_price_editable`, `user_id`, `company_id`, `outlet_type`, `row_updated`, `del_status`) VALUES
(1, 'GARNER WareHouse', 1, 20.00, 'Dhaka, Bangladesh', '01906440632', 'Yes', '001375975', 'MUSHAK11', 'Yes', 'POS', 'Yes', 'No', NULL, 'No', '2019-03-03', '2020-03-02', 'Yes', 1, 1, 'Warehouse', '2019-04-01 11:58:13', 'Live'),
(2, 'Garner Lalmatia', 1, 0.00, '2/9, Lalmatia, Block: B', '01534643760', 'Yes', '001375975', 'MUSHAK 11A', 'Yes', 'POS', 'No', 'Yes', NULL, 'Yes', '2019-03-24', '2020-03-23', 'No', 1, 1, 'General Outlet', '2019-04-23 08:56:03', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment_methods`
--

INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`, `row_updated`) VALUES
(1, 'Cash', '', 1, 1, 'Live', '2019-04-02 03:17:28'),
(2, 'Card', '', 1, 1, 'Live', '2019-04-02 03:17:28'),
(3, 'Cheque', '', 1, 1, 'Live', '2019-04-04 07:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plans`
--

CREATE TABLE `tbl_plans` (
  `id` int(11) NOT NULL,
  `plan_days` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(20) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productions`
--

CREATE TABLE `tbl_productions` (
  `id` int(10) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `qty_amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_production_items`
--

CREATE TABLE `tbl_production_items` (
  `id` int(10) NOT NULL,
  `production_item_id` int(10) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `production_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotion_messages`
--

CREATE TABLE `tbl_promotion_messages` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pulls`
--

CREATE TABLE `tbl_pulls` (
  `id` int(11) NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `setup_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pull_updated` timestamp NULL DEFAULT current_timestamp(),
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `subtotal` float(10,2) DEFAULT NULL,
  `other` float(10,2) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `paid` float(10,2) DEFAULT NULL,
  `due` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id`, `reference_no`, `supplier_id`, `date`, `subtotal`, `other`, `grand_total`, `discount`, `paid`, `due`, `note`, `user_id`, `outlet_id`, `del_status`, `voucher_reference_id`) VALUES
(3, 'BULKUPLOAD', 1, '2020-01-01', 0.00, 0.00, 0.00, '0', 0.00, 0.00, 'Bulk upload default', 1, 1, 'Live', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasereturn`
--

CREATE TABLE `tbl_purchasereturn` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `subtotal` float(10,2) DEFAULT NULL,
  `other` float(10,2) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `paid` float(10,2) DEFAULT NULL,
  `due` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasereturn_items`
--

CREATE TABLE `tbl_purchasereturn_items` (
  `id` int(10) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `purchasereturn_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_items`
--

CREATE TABLE `tbl_purchase_items` (
  `id` int(10) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `purchase_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pushs`
--

CREATE TABLE `tbl_pushs` (
  `id` int(11) NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `push_updated` timestamp NULL DEFAULT current_timestamp(),
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_queues`
--

CREATE TABLE `tbl_queues` (
  `id` int(11) NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `count_number` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_queues`
--

INSERT INTO `tbl_queues` (`id`, `outlet_id`, `date`, `count_number`, `del_status`) VALUES
(1, 1, '2019-08-10', 1, 'Live'),
(2, 2, '2020-09-05', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id` int(10) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `sale_no` varchar(30) NOT NULL DEFAULT '000000',
  `items_qtys` text DEFAULT NULL,
  `challan_no` varchar(20) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_reference_no` varchar(20) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `actual_paid_amount` float(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `change_amount` float(10,2) DEFAULT NULL,
  `due_payment_date` date DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `coupon_amount` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `token_no` varchar(50) DEFAULT NULL,
  `sale_date` varchar(20) NOT NULL,
  `sale_date_time` timestamp NULL DEFAULT current_timestamp(),
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `sale_time` varchar(15) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `sale_mode` varchar(20) DEFAULT NULL,
  `parcel` varchar(10) DEFAULT NULL,
  `sync_status` int(11) DEFAULT 1,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ack_id` int(10) NOT NULL DEFAULT 1,
  `del_status` varchar(50) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL,
  `salesman_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details`
--

CREATE TABLE `tbl_sales_details` (
  `id` int(10) NOT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `actual_vat` int(10) DEFAULT NULL,
  `total_vat` float(10,2) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `sales_id` int(10) DEFAULT NULL,
  `sale_details_no` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `ack_id` int(10) DEFAULT 1,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kitchen_show_status` varchar(11) NOT NULL DEFAULT '1',
  `del_status` varchar(50) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL,
  `item_serial_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_inventoryadjustments`
--

CREATE TABLE `tbl_sale_inventoryadjustments` (
  `id` int(10) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `date_time` int(10) DEFAULT NULL,
  `sale_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_inventoryadjustments_detail`
--

CREATE TABLE `tbl_sale_inventoryadjustments_detail` (
  `id` int(10) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `inventoryadjustment` float(10,2) DEFAULT NULL,
  `sale_inventoryadjustment_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_payment_methods`
--

CREATE TABLE `tbl_sale_payment_methods` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_amount` float(10,2) DEFAULT NULL,
  `payment_type` varchar(30) DEFAULT NULL,
  `sale_date` varchar(20) DEFAULT NULL,
  `sale_date_time` timestamp NULL DEFAULT current_timestamp(),
  `ack_id` int(10) NOT NULL DEFAULT 1,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sale_no` varchar(50) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `date_format` varchar(20) DEFAULT NULL,
  `time_zone` varchar(50) DEFAULT NULL,
  `affiliate_status` varchar(15) DEFAULT NULL,
  `barcode_prefix` varchar(3) DEFAULT NULL,
  `minimum_payout_amount` float DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `load_all_item_in_pos` varchar(3) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `date_format`, `time_zone`, `affiliate_status`, `barcode_prefix`, `minimum_payout_amount`, `currency`, `load_all_item_in_pos`, `company_id`, `del_status`) VALUES
(4, 'd/m/Y', 'Asia/Dhaka', NULL, NULL, NULL, '৳', NULL, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

CREATE TABLE `tbl_signup` (
  `id` int(11) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slides`
--

CREATE TABLE `tbl_slides` (
  `id` int(10) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slide_image` varchar(255) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `active_status` varchar(10) NOT NULL DEFAULT 'Live',
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_slides`
--

INSERT INTO `tbl_slides` (`id`, `company_id`, `user_id`, `name`, `slide_image`, `description`, `active_status`, `del_status`) VALUES
(1, 1, 1, 'Test Name', '5ea5a96d266d2a14733e1d58c7ed0a5c.jpg', '50% Discount on Selected Products', 'Live', NULL),
(2, 1, 1, 'Gallery', '36a096dede6d3a5d360bab57eea972b6.jpg', 'Top Image', 'Live', 'Live'),
(3, 1, 1, 'Featured Image', '0bda1407e2ecf5811b06b117b630c99f.jpg', 'Featured Image', 'Live', 'Live'),
(4, 1, 1, 'Infinity', '308d3ee63d0b67b46168a0ce87599383.png', '45% Off in Every Product', 'Live', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriptions`
--

CREATE TABLE `tbl_subscriptions` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(30) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `distance` varchar(20) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `delivery_cost` float(10,2) DEFAULT NULL,
  `discount` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  `cancel_status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription_date`
--

CREATE TABLE `tbl_subscription_date` (
  `id` int(1) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `food_date` date DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live',
  `outlet_id` int(1) DEFAULT NULL,
  `sent_to_kitchen` varchar(20) DEFAULT NULL,
  `sent_to_delivery` varchar(20) DEFAULT NULL,
  `success_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription_date_times`
--

CREATE TABLE `tbl_subscription_date_times` (
  `id` int(11) NOT NULL,
  `sub_date_id` int(11) DEFAULT NULL,
  `food_date_ref_no` varchar(20) DEFAULT NULL,
  `delivery_time` varchar(20) DEFAULT NULL,
  `delivery_moment_name` varchar(10) DEFAULT NULL,
  `delivery_cost` float(10,2) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `sent_to_kitchen` varchar(20) DEFAULT NULL,
  `sent_to_delivery` varchar(20) DEFAULT NULL,
  `delivery_person_id` int(11) DEFAULT NULL,
  `success_status` varchar(20) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription_foods`
--

CREATE TABLE `tbl_subscription_foods` (
  `subs_food_id` int(11) NOT NULL,
  `food_date_id` int(11) DEFAULT NULL,
  `food_date_time_id` int(11) DEFAULT NULL,
  `foods_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `description`, `user_id`, `company_id`, `created_at`, `del_status`) VALUES
(1, 'Unknown Supplier', 'XYZ', NULL, NULL, NULL, NULL, 1, 1, '2020-09-24 10:31:13', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_payments`
--

CREATE TABLE `tbl_supplier_payments` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tables`
--

CREATE TABLE `tbl_tables` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sit_capacity` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_time_zone`
--

CREATE TABLE `tbl_time_zone` (
  `id` int(10) NOT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `zone_name` varchar(35) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_time_zone`
--

INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES
(1, 'AD', 'Europe/Andorra', 'Live'),
(2, 'AE', 'Asia/Dubai', 'Live'),
(3, 'AF', 'Asia/Kabul', 'Live'),
(4, 'AG', 'America/Antigua', 'Live'),
(5, 'AI', 'America/Anguilla', 'Live'),
(6, 'AL', 'Europe/Tirane', 'Live'),
(7, 'AM', 'Asia/Yerevan', 'Live'),
(8, 'AO', 'Africa/Luanda', 'Live'),
(9, 'AQ', 'Antarctica/McMurdo', 'Live'),
(10, 'AQ', 'Antarctica/Casey', 'Live'),
(11, 'AQ', 'Antarctica/Davis', 'Live'),
(12, 'AQ', 'Antarctica/DumontDUrville', 'Live'),
(13, 'AQ', 'Antarctica/Mawson', 'Live'),
(14, 'AQ', 'Antarctica/Palmer', 'Live'),
(15, 'AQ', 'Antarctica/Rothera', 'Live'),
(16, 'AQ', 'Antarctica/Syowa', 'Live'),
(17, 'AQ', 'Antarctica/Troll', 'Live'),
(18, 'AQ', 'Antarctica/Vostok', 'Live'),
(19, 'AR', 'America/Argentina/Buenos_Aires', 'Live'),
(20, 'AR', 'America/Argentina/Cordoba', 'Live'),
(21, 'AR', 'America/Argentina/Salta', 'Live'),
(22, 'AR', 'America/Argentina/Jujuy', 'Live'),
(23, 'AR', 'America/Argentina/Tucuman', 'Live'),
(24, 'AR', 'America/Argentina/Catamarca', 'Live'),
(25, 'AR', 'America/Argentina/La_Rioja', 'Live'),
(26, 'AR', 'America/Argentina/San_Juan', 'Live'),
(27, 'AR', 'America/Argentina/Mendoza', 'Live'),
(28, 'AR', 'America/Argentina/San_Luis', 'Live'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', 'Live'),
(30, 'AR', 'America/Argentina/Ushuaia', 'Live'),
(31, 'AS', 'Pacific/Pago_Pago', 'Live'),
(32, 'AT', 'Europe/Vienna', 'Live'),
(33, 'AU', 'Australia/Lord_Howe', 'Live'),
(34, 'AU', 'Antarctica/Macquarie', 'Live'),
(35, 'AU', 'Australia/Hobart', 'Live'),
(36, 'AU', 'Australia/Currie', 'Live'),
(37, 'AU', 'Australia/Melbourne', 'Live'),
(38, 'AU', 'Australia/Sydney', 'Live'),
(39, 'AU', 'Australia/Broken_Hill', 'Live'),
(40, 'AU', 'Australia/Brisbane', 'Live'),
(41, 'AU', 'Australia/Lindeman', 'Live'),
(42, 'AU', 'Australia/Adelaide', 'Live'),
(43, 'AU', 'Australia/Darwin', 'Live'),
(44, 'AU', 'Australia/Perth', 'Live'),
(45, 'AU', 'Australia/Eucla', 'Live'),
(46, 'AW', 'America/Aruba', 'Live'),
(47, 'AX', 'Europe/Mariehamn', 'Live'),
(48, 'AZ', 'Asia/Baku', 'Live'),
(49, 'BA', 'Europe/Sarajevo', 'Live'),
(50, 'BB', 'America/Barbados', 'Live'),
(51, 'BD', 'Asia/Dhaka', 'Live'),
(52, 'BE', 'Europe/Brussels', 'Live'),
(53, 'BF', 'Africa/Ouagadougou', 'Live'),
(54, 'BG', 'Europe/Sofia', 'Live'),
(55, 'BH', 'Asia/Bahrain', 'Live'),
(56, 'BI', 'Africa/Bujumbura', 'Live'),
(57, 'BJ', 'Africa/Porto-Novo', 'Live'),
(58, 'BL', 'America/St_Barthelemy', 'Live'),
(59, 'BM', 'Atlantic/Bermuda', 'Live'),
(60, 'BN', 'Asia/Brunei', 'Live'),
(61, 'BO', 'America/La_Paz', 'Live'),
(62, 'BQ', 'America/Kralendijk', 'Live'),
(63, 'BR', 'America/Noronha', 'Live'),
(64, 'BR', 'America/Belem', 'Live'),
(65, 'BR', 'America/Fortaleza', 'Live'),
(66, 'BR', 'America/Recife', 'Live'),
(67, 'BR', 'America/Araguaina', 'Live'),
(68, 'BR', 'America/Maceio', 'Live'),
(69, 'BR', 'America/Bahia', 'Live'),
(70, 'BR', 'America/Sao_Paulo', 'Live'),
(71, 'BR', 'America/Campo_Grande', 'Live'),
(72, 'BR', 'America/Cuiaba', 'Live'),
(73, 'BR', 'America/Santarem', 'Live'),
(74, 'BR', 'America/Porto_Velho', 'Live'),
(75, 'BR', 'America/Boa_Vista', 'Live'),
(76, 'BR', 'America/Manaus', 'Live'),
(77, 'BR', 'America/Eirunepe', 'Live'),
(78, 'BR', 'America/Rio_Branco', 'Live'),
(79, 'BS', 'America/Nassau', 'Live'),
(80, 'BT', 'Asia/Thimphu', 'Live'),
(81, 'BW', 'Africa/Gaborone', 'Live'),
(82, 'BY', 'Europe/Minsk', 'Live'),
(83, 'BZ', 'America/Belize', 'Live'),
(84, 'CA', 'America/St_Johns', 'Live'),
(85, 'CA', 'America/Halifax', 'Live'),
(86, 'CA', 'America/Glace_Bay', 'Live'),
(87, 'CA', 'America/Moncton', 'Live'),
(88, 'CA', 'America/Goose_Bay', 'Live'),
(89, 'CA', 'America/Blanc-Sablon', 'Live'),
(90, 'CA', 'America/Toronto', 'Live'),
(91, 'CA', 'America/Nipigon', 'Live'),
(92, 'CA', 'America/Thunder_Bay', 'Live'),
(93, 'CA', 'America/Iqaluit', 'Live'),
(94, 'CA', 'America/Pangnirtung', 'Live'),
(95, 'CA', 'America/Atikokan', 'Live'),
(96, 'CA', 'America/Winnipeg', 'Live'),
(97, 'CA', 'America/Rainy_River', 'Live'),
(98, 'CA', 'America/Resolute', 'Live'),
(99, 'CA', 'America/Rankin_Inlet', 'Live'),
(100, 'CA', 'America/Regina', 'Live'),
(101, 'CA', 'America/Swift_Current', 'Live'),
(102, 'CA', 'America/Edmonton', 'Live'),
(103, 'CA', 'America/Cambridge_Bay', 'Live'),
(104, 'CA', 'America/Yellowknife', 'Live'),
(105, 'CA', 'America/Inuvik', 'Live'),
(106, 'CA', 'America/Creston', 'Live'),
(107, 'CA', 'America/Dawson_Creek', 'Live'),
(108, 'CA', 'America/Fort_Nelson', 'Live'),
(109, 'CA', 'America/Vancouver', 'Live'),
(110, 'CA', 'America/Whitehorse', 'Live'),
(111, 'CA', 'America/Dawson', 'Live'),
(112, 'CC', 'Indian/Cocos', 'Live'),
(113, 'CD', 'Africa/Kinshasa', 'Live'),
(114, 'CD', 'Africa/Lubumbashi', 'Live'),
(115, 'CF', 'Africa/Bangui', 'Live'),
(116, 'CG', 'Africa/Brazzaville', 'Live'),
(117, 'CH', 'Europe/Zurich', 'Live'),
(118, 'CI', 'Africa/Abidjan', 'Live'),
(119, 'CK', 'Pacific/Rarotonga', 'Live'),
(120, 'CL', 'America/Santiago', 'Live'),
(121, 'CL', 'America/Punta_Arenas', 'Live'),
(122, 'CL', 'Pacific/Easter', 'Live'),
(123, 'CM', 'Africa/Douala', 'Live'),
(124, 'CN', 'Asia/Shanghai', 'Live'),
(125, 'CN', 'Asia/Urumqi', 'Live'),
(126, 'CO', 'America/Bogota', 'Live'),
(127, 'CR', 'America/Costa_Rica', 'Live'),
(128, 'CU', 'America/Havana', 'Live'),
(129, 'CV', 'Atlantic/Cape_Verde', 'Live'),
(130, 'CW', 'America/Curacao', 'Live'),
(131, 'CX', 'Indian/Christmas', 'Live'),
(132, 'CY', 'Asia/Nicosia', 'Live'),
(133, 'CY', 'Asia/Famagusta', 'Live'),
(134, 'CZ', 'Europe/Prague', 'Live'),
(135, 'DE', 'Europe/Berlin', 'Live'),
(136, 'DE', 'Europe/Busingen', 'Live'),
(137, 'DJ', 'Africa/Djibouti', 'Live'),
(138, 'DK', 'Europe/Copenhagen', 'Live'),
(139, 'DM', 'America/Dominica', 'Live'),
(140, 'DO', 'America/Santo_Domingo', 'Live'),
(141, 'DZ', 'Africa/Algiers', 'Live'),
(142, 'EC', 'America/Guayaquil', 'Live'),
(143, 'EC', 'Pacific/Galapagos', 'Live'),
(144, 'EE', 'Europe/Tallinn', 'Live'),
(145, 'EG', 'Africa/Cairo', 'Live'),
(146, 'EH', 'Africa/El_Aaiun', 'Live'),
(147, 'ER', 'Africa/Asmara', 'Live'),
(148, 'ES', 'Europe/Madrid', 'Live'),
(149, 'ES', 'Africa/Ceuta', 'Live'),
(150, 'ES', 'Atlantic/Canary', 'Live'),
(151, 'ET', 'Africa/Addis_Ababa', 'Live'),
(152, 'FI', 'Europe/Helsinki', 'Live'),
(153, 'FJ', 'Pacific/Fiji', 'Live'),
(154, 'FK', 'Atlantic/Stanley', 'Live'),
(155, 'FM', 'Pacific/Chuuk', 'Live'),
(156, 'FM', 'Pacific/Pohnpei', 'Live'),
(157, 'FM', 'Pacific/Kosrae', 'Live'),
(158, 'FO', 'Atlantic/Faroe', 'Live'),
(159, 'FR', 'Europe/Paris', 'Live'),
(160, 'GA', 'Africa/Libreville', 'Live'),
(161, 'GB', 'Europe/London', 'Live'),
(162, 'GD', 'America/Grenada', 'Live'),
(163, 'GE', 'Asia/Tbilisi', 'Live'),
(164, 'GF', 'America/Cayenne', 'Live'),
(165, 'GG', 'Europe/Guernsey', 'Live'),
(166, 'GH', 'Africa/Accra', 'Live'),
(167, 'GI', 'Europe/Gibraltar', 'Live'),
(168, 'GL', 'America/Godthab', 'Live'),
(169, 'GL', 'America/Danmarkshavn', 'Live'),
(170, 'GL', 'America/Scoresbysund', 'Live'),
(171, 'GL', 'America/Thule', 'Live'),
(172, 'GM', 'Africa/Banjul', 'Live'),
(173, 'GN', 'Africa/Conakry', 'Live'),
(174, 'GP', 'America/Guadeloupe', 'Live'),
(175, 'GQ', 'Africa/Malabo', 'Live'),
(176, 'GR', 'Europe/Athens', 'Live'),
(177, 'GS', 'Atlantic/South_Georgia', 'Live'),
(178, 'GT', 'America/Guatemala', 'Live'),
(179, 'GU', 'Pacific/Guam', 'Live'),
(180, 'GW', 'Africa/Bissau', 'Live'),
(181, 'GY', 'America/Guyana', 'Live'),
(182, 'HK', 'Asia/Hong_Kong', 'Live'),
(183, 'HN', 'America/Tegucigalpa', 'Live'),
(184, 'HR', 'Europe/Zagreb', 'Live'),
(185, 'HT', 'America/Port-au-Prince', 'Live'),
(186, 'HU', 'Europe/Budapest', 'Live'),
(187, 'ID', 'Asia/Jakarta', 'Live'),
(188, 'ID', 'Asia/Pontianak', 'Live'),
(189, 'ID', 'Asia/Makassar', 'Live'),
(190, 'ID', 'Asia/Jayapura', 'Live'),
(191, 'IE', 'Europe/Dublin', 'Live'),
(192, 'IL', 'Asia/Jerusalem', 'Live'),
(193, 'IM', 'Europe/Isle_of_Man', 'Live'),
(194, 'IN', 'Asia/Kolkata', 'Live'),
(195, 'IO', 'Indian/Chagos', 'Live'),
(196, 'IQ', 'Asia/Baghdad', 'Live'),
(197, 'IR', 'Asia/Tehran', 'Live'),
(198, 'IS', 'Atlantic/Reykjavik', 'Live'),
(199, 'IT', 'Europe/Rome', 'Live'),
(200, 'JE', 'Europe/Jersey', 'Live'),
(201, 'JM', 'America/Jamaica', 'Live'),
(202, 'JO', 'Asia/Amman', 'Live'),
(203, 'JP', 'Asia/Tokyo', 'Live'),
(204, 'KE', 'Africa/Nairobi', 'Live'),
(205, 'KG', 'Asia/Bishkek', 'Live'),
(206, 'KH', 'Asia/Phnom_Penh', 'Live'),
(207, 'KI', 'Pacific/Tarawa', 'Live'),
(208, 'KI', 'Pacific/Enderbury', 'Live'),
(209, 'KI', 'Pacific/Kiritimati', 'Live'),
(210, 'KM', 'Indian/Comoro', 'Live'),
(211, 'KN', 'America/St_Kitts', 'Live'),
(212, 'KP', 'Asia/Pyongyang', 'Live'),
(213, 'KR', 'Asia/Seoul', 'Live'),
(214, 'KW', 'Asia/Kuwait', 'Live'),
(215, 'KY', 'America/Cayman', 'Live'),
(216, 'KZ', 'Asia/Almaty', 'Live'),
(217, 'KZ', 'Asia/Qyzylorda', 'Live'),
(218, 'KZ', 'Asia/Aqtobe', 'Live'),
(219, 'KZ', 'Asia/Aqtau', 'Live'),
(220, 'KZ', 'Asia/Atyrau', 'Live'),
(221, 'KZ', 'Asia/Oral', 'Live'),
(222, 'LA', 'Asia/Vientiane', 'Live'),
(223, 'LB', 'Asia/Beirut', 'Live'),
(224, 'LC', 'America/St_Lucia', 'Live'),
(225, 'LI', 'Europe/Vaduz', 'Live'),
(226, 'LK', 'Asia/Colombo', 'Live'),
(227, 'LR', 'Africa/Monrovia', 'Live'),
(228, 'LS', 'Africa/Maseru', 'Live'),
(229, 'LT', 'Europe/Vilnius', 'Live'),
(230, 'LU', 'Europe/Luxembourg', 'Live'),
(231, 'LV', 'Europe/Riga', 'Live'),
(232, 'LY', 'Africa/Tripoli', 'Live'),
(233, 'MA', 'Africa/Casablanca', 'Live'),
(234, 'MC', 'Europe/Monaco', 'Live'),
(235, 'MD', 'Europe/Chisinau', 'Live'),
(236, 'ME', 'Europe/Podgorica', 'Live'),
(237, 'MF', 'America/Marigot', 'Live'),
(238, 'MG', 'Indian/Antananarivo', 'Live'),
(239, 'MH', 'Pacific/Majuro', 'Live'),
(240, 'MH', 'Pacific/Kwajalein', 'Live'),
(241, 'MK', 'Europe/Skopje', 'Live'),
(242, 'ML', 'Africa/Bamako', 'Live'),
(243, 'MM', 'Asia/Yangon', 'Live'),
(244, 'MN', 'Asia/Ulaanbaatar', 'Live'),
(245, 'MN', 'Asia/Hovd', 'Live'),
(246, 'MN', 'Asia/Choibalsan', 'Live'),
(247, 'MO', 'Asia/Macau', 'Live'),
(248, 'MP', 'Pacific/Saipan', 'Live'),
(249, 'MQ', 'America/Martinique', 'Live'),
(250, 'MR', 'Africa/Nouakchott', 'Live'),
(251, 'MS', 'America/Montserrat', 'Live'),
(252, 'MT', 'Europe/Malta', 'Live'),
(253, 'MU', 'Indian/Mauritius', 'Live'),
(254, 'MV', 'Indian/Maldives', 'Live'),
(255, 'MW', 'Africa/Blantyre', 'Live'),
(256, 'MX', 'America/Mexico_City', 'Live'),
(257, 'MX', 'America/Cancun', 'Live'),
(258, 'MX', 'America/Merida', 'Live'),
(259, 'MX', 'America/Monterrey', 'Live'),
(260, 'MX', 'America/Matamoros', 'Live'),
(261, 'MX', 'America/Mazatlan', 'Live'),
(262, 'MX', 'America/Chihuahua', 'Live'),
(263, 'MX', 'America/Ojinaga', 'Live'),
(264, 'MX', 'America/Hermosillo', 'Live'),
(265, 'MX', 'America/Tijuana', 'Live'),
(266, 'MX', 'America/Bahia_Banderas', 'Live'),
(267, 'MY', 'Asia/Kuala_Lumpur', 'Live'),
(268, 'MY', 'Asia/Kuching', 'Live'),
(269, 'MZ', 'Africa/Maputo', 'Live'),
(270, 'NA', 'Africa/Windhoek', 'Live'),
(271, 'NC', 'Pacific/Noumea', 'Live'),
(272, 'NE', 'Africa/Niamey', 'Live'),
(273, 'NF', 'Pacific/Norfolk', 'Live'),
(274, 'NG', 'Africa/Lagos', 'Live'),
(275, 'NI', 'America/Managua', 'Live'),
(276, 'NL', 'Europe/Amsterdam', 'Live'),
(277, 'NO', 'Europe/Oslo', 'Live'),
(278, 'NP', 'Asia/Kathmandu', 'Live'),
(279, 'NR', 'Pacific/Nauru', 'Live'),
(280, 'NU', 'Pacific/Niue', 'Live'),
(281, 'NZ', 'Pacific/Auckland', 'Live'),
(282, 'NZ', 'Pacific/Chatham', 'Live'),
(283, 'OM', 'Asia/Muscat', 'Live'),
(284, 'PA', 'America/Panama', 'Live'),
(285, 'PE', 'America/Lima', 'Live'),
(286, 'PF', 'Pacific/Tahiti', 'Live'),
(287, 'PF', 'Pacific/Marquesas', 'Live'),
(288, 'PF', 'Pacific/Gambier', 'Live'),
(289, 'PG', 'Pacific/Port_Moresby', 'Live'),
(290, 'PG', 'Pacific/Bougainville', 'Live'),
(291, 'PH', 'Asia/Manila', 'Live'),
(292, 'PK', 'Asia/Karachi', 'Live'),
(293, 'PL', 'Europe/Warsaw', 'Live'),
(294, 'PM', 'America/Miquelon', 'Live'),
(295, 'PN', 'Pacific/Pitcairn', 'Live'),
(296, 'PR', 'America/Puerto_Rico', 'Live'),
(297, 'PS', 'Asia/Gaza', 'Live'),
(298, 'PS', 'Asia/Hebron', 'Live'),
(299, 'PT', 'Europe/Lisbon', 'Live'),
(300, 'PT', 'Atlantic/Madeira', 'Live'),
(301, 'PT', 'Atlantic/Azores', 'Live'),
(302, 'PW', 'Pacific/Palau', 'Live'),
(303, 'PY', 'America/Asuncion', 'Live'),
(304, 'QA', 'Asia/Qatar', 'Live'),
(305, 'RE', 'Indian/Reunion', 'Live'),
(306, 'RO', 'Europe/Bucharest', 'Live'),
(307, 'RS', 'Europe/Belgrade', 'Live'),
(308, 'RU', 'Europe/Kaliningrad', 'Live'),
(309, 'RU', 'Europe/Moscow', 'Live'),
(310, 'RU', 'Europe/Simferopol', 'Live'),
(311, 'RU', 'Europe/Volgograd', 'Live'),
(312, 'RU', 'Europe/Kirov', 'Live'),
(313, 'RU', 'Europe/Astrakhan', 'Live'),
(314, 'RU', 'Europe/Saratov', 'Live'),
(315, 'RU', 'Europe/Ulyanovsk', 'Live'),
(316, 'RU', 'Europe/Samara', 'Live'),
(317, 'RU', 'Asia/Yekaterinburg', 'Live'),
(318, 'RU', 'Asia/Omsk', 'Live'),
(319, 'RU', 'Asia/Novosibirsk', 'Live'),
(320, 'RU', 'Asia/Barnaul', 'Live'),
(321, 'RU', 'Asia/Tomsk', 'Live'),
(322, 'RU', 'Asia/Novokuznetsk', 'Live'),
(323, 'RU', 'Asia/Krasnoyarsk', 'Live'),
(324, 'RU', 'Asia/Irkutsk', 'Live'),
(325, 'RU', 'Asia/Chita', 'Live'),
(326, 'RU', 'Asia/Yakutsk', 'Live'),
(327, 'RU', 'Asia/Khandyga', 'Live'),
(328, 'RU', 'Asia/Vladivostok', 'Live'),
(329, 'RU', 'Asia/Ust-Nera', 'Live'),
(330, 'RU', 'Asia/Magadan', 'Live'),
(331, 'RU', 'Asia/Sakhalin', 'Live'),
(332, 'RU', 'Asia/Srednekolymsk', 'Live'),
(333, 'RU', 'Asia/Kamchatka', 'Live'),
(334, 'RU', 'Asia/Anadyr', 'Live'),
(335, 'RW', 'Africa/Kigali', 'Live'),
(336, 'SA', 'Asia/Riyadh', 'Live'),
(337, 'SB', 'Pacific/Guadalcanal', 'Live'),
(338, 'SC', 'Indian/Mahe', 'Live'),
(339, 'SD', 'Africa/Khartoum', 'Live'),
(340, 'SE', 'Europe/Stockholm', 'Live'),
(341, 'SG', 'Asia/Singapore', 'Live'),
(342, 'SH', 'Atlantic/St_Helena', 'Live'),
(343, 'SI', 'Europe/Ljubljana', 'Live'),
(344, 'SJ', 'Arctic/Longyearbyen', 'Live'),
(345, 'SK', 'Europe/Bratislava', 'Live'),
(346, 'SL', 'Africa/Freetown', 'Live'),
(347, 'SM', 'Europe/San_Marino', 'Live'),
(348, 'SN', 'Africa/Dakar', 'Live'),
(349, 'SO', 'Africa/Mogadishu', 'Live'),
(350, 'SR', 'America/Paramaribo', 'Live'),
(351, 'SS', 'Africa/Juba', 'Live'),
(352, 'ST', 'Africa/Sao_Tome', 'Live'),
(353, 'SV', 'America/El_Salvador', 'Live'),
(354, 'SX', 'America/Lower_Princes', 'Live'),
(355, 'SY', 'Asia/Damascus', 'Live'),
(356, 'SZ', 'Africa/Mbabane', 'Live'),
(357, 'TC', 'America/Grand_Turk', 'Live'),
(358, 'TD', 'Africa/Ndjamena', 'Live'),
(359, 'TF', 'Indian/Kerguelen', 'Live'),
(360, 'TG', 'Africa/Lome', 'Live'),
(361, 'TH', 'Asia/Bangkok', 'Live'),
(362, 'TJ', 'Asia/Dushanbe', 'Live'),
(363, 'TK', 'Pacific/Fakaofo', 'Live'),
(364, 'TL', 'Asia/Dili', 'Live'),
(365, 'TM', 'Asia/Ashgabat', 'Live'),
(366, 'TN', 'Africa/Tunis', 'Live'),
(367, 'TO', 'Pacific/Tongatapu', 'Live'),
(368, 'TR', 'Europe/Istanbul', 'Live'),
(369, 'TT', 'America/Port_of_Spain', 'Live'),
(370, 'TV', 'Pacific/Funafuti', 'Live'),
(371, 'TW', 'Asia/Taipei', 'Live'),
(372, 'TZ', 'Africa/Dar_es_Salaam', 'Live'),
(373, 'UA', 'Europe/Kiev', 'Live'),
(374, 'UA', 'Europe/Uzhgorod', 'Live'),
(375, 'UA', 'Europe/Zaporozhye', 'Live'),
(376, 'UG', 'Africa/Kampala', 'Live'),
(377, 'UM', 'Pacific/Midway', 'Live'),
(378, 'UM', 'Pacific/Wake', 'Live'),
(379, 'US', 'America/New_York', 'Live'),
(380, 'US', 'America/Detroit', 'Live'),
(381, 'US', 'America/Kentucky/Louisville', 'Live'),
(382, 'US', 'America/Kentucky/Monticello', 'Live'),
(383, 'US', 'America/Indiana/Indianapolis', 'Live'),
(384, 'US', 'America/Indiana/Vincennes', 'Live'),
(385, 'US', 'America/Indiana/Winamac', 'Live'),
(386, 'US', 'America/Indiana/Marengo', 'Live'),
(387, 'US', 'America/Indiana/Petersburg', 'Live'),
(388, 'US', 'America/Indiana/Vevay', 'Live'),
(389, 'US', 'America/Chicago', 'Live'),
(390, 'US', 'America/Indiana/Tell_City', 'Live'),
(391, 'US', 'America/Indiana/Knox', 'Live'),
(392, 'US', 'America/Menominee', 'Live'),
(393, 'US', 'America/North_Dakota/Center', 'Live'),
(394, 'US', 'America/North_Dakota/New_Salem', 'Live'),
(395, 'US', 'America/North_Dakota/Beulah', 'Live'),
(396, 'US', 'America/Denver', 'Live'),
(397, 'US', 'America/Boise', 'Live'),
(398, 'US', 'America/Phoenix', 'Live'),
(399, 'US', 'America/Los_Angeles', 'Live'),
(400, 'US', 'America/Anchorage', 'Live'),
(401, 'US', 'America/Juneau', 'Live'),
(402, 'US', 'America/Sitka', 'Live'),
(403, 'US', 'America/Metlakatla', 'Live'),
(404, 'US', 'America/Yakutat', 'Live'),
(405, 'US', 'America/Nome', 'Live'),
(406, 'US', 'America/Adak', 'Live'),
(407, 'US', 'Pacific/Honolulu', 'Live'),
(408, 'UY', 'America/Montevideo', 'Live'),
(409, 'UZ', 'Asia/Samarkand', 'Live'),
(410, 'UZ', 'Asia/Tashkent', 'Live'),
(411, 'VA', 'Europe/Vatican', 'Live'),
(412, 'VC', 'America/St_Vincent', 'Live'),
(413, 'VE', 'America/Caracas', 'Live'),
(414, 'VG', 'America/Tortola', 'Live'),
(415, 'VI', 'America/St_Thomas', 'Live'),
(416, 'VN', 'Asia/Ho_Chi_Minh', 'Live'),
(417, 'VU', 'Pacific/Efate', 'Live'),
(418, 'WF', 'Pacific/Wallis', 'Live'),
(419, 'WS', 'Pacific/Apia', 'Live'),
(420, 'YE', 'Asia/Aden', 'Live'),
(421, 'YT', 'Indian/Mayotte', 'Live'),
(422, 'ZA', 'Africa/Johannesburg', 'Live'),
(423, 'ZM', 'Africa/Lusaka', 'Live'),
(424, 'ZW', 'Africa/Harare', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfers`
--

CREATE TABLE `tbl_transfers` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `transfer_outlet_id` int(10) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_items`
--

CREATE TABLE `tbl_transfer_items` (
  `id` int(10) NOT NULL,
  `transfer_outlet_id` int(11) DEFAULT NULL,
  `item_id` int(10) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `transfer_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` int(10) NOT NULL,
  `unit_name` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `company_id` int(1) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `unit_name`, `description`, `company_id`, `del_status`, `row_updated`) VALUES
(1, 'Pc', 'per pc', 1, 'Live', '2019-11-21 07:45:37'),
(2, 'pk', 'packet set', 1, 'Live', '2019-11-21 07:45:20'),
(3, 'Pcs', NULL, 1, 'Live', '2019-11-26 10:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `full_name` varchar(25) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL,
  `outlet_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `account_creation_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `active_status` varchar(25) NOT NULL DEFAULT 'Active',
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `email_address`, `password`, `role`, `outlet_id`, `company_id`, `account_creation_date`, `last_login`, `active_status`, `row_updated`, `del_status`) VALUES
(1, 'Super Admin User', '01906440632', 'your email', 'your password', 'Admin', 0, 1, '2018-02-17 07:28:32', '0000-00-00 00:00:00', 'Active', '2020-09-05 13:09:09', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu_access`
--

CREATE TABLE `tbl_user_menu_access` (
  `id` int(10) NOT NULL,
  `menu_id` int(10) DEFAULT 0,
  `user_id` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_menu_access`
--

INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(46, 13, 1),
(47, 14, 1),
(48, 15, 1),
(49, 16, 1),
(50, 1, 4),
(51, 7, 4),
(52, 8, 4),
(53, 17, 1),
(54, 18, 1),
(68, 2, 3),
(69, 3, 3),
(70, 1, 2),
(71, 7, 2),
(72, 9, 2),
(73, 22, 2),
(74, 26, 1),
(75, 27, 1),
(76, 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vats`
--

CREATE TABLE `tbl_vats` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `percentage` float(10,2) NOT NULL,
  `user_id` float(10,2) NOT NULL DEFAULT 1.00,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(6) DEFAULT 'Live',
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vats`
--

INSERT INTO `tbl_vats` (`id`, `name`, `percentage`, `user_id`, `company_id`, `del_status`, `row_updated`) VALUES
(1, '5% VAT Include', 5.00, 1.00, 1, 'Live', '2019-04-02 03:17:05'),
(2, '0% VAT Include', 0.00, 1.00, 1, 'Live', '2019-04-02 03:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vip_card_sales`
--

CREATE TABLE `tbl_vip_card_sales` (
  `id` int(11) NOT NULL,
  `sale_no` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `card_no` varchar(50) DEFAULT NULL,
  `percentage` varchar(5) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `ack_id` int(11) NOT NULL DEFAULT 1,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wastes`
--

CREATE TABLE `tbl_wastes` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `total_loss` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `voucher_reference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waste_items`
--

CREATE TABLE `tbl_waste_items` (
  `id` int(10) NOT NULL,
  `item_id` int(10) DEFAULT NULL,
  `waste_amount` float(10,2) DEFAULT NULL,
  `last_purchase_price` float(10,2) DEFAULT NULL,
  `loss_amount` float(10,2) DEFAULT NULL,
  `waste_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `row_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_x_log_sms`
--

CREATE TABLE `tbl_x_log_sms` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_accounts_mapping`
--
ALTER TABLE `acc_accounts_mapping`
  ADD PRIMARY KEY (`mapping_id`);

--
-- Indexes for table `acc_chart_of_accounts`
--
ALTER TABLE `acc_chart_of_accounts`
  ADD PRIMARY KEY (`account_id_auto`),
  ADD UNIQUE KEY `account_id` (`account_id`,`account_name`,`outlet_id`);

--
-- Indexes for table `acc_transaction_mst`
--
ALTER TABLE `acc_transaction_mst`
  ADD PRIMARY KEY (`txn_id`);

--
-- Indexes for table `admin_payment_methods`
--
ALTER TABLE `admin_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_currencies`
--
ALTER TABLE `tbl_admin_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_affiliate_amount`
--
ALTER TABLE `tbl_affiliate_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_affiliate_customers`
--
ALTER TABLE `tbl_affiliate_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_af_customer_payments`
--
ALTER TABLE `tbl_af_customer_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_areas`
--
ALTER TABLE `tbl_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cardlists`
--
ALTER TABLE `tbl_cardlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_registers`
--
ALTER TABLE `tbl_cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_checkouts`
--
ALTER TABLE `tbl_checkouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configuration`
--
ALTER TABLE `tbl_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_address`
--
ALTER TABLE `tbl_customer_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_payments`
--
ALTER TABLE `tbl_customer_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_relations`
--
ALTER TABLE `tbl_customer_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_demo_requests`
--
ALTER TABLE `tbl_demo_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_desktop_server_config`
--
ALTER TABLE `tbl_desktop_server_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_discountsettings`
--
ALTER TABLE `tbl_discountsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exchanges`
--
ALTER TABLE `tbl_exchanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exchange_items`
--
ALTER TABLE `tbl_exchange_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`);

--
-- Indexes for table `tbl_exchange_new_items`
--
ALTER TABLE `tbl_exchange_new_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus_items`
--
ALTER TABLE `tbl_food_menus_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_get_quotes`
--
ALTER TABLE `tbl_get_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventoryadjustments`
--
ALTER TABLE `tbl_inventoryadjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventoryadjustment_items`
--
ALTER TABLE `tbl_inventoryadjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `outet_del_invst` (`outlet_id`,`del_status`,`inventoryadjustment_status`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `tbl_item_categories`
--
ALTER TABLE `tbl_item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item_serials`
--
ALTER TABLE `tbl_item_serials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_buy_gets`
--
ALTER TABLE `tbl_offer_buy_gets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_coupons`
--
ALTER TABLE `tbl_offer_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_coupon_items`
--
ALTER TABLE `tbl_offer_coupon_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_generals`
--
ALTER TABLE `tbl_offer_generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plans`
--
ALTER TABLE `tbl_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_productions`
--
ALTER TABLE `tbl_productions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`);

--
-- Indexes for table `tbl_production_items`
--
ALTER TABLE `tbl_production_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `production_item_id` (`production_item_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`);

--
-- Indexes for table `tbl_promotion_messages`
--
ALTER TABLE `tbl_promotion_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pulls`
--
ALTER TABLE `tbl_pulls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchasereturn`
--
ALTER TABLE `tbl_purchasereturn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchasereturn_items`
--
ALTER TABLE `tbl_purchasereturn_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`);

--
-- Indexes for table `tbl_purchase_items`
--
ALTER TABLE `tbl_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`);

--
-- Indexes for table `tbl_pushs`
--
ALTER TABLE `tbl_pushs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_queues`
--
ALTER TABLE `tbl_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_menu_id` (`food_menu_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`);

--
-- Indexes for table `tbl_sale_inventoryadjustments`
--
ALTER TABLE `tbl_sale_inventoryadjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_inventoryadjustments_detail`
--
ALTER TABLE `tbl_sale_inventoryadjustments_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_payment_methods`
--
ALTER TABLE `tbl_sale_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slides`
--
ALTER TABLE `tbl_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscriptions`
--
ALTER TABLE `tbl_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscription_date`
--
ALTER TABLE `tbl_subscription_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscription_date_times`
--
ALTER TABLE `tbl_subscription_date_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscription_foods`
--
ALTER TABLE `tbl_subscription_foods`
  ADD PRIMARY KEY (`subs_food_id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transfers`
--
ALTER TABLE `tbl_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transfer_items`
--
ALTER TABLE `tbl_transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`),
  ADD KEY `outlet_xfer_del` (`transfer_outlet_id`,`del_status`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vats`
--
ALTER TABLE `tbl_vats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vip_card_sales`
--
ALTER TABLE `tbl_vip_card_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_waste_items`
--
ALTER TABLE `tbl_waste_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `outlet_del` (`outlet_id`,`del_status`);

--
-- Indexes for table `tbl_x_log_sms`
--
ALTER TABLE `tbl_x_log_sms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_accounts_mapping`
--
ALTER TABLE `acc_accounts_mapping`
  MODIFY `mapping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `acc_transaction_mst`
--
ALTER TABLE `acc_transaction_mst`
  MODIFY `txn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_payment_methods`
--
ALTER TABLE `admin_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_admin_currencies`
--
ALTER TABLE `tbl_admin_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_affiliate_amount`
--
ALTER TABLE `tbl_affiliate_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_affiliate_customers`
--
ALTER TABLE `tbl_affiliate_customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_af_customer_payments`
--
ALTER TABLE `tbl_af_customer_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_areas`
--
ALTER TABLE `tbl_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cardlists`
--
ALTER TABLE `tbl_cardlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cash_registers`
--
ALTER TABLE `tbl_cash_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_checkouts`
--
ALTER TABLE `tbl_checkouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_configuration`
--
ALTER TABLE `tbl_configuration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer_address`
--
ALTER TABLE `tbl_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_payments`
--
ALTER TABLE `tbl_customer_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_relations`
--
ALTER TABLE `tbl_customer_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_demo_requests`
--
ALTER TABLE `tbl_demo_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_desktop_server_config`
--
ALTER TABLE `tbl_desktop_server_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_discountsettings`
--
ALTER TABLE `tbl_discountsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_exchanges`
--
ALTER TABLE `tbl_exchanges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_exchange_items`
--
ALTER TABLE `tbl_exchange_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_exchange_new_items`
--
ALTER TABLE `tbl_exchange_new_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food_menus_items`
--
ALTER TABLE `tbl_food_menus_items`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_get_quotes`
--
ALTER TABLE `tbl_get_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inventoryadjustments`
--
ALTER TABLE `tbl_inventoryadjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inventoryadjustment_items`
--
ALTER TABLE `tbl_inventoryadjustment_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_item_categories`
--
ALTER TABLE `tbl_item_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_item_serials`
--
ALTER TABLE `tbl_item_serials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offer_buy_gets`
--
ALTER TABLE `tbl_offer_buy_gets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offer_coupons`
--
ALTER TABLE `tbl_offer_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offer_coupon_items`
--
ALTER TABLE `tbl_offer_coupon_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offer_generals`
--
ALTER TABLE `tbl_offer_generals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_plans`
--
ALTER TABLE `tbl_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_productions`
--
ALTER TABLE `tbl_productions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_production_items`
--
ALTER TABLE `tbl_production_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_promotion_messages`
--
ALTER TABLE `tbl_promotion_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pulls`
--
ALTER TABLE `tbl_pulls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_purchasereturn`
--
ALTER TABLE `tbl_purchasereturn`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasereturn_items`
--
ALTER TABLE `tbl_purchasereturn_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchase_items`
--
ALTER TABLE `tbl_purchase_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pushs`
--
ALTER TABLE `tbl_pushs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_queues`
--
ALTER TABLE `tbl_queues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sale_inventoryadjustments`
--
ALTER TABLE `tbl_sale_inventoryadjustments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sale_inventoryadjustments_detail`
--
ALTER TABLE `tbl_sale_inventoryadjustments_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sale_payment_methods`
--
ALTER TABLE `tbl_sale_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_slides`
--
ALTER TABLE `tbl_slides`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_subscriptions`
--
ALTER TABLE `tbl_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subscription_date`
--
ALTER TABLE `tbl_subscription_date`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subscription_date_times`
--
ALTER TABLE `tbl_subscription_date_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subscription_foods`
--
ALTER TABLE `tbl_subscription_foods`
  MODIFY `subs_food_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `tbl_transfers`
--
ALTER TABLE `tbl_transfers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transfer_items`
--
ALTER TABLE `tbl_transfer_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_vats`
--
ALTER TABLE `tbl_vats`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vip_card_sales`
--
ALTER TABLE `tbl_vip_card_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_waste_items`
--
ALTER TABLE `tbl_waste_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_x_log_sms`
--
ALTER TABLE `tbl_x_log_sms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
