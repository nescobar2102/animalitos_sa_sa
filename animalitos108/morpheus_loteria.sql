-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-12-2017 a las 08:46:46
-- Versión del servidor: 5.7.18
-- Versión de PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `morpheus_loteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
`id_cliente` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisiones`
--

CREATE TABLE IF NOT EXISTS `comisiones` (
`id` int(11) NOT NULL,
  `comision_triple` int(11) NOT NULL,
  `comision_terminal` int(11) NOT NULL,
  `pago_triple` int(11) NOT NULL,
  `pago_terminal` int(11) NOT NULL,
  `pago_id_vendedor` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comisiones`
--

INSERT INTO `comisiones` (`id`, `comision_triple`, `comision_terminal`, `pago_triple`, `pago_terminal`, `pago_id_vendedor`) VALUES
(1, 5, 5, 5, 5, 1),
(2, 1, 1, 6, 6, 41),
(3, 0, 0, 0, 0, 42),
(4, 0, 0, 0, 0, 43),
(5, 0, 0, 0, 0, 44),
(6, 25, 10, 5, 5, 45),
(7, 0, 0, 0, 0, 46),
(8, 0, 0, 0, 0, 47),
(9, 0, 0, 0, 0, 48),
(10, 0, 0, 0, 0, 49),
(11, 0, 0, 0, 0, 50),
(12, 0, 0, 0, 0, 51),
(13, 0, 0, 0, 0, 52),
(14, 0, 0, 0, 0, 53),
(15, 0, 0, 0, 0, 54),
(16, 0, 0, 0, 0, 55),
(17, 10, 10, 6, 6, 56),
(18, 0, 0, 0, 0, 57),
(19, 12, 10, 6, 6, 58),
(20, 0, 0, 0, 0, 59),
(21, 10, 10, 7, 7, 60),
(22, 0, 0, 0, 0, 61),
(23, 30, 10, 7, 7, 62),
(24, 10, 10, 7, 7, 63),
(25, 0, 0, 0, 0, 64),
(26, 0, 0, 0, 0, 65),
(27, 0, 0, 0, 0, 66),
(28, 0, 0, 0, 0, 67),
(29, 0, 0, 0, 0, 68),
(30, 0, 0, 0, 0, 69),
(31, 0, 0, 0, 0, 70),
(32, 0, 0, 0, 0, 71),
(33, 0, 0, 0, 0, 72),
(34, 0, 0, 0, 0, 73),
(35, 0, 0, 0, 0, 74),
(36, 0, 0, 0, 0, 75),
(37, 0, 0, 0, 0, 76),
(38, 0, 0, 0, 0, 77),
(39, 0, 0, 0, 0, 78),
(40, 0, 0, 0, 0, 79),
(41, 10, 10, 6, 6, 80),
(42, 10, 10, 6, 6, 81),
(43, 0, 0, 0, 0, 82),
(44, 0, 0, 0, 0, 83),
(45, 0, 0, 0, 0, 84),
(46, 1, 1, 5, 5, 85),
(47, 0, 0, 0, 0, 86),
(48, 0, 0, 0, 0, 87),
(49, 0, 0, 0, 0, 88),
(50, 0, 0, 0, 0, 89),
(51, 0, 0, 0, 0, 90),
(52, 0, 0, 0, 0, 91),
(53, 0, 0, 0, 0, 92),
(54, 0, 0, 0, 0, 93),
(55, 0, 0, 0, 0, 94),
(56, 0, 0, 0, 0, 94),
(57, 0, 0, 0, 0, 94),
(58, 0, 0, 0, 0, 94),
(59, 0, 0, 0, 0, 94),
(60, 0, 0, 0, 0, 95),
(61, 0, 0, 0, 0, 96),
(62, 0, 0, 0, 0, 97),
(63, 0, 0, 0, 0, 98),
(64, 0, 0, 0, 0, 99),
(65, 0, 0, 0, 0, 100),
(66, 0, 0, 0, 0, 101),
(67, 0, 0, 0, 0, 2),
(68, 0, 0, 0, 0, 3),
(69, 0, 0, 0, 0, 4),
(70, 0, 0, 0, 0, 5),
(71, 0, 0, 0, 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'Bolivar Fuerte', 'BsF', '2', ',', '.', 'BSF'),
(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR'),
(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
(5, 'Danish Krone', 'kr ', '2', '.', ',', 'DKK'),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'),
(7, 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK'),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD'),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'),
(14, 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK'),
(15, 'New Zealand Dollar', 'Bs', '2', ',', '.', 'NZD'),
(16, 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND'),
(17, 'Swiss Franc', 'CHF ', '2', '''', '.', 'CHF'),
(18, 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ'),
(19, 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR'),
(20, 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL'),
(21, 'Thai Baht', 'THB ', '2', ',', '.', 'THB'),
(22, 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN'),
(23, 'Peso Argentino', '$', '2', '.', ',', 'ARS'),
(24, 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT'),
(25, 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED'),
(26, 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD'),
(27, 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR'),
(28, 'Peso Mexicano', '$', '2', ',', '.', 'MXN'),
(29, 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP'),
(30, 'Peso Colombiano', '$', '2', '.', ',', 'COP'),
(31, 'West African Franc', 'CFA ', '2', ',', '.', 'XOF'),
(32, 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE IF NOT EXISTS `detalle_factura` (
`id_detalle` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_signo` varchar(50) NOT NULL DEFAULT '1',
  `cantidad` varchar(10) NOT NULL,
  `precio_venta` double NOT NULL,
  `premio` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_detalle`, `numero_factura`, `id_producto`, `id_signo`, `cantidad`, `precio_venta`, `premio`, `fecha`) VALUES
(20, 6, 118, '1', '187', 10, 0, '2017-07-05'),
(19, 5, 118, '1', '186', 10, 0, '2017-06-24'),
(18, 4, 118, '1', '186', 8, 0, '2017-06-24'),
(17, 3, 118, '1', '186', 100, 0, '2017-06-24'),
(8, 2, 101, '1', '29', 100, 0, '2017-06-10'),
(9, 2, 101, '1', ' 30', 100, 0, '2017-06-10'),
(21, 7, 105, '1', '126', 100, 0, '2017-06-24'),
(22, 7, 105, '1', ' 127', 100, 0, '2017-06-24'),
(23, 8, 104, '1', '126', 100, 0, '2017-06-24'),
(24, 8, 104, '1', ' 127', 100, 0, '2017-06-24'),
(25, 8, 104, '1', ' 141', 100, 0, '2017-06-24'),
(26, 8, 104, '1', ' 142', 100, 0, '2017-06-24'),
(27, 8, 104, '1', ' 143', 100, 0, '2017-06-24'),
(28, 9, 108, '1', '271', 10, 0, '2017-06-26'),
(29, 10, 108, '1', '271', 10, 0, '2017-06-26'),
(30, 11, 100, '1', '126', 5000, 0, '2017-06-26'),
(31, 11, 100, '1', '126', 5000, 0, '2017-06-26'),
(32, 11, 100, '1', '126', 5000, 0, '2017-06-26'),
(33, 11, 100, '1', '126', 1000, 0, '2017-06-26'),
(34, 11, 100, '1', ' 127', 1000, 0, '2017-06-26'),
(35, 12, 100, '1', '132', 10, 0, '2017-06-26'),
(36, 13, 109, '1', '271', 10, 0, '2017-06-26'),
(37, 14, 114, '1', '271', 10, 0, '2017-06-26'),
(38, 14, 114, '1', ' 272', 10, 0, '2017-06-26'),
(42, 15, 108, '1', '271', 10, 0, '2017-06-27'),
(43, 15, 108, '1', '271', 10, 0, '2017-06-27'),
(44, 16, 108, '1', '277', 100, 0, '2017-06-27'),
(45, 16, 108, '1', ' 284', 100, 0, '2017-06-27'),
(46, 17, 109, '1', '271', 10, 0, '2017-06-27'),
(47, 18, 117, '1', '271', 10, 0, '2017-06-27'),
(48, 19, 109, '1', '271', 10, 0, '2017-06-27'),
(49, 20, 109, '1', '271', 10, 0, '2017-06-27'),
(50, 21, 109, '1', '271', 10, 0, '2017-06-27'),
(51, 22, 109, '1', '271', 10, 0, '2017-06-27'),
(52, 23, 110, '1', '271', 10, 0, '2017-06-27'),
(53, 24, 110, '1', '271', 10, 0, '2017-06-27'),
(54, 25, 121, '1', '186', 3000, 0, '2017-06-27'),
(55, 25, 121, '1', '186', 100, 0, '2017-06-27'),
(56, 25, 121, '1', ' 187', 100, 0, '2017-06-27'),
(57, 25, 121, '1', ' 188', 100, 0, '2017-06-27'),
(58, 26, 101, '1', '126', 100, 0, '2017-06-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
`id_factura` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `premio` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL COMMENT '1=jugando 2=pagada 0=anulada'
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `total_venta`, `premio`, `estado_factura`) VALUES
(2, 2, '2017-06-10', 0, 45, '2', '200.00', 0, 1),
(11, 6, '2017-07-05', 0, 1, '2', '10.00', 0, 1),
(9, 4, '2017-06-24', 0, 1, '2', '8.00', 0, 1),
(10, 5, '2017-06-24', 0, 56, '2', '10.00', 0, 1),
(8, 3, '2017-06-24', 0, 56, '2', '100.00', 0, 1),
(12, 7, '2017-06-24', 0, 1, '2', '200.00', 0, 1),
(13, 8, '2017-06-24', 0, 59, '2', '500.00', 0, 0),
(14, 9, '2017-06-26', 0, 58, '2', '10.00', 0, 0),
(15, 10, '2017-06-26', 0, 58, '2', '10.00', 0, 0),
(16, 11, '2017-06-26', 0, 63, '2', '17000.00', 0, 0),
(17, 12, '2017-06-26', 0, 74, '2', '10.00', 0, 1),
(18, 13, '2017-06-26', 0, 58, '2', '10.00', 0, 0),
(19, 14, '2017-06-26', 0, 58, '2', '20.00', 0, 1),
(21, 15, '2017-06-27', 0, 58, '2', '20.00', 0, 0),
(22, 16, '2017-06-27', 0, 58, '2', '200.00', 0, 0),
(23, 17, '2017-06-27', 0, 58, '2', '10.00', 0, 0),
(24, 18, '2017-06-27', 0, 58, '2', '10.00', 0, 1),
(25, 19, '2017-06-27', 0, 58, '2', '10.00', 0, 0),
(26, 20, '2017-06-27', 0, 58, '2', '10.00', 0, 1),
(27, 21, '2017-06-27', 0, 80, '2', '10.00', 0, 0),
(28, 22, '2017-06-27', 0, 80, '2', '10.00', 0, 1),
(29, 23, '2017-06-27', 0, 58, '2', '10.00', 0, 0),
(30, 24, '2017-06-27', 0, 58, '2', '10.00', 0, 1),
(31, 25, '2017-06-27', 0, 88, '2', '3300.00', 0, 1),
(32, 26, '2017-06-28', 0, 90, '2', '100.00', 0, 1),
(33, 27, '2017-06-30', 0, 1, '1', '0.00', 0, 0),
(34, 28, '2017-06-30', 0, 1, '1', '0.00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugada`
--

CREATE TABLE IF NOT EXISTS `jugada` (
`id` int(11) NOT NULL,
  `num_jugada` int(10) NOT NULL,
  `nombre_j` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `id_loteria` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_vendedor` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugada`
--

INSERT INTO `jugada` (`id`, `num_jugada`, `nombre_j`, `status`, `id_loteria`, `fecha`, `id_vendedor`) VALUES
(1, 1, 'NUMERO', 1, 0, '2017-04-04', 1),
(2, 2, 'SERIE', 1, 0, '0000-00-00', 1),
(3, 3, 'PERMUTA', 1, 0, '0000-00-00', 1),
(4, 4, 'TERMINAL', 1, 0, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jug_bloqueo`
--

CREATE TABLE IF NOT EXISTS `jug_bloqueo` (
  `id_producto` int(11) NOT NULL,
  `id_signo` int(11) NOT NULL,
  `id_jugada` int(11) NOT NULL,
  `numero_bloq` varchar(500) NOT NULL,
  `monto` double NOT NULL,
  `status` int(1) NOT NULL,
  `date` date NOT NULL,
  `id_vendedor` int(11) NOT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jug_bloqueo`
--

INSERT INTO `jug_bloqueo` (`id_producto`, `id_signo`, `id_jugada`, `numero_bloq`, `monto`, `status`, `date`, `id_vendedor`, `id`) VALUES
(223, 0, 0, '100', 2000, 1, '2017-06-27', 84, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limites`
--

CREATE TABLE IF NOT EXISTS `limites` (
`id` int(11) NOT NULL,
  `id_loteria` int(11) NOT NULL,
  `monto` double NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `limites`
--

INSERT INTO `limites` (`id`, `id_loteria`, `monto`, `id_vendedor`, `id_admin`) VALUES
(1, 163, 11, 46, NULL),
(2, 187, 1111, 46, NULL),
(3, 156, 111, 45, NULL),
(4, 163, 88, 94, NULL),
(5, 163, 99, 1, NULL),
(6, 163, 20000, 1, NULL),
(7, 187, 20000, 1, NULL),
(8, 183, 20000, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
`id_perfil` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `impuesto` int(2) NOT NULL,
  `moneda` varchar(6) NOT NULL,
  `logo_url` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `moneda`, `logo_url`) VALUES
(1, 'AGENCIA LOS 3 XXX', 'Colonias Los Andes  #250', 'CARACAS', '2222', 'CARACAS', '+(503) 2682-555', 'norbelysnaguanagua21@gmail.com', 13, 'Bs', 'img/1495034737_Captura de pantalla de 2017-05-17 10:32:08.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
`id` int(11) NOT NULL,
  `vender_r` tinyint(1) DEFAULT '0',
  `vender` tinyint(1) DEFAULT '0',
  `pagar` tinyint(1) DEFAULT '0',
  `anular` tinyint(1) DEFAULT '0',
  `crear_taquilla` int(11) NOT NULL,
  `reportes` int(11) NOT NULL,
  `crear_lot` int(11) NOT NULL,
  `crear_r` int(11) NOT NULL,
  `permisos` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `vender_r`, `vender`, `pagar`, `anular`, `crear_taquilla`, `reportes`, `crear_lot`, `crear_r`, `permisos`, `user_id`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(255) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_cierre` time NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `precio_producto` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `tipo` int(10) NOT NULL COMMENT '1=loteria 2=ruleta',
  `id_vendedor` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL COMMENT '1=loteria 2=ruleta',
  `img` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `hora_inicio`, `hora_cierre`, `status_producto`, `precio_producto`, `date_added`, `tipo`, `id_vendedor`, `id_tipo`, `img`) VALUES
(163, '004', 'ZULIA_A_4:45 PM', '05:00:00', '16:40:00', 1, 0, '2017-06-10 18:42:56', 1, 1, 1, 'logozulia.png'),
(187, '205', 'PICOCACTIVA 03:30 PM', '06:00:00', '03:25:00', 1, 0, '2017-06-24 02:29:06', 2, 46, 6, ''),
(152, '001', 'ZULIA_A_12:45 PM', '05:00:00', '12:40:00', 1, 0, '2017-06-10 14:23:55', 1, 1, 1, 'logozulia.png'),
(156, '005', 'ZULIA_B_4:45 PM', '05:00:00', '16:40:00', 1, 0, '2017-06-10 14:24:40', 1, 1, 1, 'logozulia.png'),
(83, '010', 'CHANCE_A_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 12:16:00', 1, 1, 2, 'chance.png'),
(162, '003', 'ZULIA_Z_12:45 PM', '05:00:00', '12:40:00', 1, 0, '2017-06-10 18:42:18', 1, 1, 1, 'logozulia.png'),
(161, '002', 'ZULIA_B_12:45 PM', '05:00:00', '12:40:00', 1, 0, '2017-06-10 18:41:35', 1, 1, 1, 'logozulia.png'),
(185, '203', 'PICOCACTIVA 12:30 M', '06:00:00', '12:25:00', 1, 0, '2017-06-24 02:28:18', 2, 46, 6, ''),
(183, '201', 'PICOCACTIVA 10:30AM', '06:00:00', '10:25:00', 1, 0, '2017-06-24 02:27:33', 2, 46, 6, ''),
(184, '202', 'PICOCACTIVA 11:30AM', '06:00:00', '11:25:00', 1, 0, '2017-06-24 02:27:54', 2, 46, 6, ''),
(84, '011', 'CHANCE_B_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 12:24:51', 1, 1, 2, 'chance.png'),
(186, '204', 'PICOCACTIVA 01:30 PM', '06:00:00', '01:25:00', 1, 0, '2017-06-24 02:28:43', 2, 46, 6, ''),
(182, '200', 'PICOCACTIVA 09:30AM', '06:00:00', '09:25:00', 1, 0, '2017-06-24 02:27:08', 2, 46, 6, ''),
(87, '014', 'CHANCE_B_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 12:26:06', 1, 1, 2, 'chance.png'),
(85, '012', 'CHANCE_Z_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 12:25:24', 1, 1, 2, 'chance.png'),
(86, '013', 'CHANCE_A_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 12:25:51', 1, 1, 2, 'chance.png'),
(88, '015', 'CHANCE_Z_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 12:26:14', 1, 1, 2, 'chance.png'),
(90, '017', 'CHANCE_B_8:00 PM', '05:00:00', '19:55:00', 1, 0, '2017-06-10 12:26:57', 1, 1, 2, 'chance.png'),
(91, '018', 'CHANCE_Z_8:00 PM', '05:00:00', '19:55:00', 1, 0, '2017-06-10 12:27:05', 1, 1, 2, 'chance.png'),
(92, '019', 'MANIA_A_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 12:30:48', 1, 1, 3, 'logotriplemania.png'),
(89, '016', 'CHANCE_A_8:00 PM', '05:00:00', '19:55:00', 1, 0, '2017-06-10 12:26:49', 1, 1, 2, 'chance.png'),
(93, '020', 'MANIA_B_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 12:31:03', 1, 1, 3, 'logotriplemania.png'),
(94, '021', 'MANIA_Z_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 12:31:13', 1, 1, 3, 'logotriplemania.png'),
(95, '022', 'MANIA_A_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 12:36:39', 1, 1, 3, 'logotriplemania.png'),
(97, '024', 'MANIA_Z_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 12:36:56', 1, 1, 3, 'logotriplemania.png'),
(96, '023', 'MANIA_B_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 12:36:48', 1, 1, 3, 'logotriplemania.png'),
(98, '025', 'MANIA_A_7:35 PM', '05:00:00', '19:30:00', 1, 0, '2017-06-10 12:37:23', 1, 1, 3, 'logotriplemania.png'),
(99, '026', 'MANIA_B_7:35 PM', '05:00:00', '19:30:00', 1, 0, '2017-06-10 12:37:31', 1, 1, 3, 'logotriplemania.png'),
(100, '027', 'MANIA_Z_7:35 PM', '05:00:00', '19:30:00', 1, 0, '2017-06-10 12:37:38', 1, 1, 3, 'logotriplemania.png'),
(101, '028', 'TACHIRA_A_1:15 PM', '05:00:00', '12:10:00', 1, 0, '2017-06-10 12:40:47', 1, 1, 4, 'tachira.png'),
(102, '029', 'TACHIRA_B_1:15 PM', '05:00:00', '12:10:00', 1, 0, '2017-06-10 12:40:56', 1, 1, 4, 'tachira.png'),
(103, '030', 'TACHIRA_Z_1:15 PM', '05:00:00', '12:10:00', 1, 0, '2017-06-10 12:41:05', 1, 1, 4, 'tachira.png'),
(104, '031', 'TACHIRA_A_4:45 PM', '05:00:00', '16:40:00', 1, 0, '2017-06-10 12:41:31', 1, 1, 4, 'tachira.png'),
(105, '032', 'TACHIRA_B_4:45 PM', '05:00:00', '16:40:00', 1, 0, '2017-06-10 12:41:41', 1, 1, 4, 'tachira.png'),
(106, '033', 'TACHIRA_Z_4:45 PM', '05:00:00', '16:40:00', 1, 0, '2017-06-10 12:41:50', 1, 1, 4, 'tachira.png'),
(107, '034', 'TACHIRA_A_7:20 PM', '05:00:00', '19:15:00', 1, 0, '2017-06-10 12:50:51', 1, 1, 4, 'tachira.png'),
(108, '035', 'TACHIRA_B_7:20 PM', '05:00:00', '19:15:00', 1, 0, '2017-06-10 12:51:02', 1, 1, 4, 'tachira.png'),
(109, '036', 'TACHIRA_Z_7:20 PM', '05:00:00', '19:15:00', 1, 0, '2017-06-10 12:51:08', 1, 1, 4, 'tachira.png'),
(110, '037', 'LEÃ“N CCS_A_12:30 PM', '05:00:00', '12:25:00', 1, 0, '2017-06-10 12:53:03', 1, 1, 5, 'tripleleon.png'),
(111, '038', 'LEÃ“N CCS_B_12:30 PM', '05:00:00', '12:25:00', 1, 0, '2017-06-10 13:04:10', 1, 1, 5, 'tripleleon.png'),
(112, '039', 'LEÃ“N CCS_Z_12:30 PM', '05:00:00', '12:25:00', 1, 0, '2017-06-10 13:04:20', 1, 1, 5, 'tripleleon.png'),
(113, '040', 'LEÃ“N CCS_A_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 13:04:44', 1, 1, 5, 'tripleleon.png'),
(114, '041', 'LEÃ“N CCS_B_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 13:04:55', 1, 1, 5, 'tripleleon.png'),
(115, '042', 'LEÃ“N CCS_Z_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 13:05:01', 1, 1, 5, 'tripleleon.png'),
(116, '043', 'LEÃ“N CCS_A_7:45 PM', '05:00:00', '19:40:00', 1, 0, '2017-06-10 13:05:21', 1, 1, 5, 'tripleleon.png'),
(117, '044', 'LEÃ“N CCS_B_7:45 PM', '05:00:00', '19:40:00', 1, 0, '2017-06-10 13:05:29', 1, 1, 5, 'tripleleon.png'),
(118, '045', 'LEÃ“N CCS_Z_7:45 PM', '05:00:00', '19:40:00', 1, 0, '2017-06-10 13:05:40', 1, 1, 5, 'tripleleon.png'),
(119, '046', 'ZAMORANO_A_12:00 M', '05:00:00', '11:55:00', 1, 0, '2017-06-10 13:06:55', 1, 1, 6, 'triplezamorano.png'),
(120, '047', 'ZAMORANO_Z_12:00 M', '05:00:00', '11:55:00', 1, 0, '2017-06-10 13:07:13', 1, 1, 6, 'triplezamorano.png'),
(121, '048', 'ZAMORANO_A_4:00 PM', '05:00:00', '15:55:00', 1, 0, '2017-06-10 13:07:41', 1, 1, 6, 'triplezamorano.png'),
(122, '049', 'ZAMORANO_Z_4:00 PM', '05:00:00', '15:55:00', 1, 0, '2017-06-10 13:11:02', 1, 1, 6, 'triplezamorano.png'),
(123, '050', 'ZAMORANO_A_7:00 PM', '05:00:00', '18:55:00', 1, 0, '2017-06-10 13:11:28', 1, 1, 6, 'triplezamorano.png'),
(124, '051', 'ZAMORANO_Z_7:00 PM', '05:00:00', '18:55:00', 1, 0, '2017-06-10 13:11:38', 1, 1, 6, 'triplezamorano.png'),
(125, '052', 'CALIENTE_A_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 13:13:45', 1, 1, 7, 'caliente.png'),
(126, '053', 'CALIENTE_B_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 13:13:54', 1, 1, 7, 'caliente.png'),
(127, '054', 'CALIENTE_Z_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 13:17:11', 1, 1, 7, 'caliente.png'),
(128, '055', 'CALIENTE_A_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 13:17:42', 1, 1, 7, 'caliente.png'),
(129, '056', 'CALIENTE_B_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 13:17:53', 1, 1, 7, 'caliente.png'),
(130, '057', 'CALIENTE_Z_4:30 PM', '05:00:00', '16:25:00', 1, 0, '2017-06-10 13:17:59', 1, 1, 7, 'caliente.png'),
(131, '058', 'CALIENTE_A_8:00 PM', '05:00:00', '19:55:00', 1, 0, '2017-06-10 13:18:50', 1, 1, 7, 'caliente.png'),
(132, '059', 'CALIENTE_B_8:00 PM', '05:00:00', '19:55:00', 1, 0, '2017-06-10 13:22:38', 1, 1, 7, 'caliente.png'),
(133, '060', 'CALIENTE_Z_8:00 PM', '05:00:00', '19:55:00', 1, 0, '2017-06-10 13:22:49', 1, 1, 7, 'caliente.png'),
(134, '061', 'MULTI_A_12:40 PM', '05:00:00', '12:35:00', 1, 0, '2017-06-10 13:25:50', 1, 1, 8, 'logomultitriple.png'),
(135, '062', 'MULTI_B_12:40 PM', '05:00:00', '12:35:00', 1, 0, '2017-06-10 13:25:57', 1, 1, 8, 'logomultitriple.png'),
(136, '063', 'MULTI_Z_12:40 PM', '05:00:00', '12:35:00', 1, 0, '2017-06-10 13:26:05', 1, 1, 8, 'logomultitriple.png'),
(137, '064', 'MULTI_A_4:40 PM', '05:00:00', '16:35:00', 1, 0, '2017-06-10 13:26:41', 1, 1, 8, 'logomultitriple.png'),
(138, '065', 'MULTI_B_4:40 PM', '05:00:00', '16:35:00', 1, 0, '2017-06-10 13:26:50', 1, 1, 8, 'logomultitriple.png'),
(139, '066', 'MULTI_Z_4:40 PM', '05:00:00', '16:35:00', 1, 0, '2017-06-10 13:26:59', 1, 1, 8, 'logomultitriple.png'),
(140, '067', 'MULTI_A_7:40 PM', '05:00:00', '19:35:00', 1, 0, '2017-06-10 13:27:18', 1, 1, 8, 'logomultitriple.png'),
(141, '068', 'MULTI_B_7:40 PM', '05:00:00', '19:35:00', 1, 0, '2017-06-10 13:27:30', 1, 1, 8, 'logomultitriple.png'),
(142, '069', 'MULTI_Z_7:40 PM', '05:00:00', '19:35:00', 1, 0, '2017-06-10 13:27:44', 1, 1, 8, 'logomultitriple.png'),
(143, '070', 'TRILLONARIO_A_1:10 PM', '05:00:00', '13:05:00', 1, 0, '2017-06-10 13:29:52', 1, 1, 9, 'trillonario.png'),
(144, '071', 'TRILLONARIO_B_1:10 PM', '05:00:00', '13:05:00', 1, 0, '2017-06-10 13:30:03', 1, 1, 9, 'trillonario.png'),
(145, '072', 'TRILLONARIO_Z_1:10 PM', '05:00:00', '13:05:00', 1, 0, '2017-06-10 13:30:11', 1, 1, 9, 'trillonario.png'),
(146, '073', 'TRILLONARIO_A_4:40 PM', '05:00:00', '16:35:00', 1, 0, '2017-06-10 13:31:09', 1, 1, 9, 'trillonario.png'),
(147, '074', 'TRILLONARIO_B_4:40 PM', '05:00:00', '16:35:00', 1, 0, '2017-06-10 13:31:36', 1, 1, 9, 'trillonario.png'),
(148, '075', 'TRILLONARIO_Z_4:40 PM', '05:00:00', '16:35:00', 1, 0, '2017-06-10 13:31:45', 1, 1, 9, 'trillonario.png'),
(149, '076', 'TRILLONARIO_A_7:35 PM', '05:00:00', '19:30:00', 1, 0, '2017-06-10 13:32:11', 1, 1, 9, 'trillonario.png'),
(150, '077', 'TRILLONARIO_B_7:35 PM', '05:00:00', '19:30:00', 1, 0, '2017-06-10 13:32:19', 1, 1, 9, 'trillonario.png'),
(151, '078', 'TRILLONARIO_Z_7:35 PM', '05:00:00', '19:30:00', 1, 0, '2017-06-10 13:32:29', 1, 1, 9, 'trillonario.png'),
(157, '006', 'ZULIA_Z_4:45 PM', '05:00:00', '16:40:00', 1, 0, '2017-06-10 14:24:47', 1, 1, 1, 'logozulia.png'),
(158, '007', 'ZULIA_A_7:45 PM', '05:00:00', '19:40:00', 1, 0, '2017-06-10 14:25:11', 1, 1, 1, 'logozulia.png'),
(159, '008', 'ZULIA_B_7:45 PM', '05:00:00', '19:40:00', 1, 0, '2017-06-10 14:25:18', 1, 1, 1, 'logozulia.png'),
(160, '009', 'ZULIA_Z_7:45 PM', '05:00:00', '19:40:00', 1, 0, '2017-06-10 14:25:26', 1, 1, 1, 'logozulia.png'),
(188, '206', 'PICOCACTIVA 04:30 PM', '06:00:00', '04:25:00', 1, 0, '2017-06-24 02:29:22', 2, 46, 6, ''),
(189, '207', 'PICOCACTIVA 05:30 PM', '06:00:00', '05:25:00', 1, 0, '2017-06-24 02:29:38', 2, 46, 6, ''),
(190, '208', 'PICOCACTIVA 06:30 PM', '06:00:00', '06:25:00', 1, 0, '2017-06-24 02:29:57', 2, 46, 6, ''),
(191, '209', 'PICOCACTIVA 07:30 PM', '06:00:00', '07:25:00', 1, 0, '2017-06-24 02:30:16', 2, 46, 6, ''),
(223, '100', 'R. ACTIVA 10:00 AM', '00:00:00', '09:55:00', 1, 0, '2017-06-24 04:28:44', 2, 1, 7, ''),
(224, '101', 'R. ACTIVA 11:00 AM', '00:00:00', '10:55:00', 1, 0, '2017-06-24 04:29:21', 2, 1, 7, ''),
(225, '102', 'R. ACTIVA 12:00 AM', '00:00:00', '11:55:00', 1, 0, '2017-06-24 04:29:39', 2, 1, 7, ''),
(226, '103', 'R. ACTIVA 1:00 PM', '00:00:00', '12:55:00', 1, 0, '2017-06-24 04:29:58', 2, 1, 7, ''),
(227, '104', 'R. ACTIVA 4:00 PM', '00:00:00', '15:55:00', 1, 0, '2017-06-24 04:30:13', 2, 1, 7, ''),
(228, '105', 'R. ACTIVA 5:00 PM', '00:00:00', '16:55:00', 1, 0, '2017-06-24 04:30:27', 2, 1, 7, ''),
(229, '106', 'R. ACTIVA 6:00 PM', '00:00:00', '17:55:00', 1, 0, '2017-06-24 04:30:38', 2, 1, 7, ''),
(230, '107', 'R. ACTIVA 7:00 PM', '00:00:00', '18:55:00', 1, 0, '2017-06-24 04:30:48', 2, 1, 7, ''),
(231, '108', 'G. RULETA 9:30 AM', '00:00:00', '09:25:00', 1, 0, '2017-06-24 04:31:22', 2, 1, 9, ''),
(232, '109', 'G. RULETA 10:30 AM', '00:00:00', '10:25:00', 1, 0, '2017-06-24 04:31:35', 2, 1, 9, ''),
(233, '110', 'G. RULETA 11:30 AM', '00:00:00', '11:25:00', 1, 0, '2017-06-24 04:31:46', 2, 1, 9, ''),
(234, '111', 'G. RULETA 12:30 PM', '00:00:00', '12:25:00', 1, 0, '2017-06-24 04:32:06', 2, 1, 9, ''),
(235, '112', 'G. RULETA 1:30 PM', '00:00:00', '13:25:00', 1, 0, '2017-06-24 04:32:20', 2, 1, 9, ''),
(236, '113', 'G. RULETA 3:30 PM', '00:00:00', '15:25:00', 1, 0, '2017-06-24 04:32:36', 2, 1, 9, ''),
(237, '114', 'G. RULETA 4:30 PM', '00:00:00', '16:25:00', 1, 0, '2017-06-24 04:32:45', 2, 1, 9, ''),
(238, '115', 'G. RULETA 5:30 PM', '00:00:00', '17:25:00', 1, 0, '2017-06-24 04:33:03', 2, 1, 9, ''),
(239, '116', 'G. RULETA 6:30 PM', '00:00:00', '18:25:00', 1, 0, '2017-06-24 04:33:13', 2, 1, 9, ''),
(240, '117', 'G. RULETA 7:30 PM', '00:00:00', '22:25:00', 1, 0, '2017-06-24 04:33:30', 2, 1, 9, ''),
(241, '118', 'LOTTO ACT. 10:00 AM', '00:00:00', '09:55:00', 1, 0, '2017-06-24 04:34:13', 2, 1, 8, ''),
(242, '119', 'LOTTO ACT. 11:00 AM', '00:00:00', '10:55:00', 1, 0, '2017-06-24 04:34:26', 2, 1, 8, ''),
(243, '120', 'LOTTO ACT. 12:00 M', '00:00:00', '11:55:00', 1, 0, '2017-06-24 04:34:51', 2, 1, 8, ''),
(244, '121', 'LOTTO ACT. 1:00 PM', '00:00:00', '12:55:00', 1, 0, '2017-06-24 04:35:12', 2, 1, 8, ''),
(245, '122', 'LOTTO ACT. 4:00 PM', '00:00:00', '15:55:00', 1, 0, '2017-06-24 04:35:28', 2, 1, 8, ''),
(246, '123', 'LOTTO ACT. 5:00 PM', '00:00:00', '16:55:00', 1, 0, '2017-06-24 04:35:41', 2, 1, 8, ''),
(247, '124', 'LOTTO ACT. 6:00 PM', '00:00:00', '17:55:00', 1, 0, '2017-06-24 04:35:55', 2, 1, 8, ''),
(248, '125', 'LOTTO ACT. 7:00 PM', '00:00:00', '18:55:00', 0, 0, '2017-06-24 04:36:08', 2, 1, 8, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE IF NOT EXISTS `resultados` (
  `id_loteria` varchar(100) NOT NULL,
`id` int(11) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `id_signo` varchar(10) NOT NULL DEFAULT '1',
  `fecha_sorteo` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`id_loteria`, `id`, `numero`, `id_signo`, `fecha_sorteo`) VALUES
('010', 1, '000', '1', '2017-07-04'),
('013', 2, '555', '1', '2017-07-04'),
('012', 3, '567', '1', '2017-07-04'),
('014', 4, '777', '1', '2017-07-04'),
('011', 5, '123', '1', '2017-07-04'),
('010', 6, '999', '1', '2017-07-08'),
('011', 7, '132', '1', '2017-07-08'),
('004', 8, '1111', '1', '2017-07-09'),
('004', 9, '125', '1', '2017-07-11'),
('004', 10, '890', '1', '2017-07-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruleta`
--

CREATE TABLE IF NOT EXISTS `ruleta` (
`id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `ruta_img` varchar(100) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_tipo_ruleta` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruleta`
--

INSERT INTO `ruleta` (`id`, `nombre`, `color`, `status`, `ruta_img`, `id_vendedor`, `id_tipo_ruleta`) VALUES
(109, '00', 'red', 1, 'gato.png', 0, 5),
(110, '01', '#5e5e5e', 1, 'perro.png', 0, 5),
(111, '00', 'white', 1, '', 0, 6),
(117, '0', 'pink', 1, '', 0, 6),
(118, '01', 'white', 1, 'carnero.png', 0, 6),
(119, '02', 'pink', 1, 'toro.png', 0, 6),
(120, '03', 'white', 1, 'ciempie.png', 0, 6),
(121, '04', 'pink', 1, 'alacran.png', 0, 6),
(122, '05', 'white', 1, 'leon.png', 0, 6),
(123, '06', 'pink', 1, 'rana.png', 0, 6),
(124, '07', 'white', 1, 'perico.png', 0, 6),
(125, '08', 'pink', 1, 'Raton.png', 0, 6),
(126, '00', 'pink', 1, 'ballena.png', 0, 7),
(127, '0', 'white', 1, 'delfin.png', 0, 7),
(128, '01', 'pink', 1, 'carnero.png', 0, 7),
(129, '02', 'white', 1, 'toro.png', 0, 7),
(130, '03', 'pink', 1, 'ciempie.png', 0, 7),
(131, '04', 'white', 1, 'alacran.png', 0, 7),
(132, '05', 'white', 1, 'leon.png', 0, 7),
(133, '06', 'pink', 1, 'rana.png', 0, 7),
(134, '07', 'white', 1, 'perico.png', 0, 7),
(135, '08', 'pink', 1, 'Raton.png', 0, 7),
(136, '09', 'white', 1, 'aguila.png', 0, 7),
(137, '10', 'pink', 1, 'tigre.png', 0, 7),
(138, '11', 'pink', 1, 'gato.png', 0, 7),
(140, '12', 'white', 1, 'caballo.png', 0, 7),
(141, '13', 'pink', 1, 'mono.png', 0, 7),
(142, '14', 'white', 1, 'paloma.png', 0, 7),
(143, '15', 'pink', 1, 'zorro.png', 0, 7),
(144, '16', 'white', 1, 'oso.png', 0, 7),
(166, '17', 'white', 1, 'pavo.png', 0, 7),
(167, '18', 'pink', 1, 'burro.png', 0, 7),
(168, '19', 'white', 1, 'chivo.png', 0, 7),
(169, '20', 'pink', 1, 'cochino.png', 0, 7),
(170, '21', 'white', 1, 'gallo.png', 0, 7),
(171, '22', 'pink', 1, 'camello.png', 0, 7),
(172, '23', 'pink', 1, 'cebra.png', 0, 7),
(173, '24', 'white', 1, 'iguana.png', 0, 7),
(174, '25', 'pink', 1, 'gallina.png', 0, 7),
(175, '26', 'white', 1, 'vaca.png', 0, 7),
(176, '27', 'pink', 1, 'perro.png', 0, 7),
(177, '28', 'white', 1, 'zamuro.png', 0, 7),
(178, '29', 'white', 1, 'elefante.png', 0, 7),
(179, '30', 'pink', 1, 'caiman.png', 0, 7),
(180, '31', 'white', 1, 'lapa.png', 0, 7),
(181, '32', 'pink', 1, 'ardilla.png', 0, 7),
(182, '33', 'white', 1, 'pescado.png', 0, 7),
(183, '34', 'pink', 1, 'venado.png', 0, 7),
(184, '35', 'pink', 1, 'jirafa.png', 0, 7),
(185, '36', 'white', 1, 'culebra.png', 0, 7),
(186, '00', 'background', 1, 'ballena.png', 0, 8),
(187, '0', 'white', 1, 'delfin.png', 0, 8),
(188, '01', 'background', 1, 'carnero.png', 0, 8),
(189, '02', 'white', 1, 'toro.png', 0, 8),
(190, '03', 'background', 1, 'ciempie.png', 0, 8),
(191, '04', 'white', 1, 'alacran.png', 0, 8),
(199, '05', 'white', 1, 'leon.png', 0, 8),
(200, '06', 'background', 1, 'rana.png', 0, 8),
(201, '07', 'white', 1, 'perico.png', 0, 8),
(203, '08', 'background', 1, 'Raton.png', 0, 8),
(204, '09', 'white', 1, 'aguila.png', 0, 8),
(205, '10', 'background', 1, 'tigre.png', 0, 8),
(206, '11', 'background', 1, 'gato.png', 0, 8),
(207, '12', 'white', 1, 'caballo.png', 0, 8),
(208, '13', 'background', 1, 'mono.png', 0, 8),
(209, '14', 'white', 1, 'paloma.png', 0, 8),
(210, '15', 'background', 1, 'zorro.png', 0, 8),
(211, '16', 'white', 1, 'oso.png', 0, 8),
(212, '17', 'white', 1, 'pavo.png', 0, 8),
(213, '18', 'background', 1, 'burro.png', 0, 8),
(214, '19', 'white', 1, 'chivo.png', 0, 8),
(215, '21', 'background', 1, 'gallo.png', 0, 8),
(216, '22', 'white', 1, 'camello.png', 0, 8),
(217, '23', 'background', 1, 'cebra.png', 0, 8),
(219, '24', 'background', 1, 'iguana.png', 0, 8),
(229, '25', 'white', 1, 'gallina.png', 0, 8),
(230, '2', 'background', 1, 'vaca.png', 0, 8),
(232, '27', 'white', 1, 'perro.png', 0, 8),
(233, '28', 'background', 1, 'zamuro.png', 0, 8),
(234, '29', 'white', 1, 'elefante.png', 0, 8),
(235, '30', 'white', 1, 'caiman.png', 0, 8),
(236, '31', 'background', 1, 'lapa.png', 0, 8),
(237, '32', 'white', 1, 'ardilla.png', 0, 8),
(238, '33', 'background', 1, 'pescado.png', 0, 8),
(239, '34', 'white', 1, 'venado.png', 0, 8),
(240, '35', 'background', 1, 'jirafa.png', 0, 8),
(241, '36', 'background', 1, 'culebra.png', 0, 8),
(242, '09', 'white', 1, 'aguila.png', 0, 6),
(243, '10', 'pink', 1, 'tigre.png', 0, 6),
(244, '11', 'white', 1, 'gato.png', 0, 6),
(245, '12', 'pink', 1, 'caballo.png', 0, 6),
(246, '13', 'white', 1, 'mono.png', 0, 6),
(247, '14', 'pink', 1, 'paloma.png', 0, 6),
(248, '15', 'white', 1, 'zorro.png', 0, 6),
(249, '16', 'pink', 1, 'oso.png', 0, 6),
(250, '17', 'white', 1, 'pavo.png', 0, 6),
(251, '18', 'pink', 1, 'burro.png', 0, 6),
(252, '19', 'white', 1, 'chivo.png', 0, 6),
(253, '20', 'pink', 1, 'cochino.png', 0, 6),
(254, '21', 'white', 1, 'gallo.png', 0, 6),
(255, '23', 'pink', 1, 'cebra.png', 0, 6),
(258, '24', 'white', 1, 'iguana.png', 0, 6),
(259, '25', 'pink', 1, 'gallina.png', 0, 6),
(260, '26', 'white', 1, 'vaca.png', 0, 6),
(261, '27', 'pink', 1, 'perro.png', 0, 6),
(262, '28', 'white', 1, 'zamuro.png', 0, 6),
(263, '29', 'pink', 1, 'elefante.png', 0, 6),
(264, '30', 'white', 1, 'caiman.png', 0, 6),
(265, '31', 'pink', 1, 'lapa.png', 0, 6),
(266, '32', 'white', 1, 'ardilla.png', 0, 6),
(267, '33', 'pink', 1, 'pescado.png', 0, 6),
(268, '34', 'white', 1, 'venado.png', 0, 6),
(269, '35', 'pink', 1, 'jirafa.png', 0, 6),
(270, '36', 'white', 1, 'culebra.png', 0, 6),
(271, '0', '#8c8c8c', 1, 'tortuga.png', 0, 9),
(272, '01', 'white', 1, 'carnero.png', 0, 9),
(273, '02', '#8c8c8c', 1, 'toro.png', 0, 9),
(274, '03', 'white', 1, 'ciempie.png', 0, 9),
(275, '04', '#8c8c8c', 1, 'alacran.png', 0, 9),
(276, '05', 'white', 1, 'leon.png', 0, 9),
(277, '06', 'white', 1, 'rana.png', 0, 9),
(278, '07', '#8c8c8c', 1, 'perico.png', 0, 9),
(279, '08', 'white', 1, 'Raton.png', 0, 9),
(280, '09', '#8c8c8c', 1, 'aguila.png', 0, 9),
(281, '10', 'white', 1, 'tigre.png', 0, 9),
(282, '11', '#8c8c8c', 1, 'gato.png', 0, 9),
(283, '12', '#8c8c8c', 1, 'caballo.png', 0, 9),
(284, '13', 'white', 1, 'mono.png', 0, 9),
(285, '14', '#8c8c8c', 1, 'paloma.png', 0, 9),
(286, '15', 'white', 1, 'zorro.png', 0, 9),
(287, '16', '#8c8c8c', 1, 'oso.png', 0, 9),
(288, '17', 'white', 1, 'pavo.png', 0, 9),
(289, '18', 'white', 1, 'burro.png', 0, 9),
(290, '19', '#8c8c8c', 1, 'chivo.png', 0, 9),
(291, '20', 'white', 1, 'cochino.png', 0, 9),
(292, '21', '#8c8c8c', 1, 'gallo.png', 0, 9),
(293, '22', 'white', 1, 'camello.png', 0, 9),
(294, '23', '#8c8c8c', 1, 'cebra.png', 0, 9),
(302, '24', '#8c8c8c', 1, 'iguana.png', 0, 9),
(303, '25', 'white', 1, 'gallina.png', 0, 9),
(304, '26', '#8c8c8c', 1, 'vaca.png', 0, 9),
(305, '27', 'white', 1, 'perro.png', 0, 9),
(306, '28', '#8c8c8c', 1, 'zamuro.png', 0, 9),
(307, '29', 'white', 1, 'elefante.png', 0, 9),
(308, '30', 'white', 1, 'caiman.png', 0, 9),
(309, '31', '#8c8c8c', 1, 'lapa.png', 0, 9),
(310, '32', 'white', 1, 'Mariposa.png', 0, 9),
(311, '33', '#8c8c8c', 1, 'pescado.png', 0, 9),
(312, '34', 'white', 1, 'venado.png', 0, 9),
(313, '35', '#8c8c8c', 1, 'pato.png', 0, 9),
(315, '36', '#8c8c8c', 1, 'culebra.png', 0, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `signo`
--

CREATE TABLE IF NOT EXISTS `signo` (
`id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `ruta_img` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `signo`
--

INSERT INTO `signo` (`id`, `nombre`, `status`, `id_vendedor`, `ruta_img`) VALUES
(1, '--------------', 0, 0, ''),
(2, 'ARIES', 1, 1, ''),
(3, 'TAURO', 1, 1, ''),
(4, 'GÉMINIS', 1, 1, ''),
(5, 'CÁNCER', 1, 1, ''),
(6, 'LEO', 1, 1, ''),
(7, 'VIRGO', 1, 1, ''),
(8, 'LIBRA', 1, 1, ''),
(9, 'ESCORPIO', 1, 1, ''),
(10, 'SAGITARIO', 1, 1, ''),
(11, 'CAPRICORNIO', 1, 1, ''),
(12, 'ACUARIO', 1, 1, ''),
(13, 'PISCIS', 1, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_loteria`
--

CREATE TABLE IF NOT EXISTS `tipo_loteria` (
  `id_loteria` int(11) NOT NULL,
`id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `fecha` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_loteria`
--

INSERT INTO `tipo_loteria` (`id_loteria`, `id`, `nombre`, `status`, `fecha`) VALUES
(1, 1, 'ZULIA', 1, '2017-06-03'),
(0, 2, 'CHANCE', 2, '2017-06-03'),
(0, 3, 'TRIPLE MANIA', 2, '2017-06-04'),
(0, 4, 'TACHIRA', 2, '2017-06-04'),
(0, 5, 'LEON CCS', 2, '2017-06-04'),
(0, 6, 'ZAMORANO', 2, '2017-06-04'),
(0, 7, 'TRIPLE CALIENTE', 2, '2017-06-04'),
(0, 8, 'MULTI TRIPLE', 2, '2017-06-04'),
(0, 9, 'TRILLONARIO', 2, '2017-06-04'),
(0, 10, 'GRAN RULETA<br>', 1, '2017-06-10'),
(0, 13, 'RULETA ACTIVA', 1, '2017-06-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_ruleta`
--

CREATE TABLE IF NOT EXISTS `tipo_ruleta` (
`id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `paga` int(11) NOT NULL,
  `status` int(10) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_ruleta`
--

INSERT INTO `tipo_ruleta` (`id`, `nombre`, `paga`, `status`, `fecha`) VALUES
(6, 'PicocActiva', 360, 1, '2017-06-23'),
(7, 'RULETA ACTIVA', 300, 1, '2017-06-23'),
(8, 'LOTTO ACTIVO', 30, 1, '2017-06-24'),
(9, 'GRAN RULETA', 32, 1, '2017-06-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE IF NOT EXISTS `tmp` (
`id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `signo` int(10) NOT NULL,
  `jugada` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=356 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `tipo_user` int(11) NOT NULL COMMENT '1=admin ; 2=subadmin ; 3=taquilla',
  `id_admin` int(11) NOT NULL COMMENT 'id de admin  al que pertenece',
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`, `tipo_user`, `id_admin`, `status`) VALUES
(1, 'Marwill', 'Cotua', 'admin', '$2y$10$fVKwNU3mgZILvK3603kn7OdsP/cqRLdOUNM6NiFBpSmwnW9tqF.7K', 'vacio_1', '2016-05-21 00:00:00', 1, 1, 1),
(2, 'prueba', 'apdp', 'prueba', '$2y$10$znnmnfsk7WC9YFZkU97pFOYZlKpNwEogajHNpBZlCLF644WFO6uSO', NULL, '2017-07-09 18:51:07', 2, 1, 1),
(3, 'prueba', 'prueba', 'prueba1', '$2y$10$fVKwNU3mgZILvK3603kn7OdsP/cqRLdOUNM6NiFBpSmwnW9tqF.7K', NULL, '2017-07-12 15:25:52', 3, 1, 1),
(4, 'pruebanagua', 'pruebanagua', 'pruebanagua', '$2y$10$HF.ADLgOxDjBKAXATva.kOICeKQmd8o5n4R2lbOFSqrFLoVFdwdnS', NULL, '2017-07-12 15:37:14', 3, 1, 1),
(5, 'nagua', 'nagua', 'naguanagua', '$2y$10$6oPMEcjQfvi1ASd88OO8D.t82urajjhQDlw5JJr4Kko/jo.Q1oUEy', NULL, '2017-07-12 15:43:12', 3, 2, 1),
(6, 'nagua', 'nagua', 'Naguaesc', '$2y$10$0pvc9Ieeo/2FLKfFq2c8dOa76gYnh9wbzVZ4eHurJgA/b8ZE3726S', NULL, '2017-07-12 15:43:25', 2, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
 ADD PRIMARY KEY (`id_cliente`), ADD UNIQUE KEY `codigo_producto` (`nombre_cliente`);

--
-- Indices de la tabla `comisiones`
--
ALTER TABLE `comisiones`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
 ADD PRIMARY KEY (`id_detalle`), ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
 ADD PRIMARY KEY (`id_factura`), ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `jugada`
--
ALTER TABLE `jugada`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jug_bloqueo`
--
ALTER TABLE `jug_bloqueo`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `limites`
--
ALTER TABLE `limites`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
 ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id_producto`), ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ruleta`
--
ALTER TABLE `ruleta`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `signo`
--
ALTER TABLE `signo`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_loteria`
--
ALTER TABLE `tipo_loteria`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_ruleta`
--
ALTER TABLE `tipo_ruleta`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
 ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`), ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comisiones`
--
ALTER TABLE `comisiones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `jugada`
--
ALTER TABLE `jugada`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `jug_bloqueo`
--
ALTER TABLE `jug_bloqueo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `limites`
--
ALTER TABLE `limites`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `ruleta`
--
ALTER TABLE `ruleta`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT de la tabla `signo`
--
ALTER TABLE `signo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `tipo_loteria`
--
ALTER TABLE `tipo_loteria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `tipo_ruleta`
--
ALTER TABLE `tipo_ruleta`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=356;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE INDEX idx_status_tipo ON products (status_producto, tipo, id_tipo, hora_inicio, hora_cierre);