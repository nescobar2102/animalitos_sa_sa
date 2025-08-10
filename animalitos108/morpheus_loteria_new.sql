-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2025 a las 20:26:26
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `morpheus_loteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisiones`
--

CREATE TABLE `comisiones` (
  `id` int(11) NOT NULL,
  `comision_triple` int(11) NOT NULL,
  `comision_terminal` int(11) NOT NULL,
  `pago_triple` int(11) NOT NULL,
  `pago_terminal` int(11) NOT NULL,
  `pago_id_vendedor` int(11) NOT NULL,
  `id_moneda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comisiones`
--

INSERT INTO `comisiones` (`id`, `comision_triple`, `comision_terminal`, `pago_triple`, `pago_terminal`, `pago_id_vendedor`, `id_moneda`) VALUES
(1, 5, 5, 5, 5, 1, 1),
(2, 5, 5, 5, 5, 3, 28),
(3, 5, 5, 5, 5, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `estatus` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`, `estatus`) VALUES
(1, 'Bolivar Fuerte', 'BsF', '2', ',', '.', 'BSF', 1),
(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP', 0),
(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR', 0),
(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR', 0),
(5, 'Danish Krone', 'kr ', '2', '.', ',', 'DKK', 0),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS', 0),
(7, 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK', 0),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES', 0),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD', 0),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP', 0),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR', 0),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD', 0),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD', 0),
(14, 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK', 0),
(15, 'New Zealand Dollar', 'Bs', '2', ',', '.', 'NZD', 0),
(16, 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND', 0),
(17, 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF', 0),
(18, 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ', 0),
(19, 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR', 0),
(20, 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL', 0),
(21, 'Thai Baht', 'THB ', '2', ',', '.', 'THB', 0),
(22, 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN', 0),
(23, 'Peso Argentino', '$', '2', '.', ',', 'ARS', 0),
(24, 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT', 0),
(25, 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED', 0),
(26, 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD', 0),
(27, 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR', 0),
(28, 'Dolar Estadounidense', '$', '2', ',', '.', 'USD', 1),
(29, 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP', 0),
(30, 'Peso Colombiano', '$', '2', '.', ',', 'COP', 0),
(31, 'West African Franc', 'CFA ', '2', ',', '.', 'XOF', 0),
(32, 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_signo` varchar(50) NOT NULL DEFAULT '1',
  `cantidad` varchar(10) NOT NULL,
  `precio_venta` double NOT NULL,
  `premio` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_detalle`, `numero_factura`, `id_producto`, `id_horario`, `id_signo`, `cantidad`, `precio_venta`, `premio`, `fecha`) VALUES
(174, 5, 158, 3, '1', '257', 20, 0, '2025-07-18'),
(173, 5, 158, 2, '1', '257', 20, 0, '2025-07-18'),
(172, 5, 158, 1, '1', '257', 20, 0, '2025-07-18'),
(171, 5, 157, 3, '1', '257', 20, 0, '2025-07-18'),
(170, 5, 157, 2, '1', '257', 20, 0, '2025-07-18'),
(169, 5, 157, 1, '1', '257', 20, 0, '2025-07-18'),
(168, 4, 158, 1, '2', '257', 20, 0, '2025-07-18'),
(167, 4, 157, 1, '2', '257', 20, 0, '2025-07-18'),
(166, 3, 158, 1, '1', '356', 104, 0, '2025-05-11'),
(165, 3, 157, 1, '1', '356', 104, 0, '2025-05-11'),
(164, 2, 158, 1, '1', '369', 206, 0, '2025-03-29'),
(163, 2, 157, 1, '1', '369', 206, 0, '2025-03-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `premio` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL COMMENT '1=jugando 2=pagada 0=anulada',
  `id_moneda` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `total_venta`, `premio`, `estado_factura`, `id_moneda`, `serial`) VALUES
(53, 5, '2025-07-18', 0, 3, '1', '120.00', 0, 1, 28, '710572'),
(52, 4, '2025-07-18', 0, 3, '1', '40.00', 0, 1, 28, '452813'),
(51, 3, '2025-05-11', 0, 3, '1', '208.00', 0, 1, 28, '929530'),
(50, 2, '2025-03-29', 0, 3, '1', '412.00', 0, 1, 28, '631297');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora_jugadas`
--

CREATE TABLE `hora_jugadas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `hora` time NOT NULL,
  `ids_loterias` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hora_jugadas`
--

INSERT INTO `hora_jugadas` (`id`, `descripcion`, `hora`, `ids_loterias`) VALUES
(1, '12:00 PM', '12:00:00', '\'1,2,4,14\''),
(2, '05:00 PM', '17:00:00', '\'1,2,4,14\''),
(3, '08:00 PM', '20:00:00', '\'1,2,4,14\''),
(4, 'C/H 8:00 AM - 7:00 PM', '19:00:00', NULL),
(5, '8:30 AM', '08:30:00', NULL),
(6, '9:30 AM', '09:30:00', NULL),
(7, '10:30 AM', '10:30:00', NULL),
(8, '11:30 AM', '11:30:00', NULL),
(9, '12:30 PM', '12:30:00', NULL),
(10, '1:30 PM', '13:30:00', NULL),
(11, '2:30 PM', '14:30:00', NULL),
(12, '3:30 PM', '15:30:00', NULL),
(13, '4:30 PM', '16:30:00', NULL),
(14, '5:30 PM', '23:30:00', NULL),
(15, '6:30 PM', '23:30:00', NULL),
(16, '7:30 PM', '23:30:00', NULL),
(17, 'TRIPLETA', '00:00:00', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugada`
--

CREATE TABLE `jugada` (
  `id` int(11) NOT NULL,
  `num_jugada` int(10) NOT NULL,
  `nombre_j` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `id_loteria` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `jugada`
--

INSERT INTO `jugada` (`id`, `num_jugada`, `nombre_j`, `status`, `id_loteria`, `fecha`, `id_vendedor`) VALUES
(1, 1, 'NUMERO', 1, 1, '2017-04-04', 1),
(2, 2, 'SERIE', 1, 1, '0000-00-00', 1),
(3, 3, 'PERMUTA', 1, 1, '0000-00-00', 1),
(4, 4, 'TERMINAL', 1, 1, '0000-00-00', 1),
(5, 5, 'TRIPLETA', 1, 2, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jug_bloqueo`
--

CREATE TABLE `jug_bloqueo` (
  `id_producto` int(11) NOT NULL,
  `id_signo` int(11) NOT NULL,
  `id_jugada` int(11) NOT NULL,
  `numero_bloq` varchar(500) NOT NULL,
  `monto` double NOT NULL,
  `status` int(1) NOT NULL,
  `date` date NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limites`
--

CREATE TABLE `limites` (
  `id` int(11) NOT NULL,
  `id_loteria` int(11) NOT NULL,
  `monto` double NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `moneda`, `logo_url`) VALUES
(1, 'AGENCIA LOS 3 XXX', 'Colonias Los Andes  #250', 'CARACAS', '2222', 'CARACAS', '+(503) 2682-555', 'norbelysnaguanagua21@gmail.com', 13, '$', 'img/1495034737_Captura de pantalla de 2017-05-17 10:32:08.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `vender_r` tinyint(1) DEFAULT 0,
  `vender` tinyint(1) DEFAULT 0,
  `pagar` tinyint(1) DEFAULT 0,
  `anular` tinyint(1) DEFAULT 0,
  `crear_taquilla` int(11) NOT NULL,
  `reportes` int(11) NOT NULL,
  `crear_lot` int(11) NOT NULL,
  `crear_r` int(11) NOT NULL,
  `permisos` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tiempo_anular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `vender_r`, `vender`, `pagar`, `anular`, `crear_taquilla`, `reportes`, `crear_lot`, `crear_r`, `permisos`, `user_id`, `tiempo_anular`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `hora_inicio`, `hora_cierre`, `status_producto`, `precio_producto`, `date_added`, `tipo`, `id_vendedor`, `id_tipo`, `img`) VALUES
(187, '205', 'PICOCACTIVA', '06:00:00', '03:25:00', 1, 0, '2017-06-24 02:29:06', 2, 46, 6, ''),
(83, '010', 'CHANCE_A_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 12:16:00', 1, 1, 2, 'chance.png'),
(84, '011', 'CHANCE_B_1:00 PM', '05:00:00', '12:55:00', 1, 0, '2017-06-10 12:24:51', 1, 1, 2, 'chance.png'),
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
(96, '023', 'MANIA_B_4:30 PM', '05:00:00', '16:25:00', 1, 1, '2017-06-10 12:36:48', 1, 1, 3, 'logotriplemania.png'),
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
(157, '006', 'TRIPLE A', '05:00:00', '23:59:00', 1, 0, '2017-06-10 14:24:47', 1, 1, 1, 'logozulia.png'),
(158, '007', 'TRIPLE B', '05:00:00', '23:59:00', 1, 0, '2017-06-10 14:25:11', 1, 1, 1, 'logozulia.png'),
(223, '100', 'RULETA ACTIVA', '00:00:00', '09:55:00', 1, 0, '2017-06-24 04:28:44', 2, 1, 7, ''),
(231, '108', 'GRAN RULETA', '00:00:00', '09:25:00', 1, 0, '2017-06-24 04:31:22', 2, 1, 9, ''),
(241, '118', 'LOTTO ACTIVO', '00:00:00', '09:55:00', 1, 0, '2017-06-24 04:34:13', 2, 1, 8, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id_loteria` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `id_signo` varchar(10) NOT NULL DEFAULT '1',
  `fecha_sorteo` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`id_loteria`, `id`, `numero`, `id_signo`, `fecha_sorteo`) VALUES
('187', 11, '01', '1', '2025-01-22'),
('83', 12, '257', '2', '2025-01-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruleta`
--

CREATE TABLE `ruleta` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `ruta_img` varchar(100) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_tipo_ruleta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ruleta`
--

INSERT INTO `ruleta` (`id`, `nombre`, `color`, `status`, `ruta_img`, `id_vendedor`, `id_tipo_ruleta`) VALUES
(109, '00', 'red', 1, 'gato.png', 0, 187),
(110, '01', '#5e5e5e', 1, 'perro.png', 0, 187),
(111, '00', '#d5dba8', 1, '', 0, 223),
(117, '0', '#b7b7bb', 1, '', 0, 223),
(118, '01', '#d5dba8', 1, 'carnero.png', 0, 223),
(119, '02', '#b7b7bb', 1, 'toro.png', 0, 223),
(120, '03', '#d5dba8', 1, 'ciempie.png', 0, 223),
(121, '04', '#b7b7bb', 1, 'alacran.png', 0, 223),
(122, '05', '#d5dba8', 1, 'leon.png', 0, 223),
(123, '06', '#b7b7bb', 1, 'rana.png', 0, 223),
(124, '07', '#d5dba8', 1, 'perico.png', 0, 223),
(125, '08', '#b7b7bb', 1, 'Raton.png', 0, 223),
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
(180, '31', '#b7b7bb', 1, 'lapa.png', 0, 7),
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
(236, '31', '#b7b7bb', 1, 'lapa.png', 0, 8),
(237, '32', 'white', 1, 'ardilla.png', 0, 8),
(238, '33', 'background', 1, 'pescado.png', 0, 8),
(239, '34', 'white', 1, 'venado.png', 0, 8),
(240, '35', 'background', 1, 'jirafa.png', 0, 8),
(241, '36', 'background', 1, 'culebra.png', 0, 8),
(242, '09', '#d5dba8', 1, 'aguila.png', 0, 223),
(243, '10', '#b7b7bb', 1, 'tigre.png', 0, 223),
(244, '11', '#d5dba8', 1, 'gato.png', 0, 223),
(245, '12', '#b7b7bb', 1, 'caballo.png', 0, 223),
(246, '13', '#d5dba8', 1, 'mono.png', 0, 223),
(247, '14', '#b7b7bb', 1, 'paloma.png', 0, 223),
(248, '15', '#d5dba8', 1, 'zorro.png', 0, 223),
(249, '16', '#b7b7bb', 1, 'oso.png', 0, 223),
(250, '17', '#d5dba8', 1, 'pavo.png', 0, 223),
(251, '18', '#b7b7bb', 1, 'burro.png', 0, 223),
(252, '19', '#d5dba8', 1, 'chivo.png', 0, 223),
(253, '20', '#b7b7bb', 1, 'cochino.png', 0, 223),
(254, '21', '#d5dba8', 1, 'gallo.png', 0, 223),
(255, '23', '#b7b7bb', 1, 'cebra.png', 0, 223),
(258, '24', '#d5dba8', 1, 'iguana.png', 0, 223),
(259, '25', '#b7b7bb', 1, 'gallina.png', 0, 223),
(260, '26', '#d5dba8', 1, 'vaca.png', 0, 223),
(261, '27', '#b7b7bb', 1, 'perro.png', 0, 223),
(262, '28', '#d5dba8', 1, 'zamuro.png', 0, 223),
(263, '29', '#b7b7bb', 1, 'elefante.png', 0, 223),
(264, '30', '#d5dba8', 1, 'caiman.png', 0, 223),
(265, '31', '#b7b7bb', 1, 'lapa.png', 0, 223),
(266, '32', '#d5dba8', 1, 'ardilla.png', 0, 223),
(267, '33', '#b7b7bb', 1, 'pescado.png', 0, 223),
(268, '34', '#d5dba8', 1, 'venado.png', 0, 223),
(269, '35', '#b7b7bb', 1, 'jirafa.png', 0, 223),
(270, '36', '#d5dba8', 1, 'culebra.png', 0, 223),
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
(315, '36', '#8c8c8c', 1, 'culebra.png', 0, 9),
(316, '99-PRUEBA', '#8c8c8c', 1, 'rinoceronte.png', 0, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `signo`
--

CREATE TABLE `signo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `ruta_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `signo`
--

INSERT INTO `signo` (`id`, `nombre`, `status`, `id_vendedor`, `ruta_img`) VALUES
(1, '***', 1, 0, ''),
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

CREATE TABLE `tipo_loteria` (
  `id_loteria` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `abrev` varchar(5) NOT NULL,
  `status` int(11) NOT NULL,
  `fecha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_loteria`
--

INSERT INTO `tipo_loteria` (`id_loteria`, `id`, `nombre`, `abrev`, `status`, `fecha`) VALUES
(1, 1, 'ZULIA', 'ZLA', 1, '2017-06-03'),
(2, 2, 'CHANCE', 'CHA', 1, '2017-06-03'),
(4, 4, 'TACHIRA', 'TAC', 1, '2017-06-04'),
(14, 14, 'CARACAS', 'CCS', 1, '2025-01-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_ruleta`
--

CREATE TABLE `tipo_ruleta` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `paga` int(11) NOT NULL,
  `status` int(10) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_ruleta`
--

INSERT INTO `tipo_ruleta` (`id`, `nombre`, `paga`, `status`, `fecha`) VALUES
(6, 'PicocActiva', 60, 1, '2017-06-23'),
(7, 'RULETA ACTIVA', 300, 1, '2017-06-23'),
(8, 'LOTTO ACTIVO', 30, 1, '2017-06-24'),
(9, 'GRAN RULETA', 32, 1, '2017-06-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` varchar(50) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `signo` int(10) NOT NULL,
  `jugada` int(11) NOT NULL,
  `session_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `user_name` varchar(64) NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `tipo_user` int(11) NOT NULL COMMENT '1=admin ; 2=subadmin ; 3=taquilla',
  `id_admin` int(11) NOT NULL COMMENT 'id de admin  al que pertenece',
  `status` int(11) DEFAULT 1,
  `id_administrador` int(11) NOT NULL,
  `id_banca` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL,
  `id_intermediario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`, `tipo_user`, `id_admin`, `status`, `id_administrador`, `id_banca`, `id_agencia`, `id_intermediario`) VALUES
(1, 'Norbelys A', 'Naguanagua E', 'admin', '$2y$10$fVKwNU3mgZILvK3603kn7OdsP/cqRLdOUNM6NiFBpSmwnW9tqF.7K', 'vacio_1', '2016-05-21 00:00:00', 1, 1, 1, 0, 0, 0, 0),
(2, 'prueba', 'apdp', 'prueba', '$2y$10$znnmnfsk7WC9YFZkU97pFOYZlKpNwEogajHNpBZlCLF644WFO6uSO', NULL, '2017-07-09 18:51:07', 2, 1, 1, 0, 0, 0, 0),
(3, 'La suerte del ', 'campo', 'taquilla', '$2y$10$fVKwNU3mgZILvK3603kn7OdsP/cqRLdOUNM6NiFBpSmwnW9tqF.7K', NULL, '2017-07-12 15:25:52', 3, 1, 1, 0, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `codigo_producto` (`nombre_cliente`);

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
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `hora_jugadas`
--
ALTER TABLE `hora_jugadas`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`),
  ADD KEY `idx_status_tipo` (`status_producto`,`tipo`,`id_tipo`,`hora_inicio`,`hora_cierre`);

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
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `hora_jugadas`
--
ALTER TABLE `hora_jugadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `jugada`
--
ALTER TABLE `jugada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `jug_bloqueo`
--
ALTER TABLE `jug_bloqueo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `limites`
--
ALTER TABLE `limites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ruleta`
--
ALTER TABLE `ruleta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT de la tabla `signo`
--
ALTER TABLE `signo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tipo_loteria`
--
ALTER TABLE `tipo_loteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tipo_ruleta`
--
ALTER TABLE `tipo_ruleta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
