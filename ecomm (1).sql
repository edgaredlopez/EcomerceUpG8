-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2022 a las 21:29:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecomm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(5, 80, 27, 73),
(6, 11, 28, 94),
(7, 21, 29, 138),
(8, 90, 30, 156),
(9, 88, 31, 186),
(10, 57, 32, 95),
(11, 50, 33, 107),
(12, 76, 34, 80),
(13, 23, 35, 146),
(14, 57, 36, 121),
(15, 42, 37, 118),
(16, 1, 38, 98),
(17, 77, 39, 177),
(18, 61, 40, 64),
(19, 86, 41, 158),
(20, 40, 42, 136),
(21, 27, 43, 64),
(22, 36, 44, 189),
(23, 92, 45, 143),
(24, 84, 46, 85),
(25, 31, 47, 110),
(26, 100, 48, 164),
(27, 17, 49, 136),
(28, 67, 50, 124),
(29, 93, 51, 82),
(30, 38, 52, 73),
(31, 47, 53, 64),
(32, 94, 54, 59),
(33, 95, 55, 50),
(34, 12, 56, 147),
(35, 65, 57, 57),
(36, 37, 58, 85),
(37, 6, 59, 116),
(38, 73, 60, 147),
(39, 69, 61, 90),
(40, 52, 62, 106),
(41, 35, 63, 51),
(42, 48, 64, 78),
(43, 99, 65, 144),
(44, 32, 66, 195),
(45, 7, 67, 200),
(46, 3, 68, 160),
(47, 55, 69, 134),
(48, 63, 70, 158),
(49, 50, 71, 59),
(50, 3, 72, 58),
(51, 70, 73, 152),
(52, 11, 74, 74),
(53, 37, 75, 138),
(54, 65, 76, 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(4, 'Ropa y Zapatos', 'Ropa y Zapatos'),
(5, 'Alimentos preparados', 'Alimentos preparados'),
(6, 'Harinas', 'Harinas'),
(7, 'Enlatados', 'Enlatados'),
(8, 'Limpieza y Plásticos', 'Limpieza y Plásticos'),
(9, 'Abarrotes', 'Abarrotes'),
(10, 'Higiene personal', 'Higiene personal'),
(11, 'Frutas y verduras', 'Frutas y verduras'),
(12, 'Otros', 'Otros'),
(13, 'Uso doméstico', 'Uso doméstico'),
(14, 'Botanas', 'Botanas'),
(15, 'Papelería', 'Papelería'),
(16, 'Bebidas', 'Bebidas'),
(17, 'Medicamentos', 'Medicamentos'),
(18, 'Confitería', 'Confitería'),
(19, 'Lácteos', 'Lácteos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(21, 1, 27, 73),
(22, 2, 28, 94),
(23, 3, 29, 138),
(24, 4, 30, 156),
(25, 5, 31, 186),
(26, 6, 32, 95),
(27, 7, 33, 107),
(28, 8, 34, 80),
(29, 9, 35, 146),
(30, 10, 36, 121),
(31, 11, 37, 118),
(32, 12, 38, 98),
(33, 13, 39, 177),
(34, 14, 40, 64),
(35, 15, 41, 158),
(36, 16, 42, 136),
(37, 17, 43, 64),
(38, 18, 44, 189),
(39, 19, 45, 143),
(40, 20, 46, 85),
(41, 21, 47, 110),
(42, 22, 48, 164),
(43, 23, 49, 136),
(44, 24, 50, 124),
(45, 25, 51, 82),
(46, 26, 52, 73),
(47, 27, 53, 64),
(48, 28, 54, 59),
(49, 29, 55, 50),
(50, 30, 56, 147),
(51, 31, 57, 57),
(52, 32, 58, 85),
(53, 33, 59, 116),
(54, 34, 60, 147),
(55, 35, 61, 90),
(56, 36, 62, 106),
(57, 37, 63, 51),
(58, 38, 64, 78),
(59, 39, 65, 144),
(60, 40, 66, 195),
(61, 41, 67, 200),
(62, 42, 68, 160),
(63, 43, 69, 134),
(64, 44, 70, 158),
(65, 45, 71, 59),
(66, 46, 72, 58),
(67, 47, 73, 152),
(68, 48, 74, 74),
(69, 49, 75, 138),
(70, 50, 76, 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidadpago`
--

CREATE TABLE `modalidadpago` (
  `idmodalidad` int(11) NOT NULL,
  `nombremodalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modalidadpago`
--

INSERT INTO `modalidadpago` (`idmodalidad`, `nombremodalidad`) VALUES
(1, 'Tarjeta credito'),
(2, 'Tarjeta debito'),
(3, 'Transferencia electronica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `codprod` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`, `stock`, `codprod`) VALUES
(27, 4, 'Aceites comestibles', 'Abarrotes Aceites comestibles a Q.26 precio unitario', NULL, 26, 'Categoria1.jpg', NULL, NULL, 824, '32afasdf'),
(28, 4, 'Aderezos', 'Abarrotes Aderezos a Q.49 precio unitario', NULL, 49, 'Categoria1.jpg', NULL, NULL, 782, 'asdfasdf656'),
(29, 4, 'Arroz', 'Abarrotes Arroz a Q.28 precio unitario', NULL, 28, 'Categoria1.jpg', NULL, NULL, 897, 'asdfasdf65'),
(30, 4, 'Consomé', 'Abarrotes Consomé a Q.11 precio unitario', NULL, 11, 'Categoria1.jpg', NULL, NULL, 567, 'qwa465f4a6fd'),
(31, 4, 'Crema de cacahuate', 'Abarrotes Crema de cacahuate a Q.19 precio unitario', NULL, 19, 'Categoria1.jpg', NULL, NULL, 571, 'asdfa654fa6f'),
(32, 4, 'Crema para café', 'Abarrotes Crema para café a Q.12 precio unitario', NULL, 12, 'Categoria1.jpg', NULL, NULL, 759, 'asd5f84a65sf'),
(33, 4, 'Puré de tomate', 'Abarrotes Puré de tomate a Q.21 precio unitario', NULL, 21, 'Categoria1.jpg', NULL, NULL, 748, '6a54sdf6a4sdf56as'),
(34, 4, 'Alimento para bebé', 'Abarrotes Alimento para bebé a Q.16 precio unitario', NULL, 16, 'Categoria1.jpg', NULL, NULL, 965, 'asdfa6f2'),
(35, 4, 'Alimento para mascotas', 'Abarrotes Alimento para mascotas a Q.50 precio unitario', NULL, 50, 'Categoria1.jpg', NULL, NULL, 756, 'aasfdasdf'),
(36, 4, 'Atole', 'Abarrotes Atole a Q.6 precio unitario', NULL, 6, 'Categoria1.jpg', NULL, NULL, 932, '56a14sdf56a'),
(37, 4, 'Avena', 'Abarrotes Avena a Q.30 precio unitario', NULL, 30, 'Categoria1.jpg', NULL, NULL, 746, '54asdf54aSD5F4'),
(38, 4, 'Azúcar', 'Abarrotes Azúcar a Q.8 precio unitario', NULL, 8, 'Categoria1.jpg', NULL, NULL, 887, 'ASDF54ASDF45'),
(39, 4, 'Café', 'Abarrotes Café a Q.5 precio unitario', NULL, 5, 'Categoria1.jpg', NULL, NULL, 715, '65ADS4F6AS'),
(40, 4, 'Cereales', 'Abarrotes Cereales a Q.37 precio unitario', NULL, 37, 'Categoria1.jpg', NULL, NULL, 910, 'A54FA5SDF'),
(41, 4, 'Chile piquín', 'Abarrotes Chile piquín a Q.42 precio unitario', NULL, 42, 'Categoria1.jpg', NULL, NULL, 803, '5AS4DF5ASDF'),
(42, 4, 'Especias', 'Abarrotes Especias a Q.21 precio unitario', NULL, 21, 'Categoria1.jpg', NULL, NULL, 977, 'ASDF65A4SDF'),
(43, 4, 'Flan en polvo', 'Abarrotes Flan en polvo a Q.34 precio unitario', NULL, 34, 'Categoria1.jpg', NULL, NULL, 912, '65A4SDF5ASDF'),
(44, 4, 'Fórmulas infantiles', 'Abarrotes Fórmulas infantiles a Q.10 precio unitario', NULL, 10, 'Categoria1.jpg', NULL, NULL, 899, 'A6FDS4A5DS'),
(45, 4, 'Gelatinas en polvo/Grenetina', 'Abarrotes Gelatinas en polvo/Grenetina a Q.24 precio unitario', NULL, 24, 'Categoria1.jpg', NULL, NULL, 890, '656514'),
(46, 4, 'Harina/Harina preparada', 'Abarrotes Harina/Harina preparada a Q.23 precio unitario', NULL, 23, 'Categoria1.jpg', NULL, NULL, 708, 'AS6F54AS6F'),
(47, 4, 'Mole', 'Abarrotes Mole a Q.41 precio unitario', NULL, 41, 'Categoria1.jpg', NULL, NULL, 861, 'A36SD5F4AD3SF'),
(48, 4, 'Sal', 'Abarrotes Sal a Q.16 precio unitario', NULL, 16, 'Categoria1.jpg', NULL, NULL, 673, '65A4DSF6A'),
(49, 4, 'Salsas envasadas', 'Abarrotes Salsas envasadas a Q.49 precio unitario', NULL, 49, 'Categoria1.jpg', NULL, NULL, 563, 'AS5FD41A6SDF'),
(50, 4, 'Sazonadores', 'Abarrotes Sazonadores a Q.20 precio unitario', NULL, 20, 'Categoria1.jpg', NULL, NULL, 757, 'A6S54FDA65FD'),
(51, 4, 'Sopas en sobre', 'Abarrotes Sopas en sobre a Q.28 precio unitario', NULL, 28, 'Categoria1.jpg', NULL, NULL, 821, '65A4SDF65ADFS'),
(52, 4, 'Cajeta', 'Abarrotes Cajeta a Q.29 precio unitario', NULL, 29, 'Categoria1.jpg', NULL, NULL, 534, NULL),
(53, 4, 'Cátsup', 'Abarrotes Cátsup a Q.40 precio unitario', NULL, 40, 'Categoria1.jpg', NULL, NULL, 971, NULL),
(54, 4, 'Mayonesa', 'Abarrotes Mayonesa a Q.40 precio unitario', NULL, 40, 'Categoria1.jpg', NULL, NULL, 891, NULL),
(55, 4, 'Mermelada', 'Abarrotes Mermelada a Q.47 precio unitario', NULL, 47, 'Categoria1.jpg', NULL, NULL, 894, NULL),
(56, 4, 'Miel', 'Abarrotes Miel a Q.11 precio unitario', NULL, 11, 'Categoria1.jpg', NULL, NULL, 515, NULL),
(57, 5, 'Té', 'Abarrotes Té a Q.30 precio unitario', NULL, 30, 'Categoria2.jpg', NULL, NULL, 559, NULL),
(58, 5, 'Vinagre', 'Abarrotes Vinagre a Q.47 precio unitario', NULL, 47, 'Categoria2.jpg', NULL, NULL, 934, NULL),
(59, 5, 'Huevo', 'Abarrotes Huevo a Q.13 precio unitario', NULL, 13, 'Categoria2.jpg', NULL, NULL, 867, NULL),
(60, 5, 'Pasta', 'Abarrotes Pasta a Q.24 precio unitario', NULL, 24, 'Categoria2.jpg', NULL, NULL, 884, NULL),
(61, 5, 'Aceitunas', 'Enlatados Aceitunas a Q.21 precio unitario', NULL, 21, 'Categoria2.jpg', NULL, NULL, 677, NULL),
(62, 5, 'Champiñones enteros/rebanados', 'Enlatados Champiñones enteros/rebanados a Q.10 precio unitario', NULL, 10, 'Categoria2.jpg', NULL, NULL, 524, NULL),
(63, 5, 'Chícharos', 'Enlatados Chícharos a Q.43 precio unitario', NULL, 43, 'Categoria2.jpg', NULL, NULL, 872, NULL),
(64, 5, 'Frijoles', 'Enlatados Frijoles a Q.35 precio unitario', NULL, 35, 'Categoria2.jpg', NULL, NULL, 595, NULL),
(65, 5, 'Frutas en almíbar', 'Enlatados Frutas en almíbar a Q.15 precio unitario', NULL, 15, 'Categoria2.jpg', NULL, NULL, 814, NULL),
(66, 5, 'Sardinas', 'Enlatados Sardinas a Q.39 precio unitario', NULL, 39, 'Categoria2.jpg', NULL, NULL, 843, NULL),
(67, 5, 'Atún en agua/aceite', 'Enlatados Atún en agua/aceite a Q.33 precio unitario', NULL, 33, 'Categoria2.jpg', NULL, NULL, 819, NULL),
(68, 5, 'Chiles', 'Enlatados Chiles a Q.7 precio unitario', NULL, 7, 'Categoria2.jpg', NULL, NULL, 566, NULL),
(69, 5, 'Ensaladas', 'Enlatados Ensaladas a Q.46 precio unitario', NULL, 46, 'Categoria2.jpg', NULL, NULL, 958, NULL),
(70, 5, 'Granos de elote', 'Enlatados Granos de elote a Q.41 precio unitario', NULL, 41, 'Categoria2.jpg', NULL, NULL, 889, NULL),
(71, 5, 'Sopa', 'Enlatados Sopa a Q.23 precio unitario', NULL, 23, 'Categoria2.jpg', NULL, NULL, 782, NULL),
(72, 5, 'Vegetales en conserva', 'Enlatados Vegetales en conserva a Q.45 precio unitario', NULL, 45, 'Categoria2.jpg', NULL, NULL, 976, NULL),
(73, 5, 'Leche condesada/evaporada', 'Lácteos Leche condesada/evaporada a Q.27 precio unitario', NULL, 27, 'Categoria2.jpg', NULL, NULL, 856, NULL),
(74, 5, 'Yogur', 'Lácteos Yogur a Q.26 precio unitario', NULL, 26, 'Categoria2.jpg', NULL, NULL, 738, NULL),
(75, 5, 'Leche entera/deslactosada/light', 'Lácteos Leche entera/deslactosada/light a Q.19 precio unitario', NULL, 19, 'Categoria2.jpg', NULL, NULL, 946, NULL),
(76, 5, 'Crema/media crema', 'Lácteos Crema/media crema a Q.14 precio unitario', NULL, 14, 'Categoria2.jpg', NULL, NULL, 508, NULL),
(77, 5, 'Leche pasteurizada/en polvo', 'Lácteos Leche pasteurizada/en polvo a Q.41 precio unitario', NULL, 41, 'Categoria2.jpg', NULL, NULL, 968, NULL),
(78, 5, 'Mantequilla', 'Lácteos Mantequilla a Q.37 precio unitario', NULL, 37, 'Categoria2.jpg', NULL, NULL, 657, NULL),
(79, 5, 'Margarina', 'Lácteos Margarina a Q.44 precio unitario', NULL, 44, 'Categoria2.jpg', NULL, NULL, 560, NULL),
(80, 5, 'Queso', 'Lácteos Queso a Q.46 precio unitario', NULL, 46, 'Categoria2.jpg', NULL, NULL, 994, NULL),
(81, 5, 'Papas', 'Botanas Papas a Q.6 precio unitario', NULL, 6, 'Categoria2.jpg', NULL, NULL, 897, NULL),
(82, 5, 'Palomitas', 'Botanas Palomitas a Q.11 precio unitario', NULL, 11, 'Categoria2.jpg', NULL, NULL, 972, NULL),
(83, 5, 'Frituras de maíz', 'Botanas Frituras de maíz a Q.7 precio unitario', NULL, 7, 'Categoria2.jpg', NULL, NULL, 522, NULL),
(84, 5, 'Cacahuates', 'Botanas Cacahuates a Q.8 precio unitario', NULL, 8, 'Categoria2.jpg', NULL, NULL, 914, NULL),
(85, 5, 'Botanas saladas', 'Botanas Botanas saladas a Q.19 precio unitario', NULL, 19, 'Categoria2.jpg', NULL, NULL, 558, NULL),
(86, 5, 'Barras alimenticias', 'Botanas Barras alimenticias a Q.12 precio unitario', NULL, 12, 'Categoria2.jpg', NULL, NULL, 645, NULL),
(87, 5, 'Nueces y semillas', 'Botanas Nueces y semillas a Q.15 precio unitario', NULL, 15, 'Categoria2.jpg', NULL, NULL, 631, NULL),
(88, 5, 'Caramelos', 'Confitería Caramelos a Q.9 precio unitario', NULL, 9, 'Categoria2.jpg', NULL, NULL, 793, NULL),
(89, 5, 'Dulces enchilados', 'Confitería Dulces enchilados a Q.6 precio unitario', NULL, 6, 'Categoria2.jpg', NULL, NULL, 858, NULL),
(90, 5, 'Chocolate de mesa/en polvo', 'Confitería Chocolate de mesa/en polvo a Q.10 precio unitario', NULL, 10, 'Categoria2.jpg', NULL, NULL, 782, NULL),
(91, 5, 'Gomas de mascar', 'Confitería Gomas de mascar a Q.18 precio unitario', NULL, 18, 'Categoria2.jpg', NULL, NULL, 945, NULL),
(92, 5, 'Mazapán', 'Confitería Mazapán a Q.25 precio unitario', NULL, 25, 'Categoria2.jpg', NULL, NULL, 780, NULL),
(93, 5, 'Malvaviscos', 'Confitería Malvaviscos a Q.8 precio unitario', NULL, 8, 'Categoria2.jpg', NULL, NULL, 605, NULL),
(94, 5, 'Pulpa de tamarindo', 'Confitería Pulpa de tamarindo a Q.21 precio unitario', NULL, 21, 'Categoria2.jpg', NULL, NULL, 863, NULL),
(95, 5, 'Pastillas de dulce', 'Confitería Pastillas de dulce a Q.6 precio unitario', NULL, 6, 'Categoria2.jpg', NULL, NULL, 688, NULL),
(96, 5, 'Paletas de dulce', 'Confitería Paletas de dulce a Q.21 precio unitario', NULL, 21, 'Categoria2.jpg', NULL, NULL, 532, NULL),
(97, 5, 'Tortillas de harina/maíz', 'Harinas Tortillas de harina/maíz a Q.16 precio unitario', NULL, 16, 'Categoria2.jpg', NULL, NULL, 504, NULL),
(98, 5, 'Galletas dulces/saladas', 'Harinas Galletas dulces/saladas a Q.5 precio unitario', NULL, 5, 'Categoria2.jpg', NULL, NULL, 552, NULL),
(99, 5, 'Pastelillos', 'Harinas Pastelillos a Q.5 precio unitario', NULL, 5, 'Categoria2.jpg', NULL, NULL, 897, NULL),
(100, 5, 'Pan de caja/dulce/molido/tostado', 'Harinas Pan de caja/dulce/molido/tostado a Q.12 precio unitario', NULL, 12, 'Categoria2.jpg', NULL, NULL, 757, NULL),
(101, 6, 'Pan dulce', 'Harinas Pan dulce a Q.11 precio unitario', NULL, 11, 'Categoria3.jpg', NULL, NULL, 841, NULL),
(102, 6, 'Aguacate', 'Frutas y verduras Aguacate a Q.19 precio unitario', NULL, 19, 'Categoria3.jpg', NULL, NULL, 570, NULL),
(103, 6, 'Ajo', 'Frutas y verduras Ajo a Q.24 precio unitario', NULL, 24, 'Categoria3.jpg', NULL, NULL, 890, NULL),
(104, 6, 'Cebolla', 'Frutas y verduras Cebolla a Q.16 precio unitario', NULL, 16, 'Categoria3.jpg', NULL, NULL, 526, NULL),
(105, 6, 'Chile', 'Frutas y verduras Chile a Q.23 precio unitario', NULL, 23, 'Categoria3.jpg', NULL, NULL, 588, NULL),
(106, 6, 'Cilantro/Perejil', 'Frutas y verduras Cilantro/Perejil a Q.15 precio unitario', NULL, 15, 'Categoria3.jpg', NULL, NULL, 947, NULL),
(107, 6, 'Jitomate', 'Frutas y verduras Jitomate a Q.13 precio unitario', NULL, 13, 'Categoria3.jpg', NULL, NULL, 545, NULL),
(108, 6, 'Papas', 'Frutas y verduras Papas a Q.5 precio unitario', NULL, 5, 'Categoria3.jpg', NULL, NULL, 704, NULL),
(109, 6, 'Limones', 'Frutas y verduras Limones a Q.24 precio unitario', NULL, 24, 'Categoria3.jpg', NULL, NULL, 964, NULL),
(110, 6, 'Manzanas', 'Frutas y verduras Manzanas a Q.22 precio unitario', NULL, 22, 'Categoria3.jpg', NULL, NULL, 909, NULL),
(111, 6, 'Naranjas', 'Frutas y verduras Naranjas a Q.14 precio unitario', NULL, 14, 'Categoria3.jpg', NULL, NULL, 522, NULL),
(112, 6, 'Plátanos', 'Frutas y verduras Plátanos a Q.5 precio unitario', NULL, 5, 'Categoria3.jpg', NULL, NULL, 983, NULL),
(113, 6, 'Agua mineral/natural/saborizada', 'Bebidas Agua mineral/natural/saborizada a Q.5 precio unitario', NULL, 5, 'Categoria3.jpg', NULL, NULL, 942, NULL),
(114, 6, 'Jarabes', 'Bebidas Jarabes a Q.17 precio unitario', NULL, 17, 'Categoria3.jpg', NULL, NULL, 749, NULL),
(115, 6, 'Jugos/Néctares', 'Bebidas Jugos/Néctares a Q.14 precio unitario', NULL, 14, 'Categoria3.jpg', NULL, NULL, 769, NULL),
(116, 6, 'Naranjadas', 'Bebidas Naranjadas a Q.11 precio unitario', NULL, 11, 'Categoria3.jpg', NULL, NULL, 531, NULL),
(117, 6, 'Bebidas de soya/en polvo/infantiles/isotónicas', 'Bebidas Bebidas de soya/en polvo/infantiles/isotónicas a Q.22 precio unitario', NULL, 22, 'Categoria3.jpg', NULL, NULL, 925, NULL),
(118, 6, 'Energetizantes', 'Bebidas Energetizantes a Q.20 precio unitario', NULL, 20, 'Categoria3.jpg', NULL, NULL, 542, NULL),
(119, 6, 'Refrescos', 'Bebidas Refrescos a Q.6 precio unitario', NULL, 6, 'Categoria3.jpg', NULL, NULL, 813, NULL),
(120, 6, 'Bebidas preparadas', 'Bebidas alcohólicas Bebidas preparadas a Q.183 precio unitario', NULL, 183, 'Categoria3.jpg', NULL, NULL, 685, NULL),
(121, 6, 'Cerveza', 'Bebidas alcohólicas Cerveza a Q.164 precio unitario', NULL, 164, 'Categoria3.jpg', NULL, NULL, 950, NULL),
(122, 6, 'Anís', 'Bebidas alcohólicas Anís a Q.173 precio unitario', NULL, 173, 'Categoria3.jpg', NULL, NULL, 884, NULL),
(123, 6, 'Brandy', 'Bebidas alcohólicas Brandy a Q.146 precio unitario', NULL, 146, 'Categoria3.jpg', NULL, NULL, 751, NULL),
(124, 6, 'Ginebra', 'Bebidas alcohólicas Ginebra a Q.184 precio unitario', NULL, 184, 'Categoria3.jpg', NULL, NULL, 881, NULL),
(125, 6, 'Cordiales', 'Bebidas alcohólicas Cordiales a Q.141 precio unitario', NULL, 141, 'Categoria3.jpg', NULL, NULL, 941, NULL),
(126, 6, 'Mezcal', 'Bebidas alcohólicas Mezcal a Q.119 precio unitario', NULL, 119, 'Categoria3.jpg', NULL, NULL, 944, NULL),
(127, 6, 'Jerez', 'Bebidas alcohólicas Jerez a Q.103 precio unitario', NULL, 103, 'Categoria3.jpg', NULL, NULL, 592, NULL),
(128, 6, 'Ron', 'Bebidas alcohólicas Ron a Q.131 precio unitario', NULL, 131, 'Categoria3.jpg', NULL, NULL, 733, NULL),
(129, 6, 'Tequila', 'Bebidas alcohólicas Tequila a Q.106 precio unitario', NULL, 106, 'Categoria3.jpg', NULL, NULL, 541, NULL),
(130, 6, 'Sidra', 'Bebidas alcohólicas Sidra a Q.147 precio unitario', NULL, 147, 'Categoria3.jpg', NULL, NULL, 805, NULL),
(131, 6, 'Whisky', 'Bebidas alcohólicas Whisky a Q.117 precio unitario', NULL, 117, 'Categoria3.jpg', NULL, NULL, 566, NULL),
(132, 6, 'Vodka', 'Bebidas alcohólicas Vodka a Q.186 precio unitario', NULL, 186, 'Categoria3.jpg', NULL, NULL, 635, NULL),
(133, 6, 'Pastas listas para comer', 'Alimentos preparados Pastas listas para comer a Q.13 precio unitario', NULL, 13, 'Categoria3.jpg', NULL, NULL, 913, NULL),
(134, 6, 'Sopas en vaso', 'Alimentos preparados Sopas en vaso a Q.14 precio unitario', NULL, 14, 'Categoria3.jpg', NULL, NULL, 959, NULL),
(135, 6, 'Carnes y embutidos', 'Alimentos preparados Carnes y embutidos a Q.27 precio unitario', NULL, 27, 'Categoria3.jpg', NULL, NULL, 530, NULL),
(136, 6, 'Salchichas', 'Alimentos preparados Salchichas a Q.17 precio unitario', NULL, 17, 'Categoria3.jpg', NULL, NULL, 933, NULL),
(137, 6, 'Mortadela', 'Alimentos preparados Mortadela a Q.31 precio unitario', NULL, 31, 'Categoria3.jpg', NULL, NULL, 701, NULL),
(138, 6, 'Tocino', 'Alimentos preparados Tocino a Q.11 precio unitario', NULL, 11, 'Categoria3.jpg', NULL, NULL, 850, NULL),
(139, 6, 'Jamón', 'Alimentos preparados Jamón a Q.10 precio unitario', NULL, 10, 'Categoria3.jpg', NULL, NULL, 843, NULL),
(140, 6, 'Manteca', 'Alimentos preparados Manteca a Q.32 precio unitario', NULL, 32, 'Categoria3.jpg', NULL, NULL, 929, NULL),
(141, 6, 'Chorizo', 'Alimentos preparados Chorizo a Q.17 precio unitario', NULL, 17, 'Categoria3.jpg', NULL, NULL, 669, NULL),
(142, 6, 'Carne de puerco/res/pollo', 'Alimentos preparados Carne de puerco/res/pollo a Q.34 precio unitario', NULL, 34, 'Categoria3.jpg', NULL, NULL, 540, NULL),
(143, 6, 'Suero', 'Medicamentos OTC Suero a Q.17 precio unitario', NULL, 17, 'Categoria3.jpg', NULL, NULL, 986, NULL),
(144, 6, 'Agua oxigenada', 'Medicamentos OTC Agua oxigenada a Q.32 precio unitario', NULL, 32, 'Categoria3.jpg', NULL, NULL, 946, NULL),
(145, 6, 'Preservativos', 'Medicamentos OTC Preservativos a Q.32 precio unitario', NULL, 32, 'Categoria3.jpg', NULL, NULL, 503, NULL),
(146, 6, 'Alcohol', 'Medicamentos OTC Alcohol a Q.30 precio unitario', NULL, 30, 'Categoria3.jpg', NULL, NULL, 630, NULL),
(147, 6, 'Gasas', 'Medicamentos OTC Gasas a Q.10 precio unitario', NULL, 10, 'Categoria3.jpg', NULL, NULL, 1000, NULL),
(148, 6, 'Analgésicos', 'Medicamentos OTC Analgésicos a Q.31 precio unitario', NULL, 31, 'Categoria3.jpg', NULL, NULL, 581, NULL),
(149, 6, 'Antigripales', 'Medicamentos OTC Antigripales a Q.22 precio unitario', NULL, 22, 'Categoria3.jpg', NULL, NULL, 913, NULL),
(150, 6, 'Antiácidos', 'Medicamentos OTC Antiácidos a Q.16 precio unitario', NULL, 16, 'Categoria3.jpg', NULL, NULL, 959, NULL),
(151, 6, 'Toallas húmedas', 'Higiene personal Toallas húmedas a Q.46 precio unitario', NULL, 46, 'Categoria3.jpg', NULL, NULL, 688, NULL),
(152, 6, 'Aceite para bebé', 'Higiene personal Aceite para bebé a Q.55 precio unitario', NULL, 55, 'Categoria3.jpg', NULL, NULL, 813, NULL),
(153, 6, 'Toallas femeninas', 'Higiene personal Toallas femeninas a Q.30 precio unitario', NULL, 30, 'Categoria3.jpg', NULL, NULL, 852, NULL),
(154, 6, 'Algodón', 'Higiene personal Algodón a Q.59 precio unitario', NULL, 59, 'Categoria3.jpg', NULL, NULL, 847, NULL),
(155, 6, 'Tinte para el cabello', 'Higiene personal Tinte para el cabello a Q.44 precio unitario', NULL, 44, 'Categoria3.jpg', NULL, NULL, 530, NULL),
(156, 6, 'Biberones', 'Higiene personal Biberones a Q.59 precio unitario', NULL, 59, 'Categoria3.jpg', NULL, NULL, 637, NULL),
(157, 6, 'Talco', 'Higiene personal Talco a Q.25 precio unitario', NULL, 25, 'Categoria3.jpg', NULL, NULL, 640, NULL),
(158, 6, 'Cepillo de dientes', 'Higiene personal Cepillo de dientes a Q.32 precio unitario', NULL, 32, 'Categoria3.jpg', NULL, NULL, 879, NULL),
(159, 6, 'Shampoo/Acondicionador', 'Higiene personal Shampoo/Acondicionador a Q.33 precio unitario', NULL, 33, 'Categoria3.jpg', NULL, NULL, 728, NULL),
(160, 6, 'Cotonetes', 'Higiene personal Cotonetes a Q.45 precio unitario', NULL, 45, 'Categoria3.jpg', NULL, NULL, 587, NULL),
(161, 6, 'Rastrillos', 'Higiene personal Rastrillos a Q.38 precio unitario', NULL, 38, 'Categoria3.jpg', NULL, NULL, 694, NULL),
(162, 6, 'Crema corporal/facial', 'Higiene personal Crema corporal/facial a Q.28 precio unitario', NULL, 28, 'Categoria3.jpg', NULL, NULL, 768, NULL),
(163, 6, 'Papel higiénico', 'Higiene personal Papel higiénico a Q.50 precio unitario', NULL, 50, 'Categoria3.jpg', NULL, NULL, 909, NULL),
(164, 6, 'Crema para afeitar', 'Higiene personal Crema para afeitar a Q.44 precio unitario', NULL, 44, 'Categoria3.jpg', NULL, NULL, 713, NULL),
(165, 6, 'Pañuelos faciales/desechables', 'Higiene personal Pañuelos faciales/desechables a Q.32 precio unitario', NULL, 32, 'Categoria3.jpg', NULL, NULL, 925, NULL),
(166, 6, 'Dentífricos', 'Higiene personal Dentífricos a Q.39 precio unitario', NULL, 39, 'Categoria3.jpg', NULL, NULL, 611, NULL),
(167, 6, 'Desodorantes en barra/en aerosol', 'Higiene personal Desodorantes en barra/en aerosol a Q.57 precio unitario', NULL, 57, 'Categoria3.jpg', NULL, NULL, 584, NULL),
(168, 6, 'Maquillaje', 'Higiene personal Maquillaje a Q.43 precio unitario', NULL, 43, 'Categoria3.jpg', NULL, NULL, 521, NULL),
(169, 6, 'Enjuague bucal', 'Higiene personal Enjuague bucal a Q.59 precio unitario', NULL, 59, 'Categoria3.jpg', NULL, NULL, 831, NULL),
(170, 6, 'Lubricantes para labios', 'Higiene personal Lubricantes para labios a Q.55 precio unitario', NULL, 55, 'Categoria3.jpg', NULL, NULL, 568, NULL),
(171, 6, 'Gel/Spray', 'Higiene personal Gel/Spray a Q.57 precio unitario', NULL, 57, 'Categoria3.jpg', NULL, NULL, 881, NULL),
(172, 6, 'Loción hidratante', 'Higiene personal Loción hidratante a Q.40 precio unitario', NULL, 40, 'Categoria3.jpg', NULL, NULL, 934, NULL),
(173, 6, 'Jabones corporales/de tocador', 'Higiene personal Jabones corporales/de tocador a Q.32 precio unitario', NULL, 32, 'Categoria3.jpg', NULL, NULL, 673, NULL),
(174, 6, 'Suavizante de telas', 'Uso doméstico Suavizante de telas a Q.59 precio unitario', NULL, 59, 'Categoria3.jpg', NULL, NULL, 570, NULL),
(175, 6, 'Ácido muriático', 'Uso doméstico Ácido muriático a Q.43 precio unitario', NULL, 43, 'Categoria3.jpg', NULL, NULL, 695, NULL),
(176, 6, 'Sosa caústica', 'Uso doméstico Sosa caústica a Q.53 precio unitario', NULL, 53, 'Categoria3.jpg', NULL, NULL, 809, NULL),
(177, 6, 'Aluminio', 'Uso doméstico Aluminio a Q.48 precio unitario', NULL, 48, 'Categoria3.jpg', NULL, NULL, 785, NULL),
(178, 6, 'Pilas', 'Uso doméstico Pilas a Q.40 precio unitario', NULL, 40, 'Categoria3.jpg', NULL, NULL, 570, NULL),
(179, 6, 'Shampoo para ropa', 'Uso doméstico Shampoo para ropa a Q.33 precio unitario', NULL, 33, 'Categoria3.jpg', NULL, NULL, 978, NULL),
(180, 6, 'Servilletas', 'Uso doméstico Servilletas a Q.29 precio unitario', NULL, 29, 'Categoria3.jpg', NULL, NULL, 675, NULL),
(181, 6, 'Servitoallas', 'Uso doméstico Servitoallas a Q.43 precio unitario', NULL, 43, 'Categoria3.jpg', NULL, NULL, 762, NULL),
(182, 6, 'Aromatizantes', 'Uso doméstico Aromatizantes a Q.51 precio unitario', NULL, 51, 'Categoria3.jpg', NULL, NULL, 800, NULL),
(183, 6, 'Cera para automóvil/para calzado', 'Uso doméstico Cera para automóvil/para calzado a Q.55 precio unitario', NULL, 55, 'Categoria3.jpg', NULL, NULL, 902, NULL),
(184, 6, 'Pastillas sanitarias', 'Uso doméstico Pastillas sanitarias a Q.43 precio unitario', NULL, 43, 'Categoria3.jpg', NULL, NULL, 743, NULL),
(185, 6, 'Limpiadores líquidos', 'Uso doméstico Limpiadores líquidos a Q.29 precio unitario', NULL, 29, 'Categoria3.jpg', NULL, NULL, 639, NULL),
(186, 6, 'Cerillos', 'Uso doméstico Cerillos a Q.31 precio unitario', NULL, 31, 'Categoria3.jpg', NULL, NULL, 569, NULL),
(187, 6, 'Cloro/Blanqueador', 'Uso doméstico Cloro/Blanqueador a Q.39 precio unitario', NULL, 39, 'Categoria3.jpg', NULL, NULL, 670, NULL),
(188, 6, 'Jabón en barra', 'Uso doméstico Jabón en barra a Q.39 precio unitario', NULL, 39, 'Categoria3.jpg', NULL, NULL, 906, NULL),
(189, 6, 'Insecticidas', 'Uso doméstico Insecticidas a Q.29 precio unitario', NULL, 29, 'Categoria3.jpg', NULL, NULL, 659, NULL),
(190, 6, 'Fibras limpiadoras', 'Uso doméstico Fibras limpiadoras a Q.33 precio unitario', NULL, 33, 'Categoria3.jpg', NULL, NULL, 967, NULL),
(191, 7, 'Desinfectantes', 'Uso doméstico Desinfectantes a Q.36 precio unitario', NULL, 36, 'Categoria3.jpg', NULL, NULL, 862, NULL),
(192, 7, 'Detergentes para trastes/para ropa', 'Uso doméstico Detergentes para trastes/para ropa a Q.43 precio unitario', NULL, 43, 'Categoria3.jpg', NULL, NULL, 1000, NULL),
(193, 7, 'Congelados', 'Uso doméstico Congelados a Q.40 precio unitario', NULL, 40, 'Categoria3.jpg', NULL, NULL, 927, NULL),
(194, 7, 'Paletas', 'Uso doméstico Paletas a Q.35 precio unitario', NULL, 35, 'Categoria3.jpg', NULL, NULL, 992, NULL),
(195, 7, 'Helados', 'Uso doméstico Helados a Q.35 precio unitario', NULL, 35, 'Categoria3.jpg', NULL, NULL, 936, NULL),
(196, 7, 'Verduras/Frutas congeladas', 'Uso doméstico Verduras/Frutas congeladas a Q.27 precio unitario', NULL, 27, 'Categoria3.jpg', NULL, NULL, 763, NULL),
(197, 7, 'Hielo', 'Uso doméstico Hielo a Q.48 precio unitario', NULL, 48, 'Categoria3.jpg', NULL, NULL, 894, NULL),
(198, 7, 'Velas/Valadoras', 'Jarcería y productos de limpieza Velas/Valadoras a Q.42 precio unitario', NULL, 42, 'Categoria3.jpg', NULL, NULL, 951, NULL),
(199, 7, 'Cepillos de plástico', 'Jarcería y productos de limpieza Cepillos de plástico a Q.58 precio unitario', NULL, 58, 'Categoria3.jpg', NULL, NULL, 555, NULL),
(200, 7, 'Vasos desechables', 'Jarcería y productos de limpieza Vasos desechables a Q.33 precio unitario', NULL, 33, 'Categoria3.jpg', NULL, NULL, 797, NULL),
(201, 7, 'Cinta adhesiva', 'Jarcería y productos de limpieza Cinta adhesiva a Q.55 precio unitario', NULL, 55, 'Categoria3.jpg', NULL, NULL, 709, NULL),
(202, 7, 'Cucharas/Tenedores/Cuchillos de plástico', 'Jarcería y productos de limpieza Cucharas/Tenedores/Cuchillos de plástico a Q.33 precio unitario', NULL, 33, 'Categoria3.jpg', NULL, NULL, 773, NULL),
(203, 7, 'Escobas/Trapeadores/Mechudos', 'Jarcería y productos de limpieza Escobas/Trapeadores/Mechudos a Q.43 precio unitario', NULL, 43, 'Categoria3.jpg', NULL, NULL, 633, NULL),
(204, 7, 'Trampas para ratas', 'Jarcería y productos de limpieza Trampas para ratas a Q.49 precio unitario', NULL, 49, 'Categoria3.jpg', NULL, NULL, 982, NULL),
(205, 7, 'Extensiones/Multicontacto', 'Jarcería y productos de limpieza Extensiones/Multicontacto a Q.51 precio unitario', NULL, 51, 'Categoria3.jpg', NULL, NULL, 831, NULL),
(206, 7, 'Recogedor de metal/plástico', 'Jarcería y productos de limpieza Recogedor de metal/plástico a Q.38 precio unitario', NULL, 38, 'Categoria3.jpg', NULL, NULL, 897, NULL),
(207, 7, 'Popotes', 'Jarcería y productos de limpieza Popotes a Q.30 precio unitario', NULL, 30, 'Categoria3.jpg', NULL, NULL, 638, NULL),
(208, 7, 'Platos desechables', 'Jarcería y productos de limpieza Platos desechables a Q.32 precio unitario', NULL, 32, 'Categoria3.jpg', NULL, NULL, 677, NULL),
(209, 7, 'Focos', 'Jarcería y productos de limpieza Focos a Q.48 precio unitario', NULL, 48, 'Categoria3.jpg', NULL, NULL, 662, NULL),
(210, 7, 'Fusibles', 'Jarcería y productos de limpieza Fusibles a Q.42 precio unitario', NULL, 42, 'Categoria3.jpg', NULL, NULL, 645, NULL),
(211, 7, 'Jergas/Franelas', 'Jarcería y productos de limpieza Jergas/Franelas a Q.58 precio unitario', NULL, 58, 'Categoria4.jpg', NULL, NULL, 737, NULL),
(212, 7, 'Matamoscas', 'Jarcería y productos de limpieza Matamoscas a Q.57 precio unitario', NULL, 57, 'Categoria4.jpg', NULL, NULL, 962, NULL),
(213, 7, 'Pegamento', 'Jarcería y productos de limpieza Pegamento a Q.28 precio unitario', NULL, 28, 'Categoria4.jpg', NULL, NULL, 664, NULL),
(214, 7, 'Mecate/Cuerda', 'Jarcería y productos de limpieza Mecate/Cuerda a Q.58 precio unitario', NULL, 58, 'Categoria4.jpg', NULL, NULL, 941, NULL),
(215, 7, 'Hojas', 'Papelería Hojas a Q.3 precio unitario', NULL, 3, 'Categoria4.jpg', NULL, NULL, 889, NULL),
(216, 7, 'Lápices', 'Papelería Lápices a Q.7 precio unitario', NULL, 7, 'Categoria4.jpg', NULL, NULL, 574, NULL),
(217, 7, 'Colores', 'Papelería Colores a Q.2 precio unitario', NULL, 2, 'Categoria4.jpg', NULL, NULL, 698, NULL),
(218, 7, 'Libretas', 'Papelería Libretas a Q.6 precio unitario', NULL, 6, 'Categoria4.jpg', NULL, NULL, 714, NULL),
(219, 7, 'Útiles escolares en general', 'Papelería Útiles escolares en general a Q.9 precio unitario', NULL, 9, 'Categoria4.jpg', NULL, NULL, 600, NULL),
(220, 7, 'Tarjetas telefónicas', 'Otros Tarjetas telefónicas a Q.52 precio unitario', NULL, 52, 'Categoria4.jpg', NULL, NULL, 634, NULL),
(221, 7, 'Recargas móviles', 'Otros Recargas móviles a Q.67 precio unitario', NULL, 67, 'Categoria4.jpg', NULL, NULL, 802, NULL),
(222, 7, 'Cigarrillos', 'Otros Cigarrillos a Q.59 precio unitario', NULL, 59, 'Categoria4.jpg', NULL, NULL, 709, NULL),
(223, 8, 'Tarjetas prepagadas', 'Otros Tarjetas prepagadas a Q.50 precio unitario', NULL, 50, 'Categoria4.jpg', NULL, NULL, 771, NULL),
(224, 8, 'Giftcards', 'Otros Giftcards a Q.73 precio unitario', NULL, 73, 'Categoria4.jpg', NULL, NULL, 573, NULL),
(225, 8, 'Copias/Impresiones', 'Otros Copias/Impresiones a Q.56 precio unitario', NULL, 56, 'Categoria4.jpg', NULL, NULL, 905, NULL),
(226, 8, 'Variedad de Zapatos y Tenis', 'Varios colores y diferentes tallas para hombres y mujeres a Q.250 precio unitario', NULL, 250, 'Categoria4.jpg', NULL, NULL, 975, NULL),
(282, NULL, '', '', NULL, 0, '', NULL, NULL, NULL, 'e654faw465asdv98as');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(11, 80, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(12, 11, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(13, 21, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(14, 90, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(15, 88, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(16, 57, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(17, 50, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(18, 76, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(19, 23, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(20, 57, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(21, 42, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(22, 1, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(23, 77, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(24, 61, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(25, 86, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(26, 40, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(27, 27, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(28, 36, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(29, 92, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(30, 84, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(31, 31, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(32, 100, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(33, 17, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(34, 67, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(35, 93, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(36, 38, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(37, 47, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(38, 94, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(39, 95, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(40, 12, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(41, 65, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(42, 37, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(43, 6, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(44, 73, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(45, 69, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(46, 52, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(47, 35, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(48, 48, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(49, 99, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(50, 32, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(51, 7, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(52, 3, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(53, 55, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(54, 63, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(55, 50, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(56, 3, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(57, 70, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(58, 11, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(59, 37, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11'),
(60, 65, 'PAY-1RT494832H294925RLLZ7TZA', '2022-06-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `nit` varchar(15) DEFAULT NULL,
  `address` text NOT NULL,
  `tipocliente` varchar(50) DEFAULT NULL,
  `contact_info` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) DEFAULT NULL,
  `reset_code` varchar(15) DEFAULT NULL,
  `created_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `nit`, `address`, `tipocliente`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'cliente2414806@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SALGUERO GONZALEZ, ALFREDO Y/O FERRETERIA SALGUERO', 'Lopez', '2414806', '8 Calle 2-57 Zona 24 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(2, 'cliente47444463@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MARTINEZ RAMIREZ, GLENDA BEATRIZ Y/O SERVICENTRO C', 'Lopez', '47444463', '6 Calle 7-13 Zona 9 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(3, 'cliente4542727@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'VIGILANCIA Y SERVICIOS, S.A.', 'Lopez', '4542727', '4 Calle 3-70 Zona 18 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(4, 'cliente19128492@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CLIMACO OLIVA, MARVIN LEONEL Y/O GALUC', 'Lopez', '19128492', '10 Calle 1-23 Zona 7 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(5, 'cliente27731453@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'BOUTIQUE ELIZABETH Y/O RODAS, OSCAR ROLANDO', 'Lopez', '27731453', '5 Calle 2-59 Zona 5 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(6, 'cliente26147349@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'PEREZ RUANO, MIGDALI Y/O TALLER DE MECANICA TONY', 'Lopez', '26147349', '5 Calle 1-61 Zona 12 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(7, 'cliente14019053@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MAYOR COLOCH MARTA Y/O TIENDA DARWINCITO', 'Lopez', '14019053', '5 Calle 7-89 Zona 12 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(8, 'cliente397099@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'VELEZ ZIMERI, ERWIN ENRIQUE', 'Lopez', '397099', '1 Calle 1-79 Zona 16 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(9, 'cliente420612967@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'REPRESENTACIONES Y COMERCIALIZACIONES VARIADAS, S.', 'Lopez', '420612967', '4 Calle 8-18 Zona 22 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(10, 'cliente39398027@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CARDONA PANTALEON DE QUIROZ, JENNIFER ARGENTINA Y/', 'Lopez', '39398027', '5 Calle 7-44 Zona 4 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(11, 'cliente36645292@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SEIT - SERVICIOS EMPRESARIALES DE INFORMATICA Y TE', 'Lopez', '36645292', '5 Calle 9-36 Zona 3 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(12, 'cliente45327908@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'LAVARREDA PAZ, ANALUCIA', 'Lopez', '45327908', '4 Calle 4-30 Zona 17 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(13, 'cliente2959005@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MONTENEGRO VALLADARES, SILVESTRE Y/O TRANSPORTES L', 'Lopez', '2959005', '8 Calle 7-32 Zona 13 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(14, 'cliente43911277@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'FIGUEROA MARTINEZ DE BARRERA, GLENDA DOMITILA Y/O ', 'Lopez', '43911277', '2 Calle 2-19 Zona 5 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(15, 'cliente1980605@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'PONCE DEL VECCHIO, MANUEL ENRIQUE Y/O PONCE DEL VE', 'Lopez', '1980605', '1 Calle 6-27 Zona 21 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(16, 'cliente31753930@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MEGATIENDAS, S.A.', 'Lopez', '31753930', '10 Calle 7-96 Zona 15 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(17, 'cliente41546157@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'PEREZ MONTERROSO, ALMA MARIBEL Y/O IXMUCANE TRAVEL', 'Lopez', '41546157', '4 Calle 6-53 Zona 13 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(18, 'cliente290@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CORDERO MERIDA, MIRIAM AIDE', 'Lopez', '290', '6 Calle 8-77 Zona 3 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(19, 'cliente42786811@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SIRSCOM', 'Lopez', '42786811', '9 Calle 3-22 Zona 20 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(20, 'cliente265799609@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'GRUPO SJ, S.A.', 'Lopez', '265799609', '1 Calle 7-22 Zona 22 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(21, 'cliente18867706@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'TZUL, OSCAR Y/O CERVECERIA EL OLVIDO', 'Lopez', '18867706', '4 Calle 5-37 Zona 18 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(22, 'cliente13263940@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'LOPEZ RAMIREZ, JOSE DARIO Y/O TIENDA EL DIAMANTE', 'Lopez', '13263940', '3 Calle 9-76 Zona 25 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(23, 'cliente15508955@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'INVERSIONES MULTISERVICIOS GUATEMALA, S.A.', 'Lopez', '15508955', '8 Calle 3-41 Zona 16 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(24, 'cliente349777064@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'UNIVISERSIDAD BIBLICA INTERNACIONAL TEOLOGICA', 'Lopez', '349777064', '5 Calle 4-44 Zona 22 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(25, 'cliente13381507@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'LEON ENTERPRISES HOLDING', 'Lopez', '13381507', '4 Calle 8-36 Zona 10 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(26, 'cliente30368846@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'PINEDA ROMERO, MARIA GABRIELA Y/O REST GRAN JAGUAR', 'Lopez', '30368846', '1 Calle 6-40 Zona 4 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(27, 'cliente4972457@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ALDANA SOLIS, HERBERT ROMERO Y/O DISTRIBUIDORA QUI', 'Lopez', '4972457', '3 Calle 8-26 Zona 5 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(28, 'cliente45845655@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SYELDOC SOCIEDAD ANONIMA', 'Lopez', '45845655', '4 Calle 7-60 Zona 4 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(29, 'cliente305264893@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'EDITORIAL LIBELULA, S.A.', 'Lopez', '305264893', '4 Calle 5-41 Zona 3 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(30, 'cliente101231118@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'REAL MARKETING, SOCIEDAD ANONIMA', 'Lopez', '101231118', '7 Calle 7-37 Zona 5 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(31, 'cliente14996870@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'VELASQUEZ XILOJ, FREDY ARMANDO Y/O MULTISERVICIOS ', 'Lopez', '14996870', '3 Calle 5-45 Zona 21 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(32, 'cliente452016K@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'DISTRIBUIDORA MORALES Y/O IVAN ALEXIS MORALES LARA', 'Lopez', '452016K', '7 Calle 8-96 Zona 6 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(33, 'cliente15997826@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'FLYUS, SOCIEDAD ANONIMA', 'Lopez', '15997826', '8 Calle 8-49 Zona 12 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(34, 'cliente22218156@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'TODO EN CALZADO SOCIEDAD ANONIMA', 'Lopez', '22218156', '10 Calle 4-90 Zona 10 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(35, 'cliente48453776@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'DBI DESIGN, SOCIEDAD ANONIMA', 'Lopez', '48453776', '2 Calle 3-33 Zona 22 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(36, 'cliente283964947@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'BORGATTA GUATEMALA, SOCIEDAD ANONIMA', 'Lopez', '283964947', '10 Calle 2-27 Zona 6 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(37, 'cliente4573062@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'PRADO RECINOS, JORGE LEONEL Y/O MULTISERVICIOS GEN', 'Lopez', '4573062', '3 Calle 1-77 Zona 6 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(38, 'cliente49749393@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'RAMOS HERNANDEZ, AUGUSTO MARIO Y/O MULTISERVICIOS ', 'Lopez', '49749393', '6 Calle 6-40 Zona 6 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(39, 'cliente29497599@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ENRIQUEZ ESQUIVEL, LUIS ALBERTO Y/O IMPRENTA Y LIT', 'Lopez', '29497599', '3 Calle 7-53 Zona 25 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(40, 'cliente3038924@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'REPRESENTACIONES GARCIA', 'Lopez', '3038924', '1 Calle 3-85 Zona 5 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(41, 'cliente2116060@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SOSA HURTADO DE TARACENA, GILDA NOEMI YO IT SERVIC', 'Lopez', '2116060', '8 Calle 7-93 Zona 19 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(42, 'cliente1278621@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'PATRONATO DE ASISTENCIA SOCIAL DEL HOSPITAL ROOSEV', 'Lopez', '1278621', '5 Calle 1-44 Zona 2 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(43, 'cliente34547215@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'RODRIGUEZ MOSCOSO, RICARDO ALEJANDRO', 'Lopez', '34547215', '4 Calle 7-84 Zona 2 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(44, 'cliente43663463@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'GONZALEZ RAMIREZ, ANDREA Y/O INMOBILIARIA ALQUILO ', 'Lopez', '43663463', '1 Calle 5-57 Zona 17 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(45, 'cliente15381065@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'GARCIA VALENZUELA, URBIN ORLANDO Y/O SERVICIO DE I', 'Lopez', '15381065', '1 Calle 3-13 Zona 15 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(46, 'cliente17271378@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'RUMMLER FIGUEROA FIDEL Y/O TRANSPORTE RUMMLER', 'Lopez', '17271378', '4 Calle 6-99 Zona 23 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(47, 'cliente4529881@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ARANA ASCENCIO, JOSE MIGUEL Y/O RESTAURANTE MIKE', 'Lopez', '4529881', '3 Calle 6-66 Zona 4 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(48, 'cliente46054835@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'IGLESIA EVANGELICA MINISTERIOS DE RESTAURACION MAN', 'Lopez', '46054835', '1 Calle 1-30 Zona 6 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(49, 'cliente12792311@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'GARCIA RIVERA DE RAMIREZ, CONSUELO NOEMI Y/O RESTA', 'Lopez', '12792311', '1 Calle 4-37 Zona 11 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(50, 'cliente1842117@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'LOPEZ SOLOGAISTOA, LUIS GERARDO Y/O DISTRIBUCIONES', 'Lopez', '1842117', '4 Calle 6-67 Zona 13 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(51, 'cliente407629073@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'GRUPO DON SABOR SOCIEDAD ANONIMA', 'Lopez', '407629073', '1 Calle 7-45 Zona 17 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(52, 'cliente31782234@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CARCAMO DE LEON, BREVERLY MARISA Y/O SWEET HOME', 'Lopez', '31782234', '2 Calle 5-49 Zona 3 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(53, 'cliente46459628@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MULTISERVICIOS LAUSANA, SOCIEDAD ANONIMA', 'Lopez', '46459628', '3 Calle 6-38 Zona 4 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(54, 'cliente37997307@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CONDOMINIO SUITES VERSALLES', 'Lopez', '37997307', '4 Calle 3-10 Zona 1 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(55, 'cliente30371882@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CUIN LASTOR TOMASA Y/O CANTINA LA TABERNA', 'Lopez', '30371882', '1 Calle 6-46 Zona 15 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(56, 'cliente18908078@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ESCUELA DE VUELO DE OCCIDENTE', 'Lopez', '18908078', '3 Calle 8-22 Zona 20 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(57, 'cliente15450636@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MATIAS MARROQUIN, MARIO DAVID / COMERCIAL MATIAS', 'Lopez', '15450636', '10 Calle 2-12 Zona 19 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(58, 'cliente246537654@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MANUFACTURAS SOCKS Y KNITS, SOCIEDAD ANONIMA', 'Lopez', '246537654', '10 Calle 2-67 Zona 12 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(59, 'cliente4661557@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'POLLO FRITO ALBAMAR', 'Lopez', '4661557', '2 Calle 6-98 Zona 5 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(60, 'cliente19568570@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'GOMEZ HERNANDEZ, RUDY ROLANDO Y/O SERVICIOS IOGUAT', 'Lopez', '19568570', '9 Calle 1-67 Zona 15 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(61, 'cliente25972124@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ANDE, SOCIEDAD ANONIMA', 'Lopez', '25972124', '10 Calle 5-67 Zona 16 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(62, 'cliente38240376@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ASISTENCIA E INVESTIGACION MEDICA, SOCIEDAD ANONIM', 'Lopez', '38240376', '4 Calle 7-24 Zona 13 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(63, 'cliente2051010@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ATISA, SOCIEDAD ANONIMA', 'Lopez', '2051010', '6 Calle 3-50 Zona 10 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(64, 'cliente11632961@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ALVAREZ ALVAREZ, ERICK GEOVANY Y/O MOBISPRO', 'Lopez', '11632961', '10 Calle 3-20 Zona 7 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(65, 'cliente14785249@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'DELICATESSEN LA ESTANCIA, SOCIEDAD ANONIMA', 'Lopez', '14785249', '6 Calle 7-40 Zona 24 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(66, 'cliente1838374@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'KARDAMOMUSS 4', 'Lopez', '1838374', '6 Calle 2-85 Zona 18 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(67, 'cliente37070914@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'RODRIGUEZ GODINEZ DE GARCIA, KARINA LIZETH', 'Lopez', '37070914', '2 Calle 6-85 Zona 25 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(68, 'cliente29330653@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ART GAMES', 'Lopez', '29330653', '2 Calle 5-12 Zona 20 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(69, 'cliente2940379@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'JORGE ADALBERTO SALAZAR RODGRIGUEZ Y/O GASTROHELPS', 'Lopez', '2940379', '4 Calle 7-37 Zona 7 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(70, 'cliente25869722@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'IMPACTO INTERACTIVO, SOCIEDAD ANONIMA', 'Lopez', '25869722', '7 Calle 9-39 Zona 14 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(71, 'cliente162@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CONSTRUCTORA EIN ARQUITECTURA', 'Lopez', '162', '5 Calle 4-64 Zona 9 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(72, 'cliente48234120@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'BEN CHIROY, SANTOS Y/O COMERCIAL LA BENDICION', 'Lopez', '48234120', '1 Calle 3-72 Zona 8 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(73, 'cliente48885870@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SANCHEZ VELASQUEZ MARIO ENRIQUE Y/O TIENDA Y PANAD', 'Lopez', '48885870', '5 Calle 8-18 Zona 1 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(74, 'cliente16504528@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MONARCA', 'Lopez', '16504528', '2 Calle 8-61 Zona 5 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(75, 'cliente43765377@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CORPORACION NOVIEMBRE NUEVE', 'Lopez', '43765377', '4 Calle 6-64 Zona 22 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(76, 'cliente3212026@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'INTERNACIONAL DEL CALZADO, S.A', 'Lopez', '3212026', '3 Calle 7-13 Zona 20 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(77, 'cliente2535183@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'LIANO QUEZADA, FOSCOLO Y/O ING. FOSCOLO LIANO', 'Lopez', '2535183', '6 Calle 5-34 Zona 25 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(78, 'cliente3724753@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ARTOLA DAVILA DE GIRON, SILVIA JEANNETTE', 'Lopez', '3724753', '6 Calle 1-10 Zona 1 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(79, 'cliente37728638@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ASOCIAACION CIVIL DE VECINOS DEL COND VILLAS ARCAN', 'Lopez', '37728638', '4 Calle 3-80 Zona 3 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(80, 'cliente36777410@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'PEREZ ESQUIVEL, VICTOR JOSUE Y/O AGROSERVICIO LA B', 'Lopez', '36777410', '7 Calle 7-87 Zona 2 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(81, 'cliente16943327@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'QUINONEZ TELLO DE RIVERA, ALEJANDRA Y/O OPTIK BLES', 'Lopez', '16943327', '3 Calle 1-12 Zona 9 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(82, 'cliente2733733@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'RIVERA ARANGO, JOSE RODOLFO Y/O LABORATORIO CLINIC', 'Lopez', '2733733', '7 Calle 2-45 Zona 24 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(83, 'cliente17762672@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'LICEO DE COMPUTACION, C. S. S.  S. A.', 'Lopez', '17762672', '5 Calle 9-23 Zona 18 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(84, 'cliente4982026@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'INTERNACIONAL DE CALZADO,S.A', 'Lopez', '4982026', '4 Calle 6-15 Zona 16 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(85, 'cliente3990404@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'IMPRENTA ALMA', 'Lopez', '3990404', '6 Calle 3-67 Zona 21 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(86, 'cliente32220195@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'GRUPO COMERCIAL JOME S. A.', 'Lopez', '32220195', '3 Calle 9-76 Zona 20 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(87, 'cliente25811987@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'IMPORTADORA Y COMERCIALIZADORA RUCAL - SOCIEDAD AN', 'Lopez', '25811987', '4 Calle 4-57 Zona 12 Ciudad de Guatemala', 'MICRO', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(88, 'cliente31768387@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'AGROINDUSTRIA DE LACTEOS DE GUATEMALA, S.A.', 'Lopez', '31768387', '4 Calle 2-37 Zona 2 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(89, 'cliente32164477@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MORALES MORALES, JOSE LUIS Y/O  TRANSPORTES TOMASI', 'Lopez', '32164477', '8 Calle 7-23 Zona 22 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(90, 'cliente1482239@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'MAURICIO, RAFAEL Y/O  PANADERIA Y PASTELERIA SAN F', 'Lopez', '1482239', '10 Calle 8-17 Zona 11 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(91, 'cliente38784757@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'ESCOBAR JIMENEZ, HENRY ESTUARDO Y/O TRANSPORTES TU', 'Lopez', '38784757', '1 Calle 8-98 Zona 14 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(92, 'cliente16184443@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'LIQUES SECAIDA, JOSE DOMINGO', 'Lopez', '16184443', '3 Calle 8-12 Zona 5 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(93, 'cliente1925974@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SUAREZ CORDON, HUMBERTO', 'Lopez', '1925974', '3 Calle 5-50 Zona 3 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(94, 'cliente25437739@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'KENAT SOCIEDAD ANONIMA', 'Lopez', '25437739', '7 Calle 1-13 Zona 25 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(95, 'cliente12038154@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'METALMECANICA INDUSTRIAL NICO Y/O ZAMADHI LOPEZ CU', 'Lopez', '12038154', '9 Calle 7-37 Zona 1 Ciudad de Nicaragua', 'LARGE', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(96, 'cliente262754K@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SERVICOSA, S.A.', 'Lopez', '262754K', '9 Calle 6-54 Zona 10 Ciudad de Honduras', 'MEDIUM', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(97, 'cliente25962169@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'SERVICIOS DE ADMINISTRACION DE PROYECTOS CHO REYES', 'Lopez', '25962169', '2 Calle 5-58 Zona 25 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(98, 'cliente4949657@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'GONZALEZ PINDA DE VERAS, BRENDA CLADETTE Y/O STRAT', 'Lopez', '4949657', '9 Calle 2-91 Zona 9 Ciudad de El Salvador', 'SMALL', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(99, 'cliente15791753@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'FRECH AYALA, NUVIA ELIZABETH Y/O RESTAURANTE Y SER', 'Lopez', '15791753', '5 Calle 6-72 Zona 12 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(100, 'cliente3951530@gmail.com', '$2y$10$HIBt0sFyFq2gN8y7xTgSB.cE8xVFUpkJVn6/53HPbR7VJ160pt7Xe', 0, 'CONTRERAS BARRERA, MAYNOR RENE Y/O PROMOCIONES LA ', 'Lopez', '3951530', '9 Calle 6-92 Zona 21 Ciudad de Costa Rica', 'TBD', NULL, 'avataredgar.png', 1, NULL, NULL, NULL),
(500, 'administrador@gmail.com', '$2y$10$q2vw56lRhv8TdKipZI2F9u5i9V18cIiB.Kdj4fACk.3MM9/xeyD7G', 1, 'Edgar', 'Lopez', NULL, 'Capital', NULL, NULL, 'kisspng-github-inc-source-code-version-control-github-5ac019b770f0f0.2314212515225389354626.jpg', 1, '', '', '2022-06-04'),
(501, 'vendedor@gmail.com', '$2y$10$ePkhNMK4iPM2uMzsnGQm/OVbyy7eVj5nWkoUCU/W.yjCyeDkvoGOG', 2, 'Cliente', 'ApellidoCliente', NULL, '', NULL, NULL, 'FreddyVega8bits-1adaf333-2143-449e-b5ba-ae0a0a4f7929.PNG', 1, '', '', '2022-06-04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modalidadpago`
--
ALTER TABLE `modalidadpago`
  ADD PRIMARY KEY (`idmodalidad`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `modalidadpago`
--
ALTER TABLE `modalidadpago`
  MODIFY `idmodalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
