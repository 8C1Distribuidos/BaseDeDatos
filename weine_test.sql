-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2021 a las 03:37:36
-- Versión del servidor: 10.4.17-MariaDB-log
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `weine_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_productos`
--

CREATE TABLE `catalogo_productos` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nombre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `catalogo_productos`
--

INSERT INTO `catalogo_productos` (`id`, `nombre`) VALUES
(2, 'Destilados'),
(1, 'Vinos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_productos`
--

CREATE TABLE `categoria_productos` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `id_catalogo` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria_productos`
--

INSERT INTO `categoria_productos` (`id`, `nombre`, `id_catalogo`) VALUES
(1, 'Vino Blanco', 1),
(2, 'Vino Espumoso', 1),
(3, 'Vino Tinto', 1),
(4, 'Vino Rosado', 1),
(5, 'Champagne', 1),
(6, 'Vino de Postre', 1),
(7, 'Vino sin Alcohol', 1),
(8, 'Brandy', 2),
(9, 'Tequila', 2),
(10, 'Cognac', 2),
(11, 'Ginebra', 2),
(12, 'Mezcal', 2),
(13, 'Ron', 2),
(14, 'Whisky', 2),
(15, 'Vodka', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `municipio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `municipio`) VALUES
(1, 'Acatic'),
(2, 'Acatlán de Juárez'),
(3, 'Ahualulco de Mercado'),
(4, 'Amacueca'),
(5, 'Amatitán'),
(6, 'Ameca'),
(7, 'San Juanito de Escobedo'),
(8, 'El Arenal'),
(9, 'Atemajac de Brizuela'),
(10, 'Atengo'),
(11, 'Atenguillo'),
(12, 'Atotonilco el Alto'),
(13, 'Atoyac'),
(14, 'Autlán de Navarro'),
(15, 'Ayotlán'),
(16, 'Ayutla'),
(17, 'La Barca'),
(18, 'Bolaños'),
(19, 'Cabo Corrientes'),
(20, 'Casimiro Castillo'),
(21, 'Cihuatlán'),
(22, 'Zapotlán el Grande'),
(23, 'Cocula'),
(24, 'Colotlán'),
(25, 'Concepción de Buenos Aires'),
(26, 'Cuautitlán de García Barragán'),
(27, 'Cuautla'),
(28, 'Cuquío'),
(29, 'Chapala'),
(30, 'Chimaltitán'),
(31, 'Chiquilistlán'),
(32, 'Degollado'),
(33, 'Ejutla'),
(34, 'Encarnación de Díaz'),
(35, 'Etzatlán'),
(36, 'El Grullo'),
(37, 'Guachinango'),
(38, 'Guadalajara'),
(39, 'Hostotipaquillo'),
(40, 'Huejúcar'),
(41, 'Huejuquilla el Alto'),
(42, 'La Huerta'),
(43, 'Ixtlahuacán de los Membrillos'),
(44, 'Ixtlahuacán del Río'),
(45, 'Jalostotitlán'),
(46, 'Jamay'),
(47, 'Jesús María'),
(48, 'Jilotlán de los Dolores'),
(49, 'Jocotepec'),
(50, 'Juanacatlán'),
(51, 'Juchitlán'),
(52, 'Lagos de Moreno'),
(53, 'El Limón'),
(54, 'Magdalena'),
(55, 'Santa María del Oro'),
(56, 'La Manzanilla de la Paz'),
(57, 'Mascota'),
(58, 'Mazamitla'),
(59, 'Mexticacán'),
(60, 'Mezquitic'),
(61, 'Mixtlán'),
(62, 'Ocotlán'),
(63, 'Ojuelos de Jalisco'),
(64, 'Pihuamo'),
(65, 'Poncitlán'),
(66, 'Puerto Vallarta'),
(67, 'Villa Purificación'),
(68, 'Quitupan'),
(69, 'El Salto'),
(70, 'San Cristóbal de la Barranca'),
(71, 'San Diego de Alejandría'),
(72, 'San Juan de los Lagos'),
(73, 'San Julián'),
(74, 'San Marcos'),
(75, 'San Martín de Bolaños'),
(76, 'San Martín Hidalgo'),
(77, 'San Miguel el Alto'),
(78, 'Gómez Farías'),
(79, 'San Sebastián del Oeste'),
(80, 'Santa María de los Ángeles'),
(81, 'Sayula'),
(82, 'Tala'),
(83, 'Talpa de Allende'),
(84, 'Tamazula de Gordiano'),
(85, 'Tapalpa'),
(86, 'Tecalitlán'),
(87, 'Techaluta de Montenegro'),
(88, 'Tecolotlán'),
(89, 'Tenamaxtlán'),
(90, 'Teocaltiche'),
(91, 'Teocuitatlán de Corona'),
(92, 'Tepatitlán de Morelos'),
(93, 'Tequila'),
(94, 'Teuchitlán'),
(95, 'Tizapán el Alto'),
(96, 'Tlajomulco de Zúñiga'),
(97, 'Tlaquepaque'),
(98, 'Tolimán'),
(99, 'Tomatlán'),
(100, 'Tonalá'),
(101, 'Tonaya'),
(102, 'Tonila'),
(103, 'Totatiche'),
(104, 'Tototlán'),
(105, 'Tuxcacuesco'),
(106, 'Tuxcueca'),
(107, 'Tuxpan'),
(108, 'Unión de San Antonio'),
(109, 'Unión de Tula'),
(110, 'Valle de Guadalupe'),
(111, 'Valle de Juárez'),
(112, 'San Gabriel'),
(113, 'Villa Corona'),
(114, 'Villa Guerrero'),
(115, 'Villa Hidalgo'),
(116, 'Cañadas de Obregón'),
(117, 'Yahualica de González Gallo'),
(118, 'Zacoalco de Torres'),
(119, 'Zapopan'),
(120, 'Zapotiltic'),
(121, 'Zapotitlán de Vadillo'),
(122, 'Zapotlán del Rey'),
(123, 'Zapotlanejo'),
(124, 'San Ignacio Cerro Gordo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `link_imagen` varchar(50) NOT NULL,
  `precio` mediumint(8) UNSIGNED NOT NULL,
  `stock` smallint(5) UNSIGNED NOT NULL,
  `id_categoria` tinyint(3) UNSIGNED NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `link_imagen`, `precio`, `stock`, `id_categoria`, `deleted`) VALUES
(1, 'Blue nun Riesling 750 ml ', '1.jpg', 239, 50, 1, 0),
(2, 'Luigi Bosca Chardonnay 750 ml', '2.jpg', 485, 50, 1, 0),
(3, 'Pazo Cilleiro Albariño 750 ml', '3.jpg', 415, 50, 1, 0),
(4, 'Acquerello Pinot Grigio 750 ml ', '4.png', 190, 50, 1, 0),
(5, 'Alamos Chardonnay 750 ml', '5.jpg', 286, 50, 1, 0),
(6, 'Beringer MV Chardonnay 750 ml', '6.jpg', 238, 50, 1, 0),
(7, 'Beringer MV Pinot Grigio 750 ml', '7.jpg', 238, 50, 1, 0),
(8, 'Bliss Chardonnay 750 ml', '8.jpg', 295, 50, 1, 0),
(9, 'California 4000 ml', '9.jpg', 279, 50, 1, 0),
(10, 'Casa Madero Chardonnay organico 750 ml', '10.png', 369, 50, 1, 0),
(11, 'Champ moet chandon nectar imp rose Y.Ambush 750 ml', '11.jpg', 1701, 50, 2, 0),
(12, 'Blue nun sparkling gold 750 ml', '12.jpg', 280, 50, 2, 0),
(13, 'Riunite Prosecco 750 ml ', '13.jpg', 292, 50, 2, 0),
(14, 'Acquerello Prosecco 750 ml', '14.png', 270, 50, 2, 0),
(15, 'Asti Martini 200 ml ', '15.jpg', 92, 50, 2, 0),
(16, 'Cuatro soles blanco afrutado 700 ml ', '16.png', 91, 50, 2, 0),
(17, 'Cuatro soles tinto afrutado 700 ml ', '17.png', 95, 50, 2, 0),
(18, 'Les cocottes Chardonnay sin alocohol 750 ml ', '18.png', 330, 50, 2, 0),
(20, 'Andre sparkling rose 750 ml ', '20.jpg', 188, 50, 2, 0),
(21, 'Lleiroso Crianza 750 ml ', '21.jpg', 524, 50, 3, 0),
(22, '2 KM/H Tempranillo grenache 750 ml ', '22.jpg', 350, 50, 3, 0),
(23, 'Acquerello chianti 750 ml ', '23.png', 215, 50, 3, 0),
(24, 'Acquerello Montepulciano D Abruzzo 750 ml ', '24.png', 177, 50, 3, 0),
(25, 'Adriano Corona 750 ml ', '25.jpg', 299, 50, 3, 0),
(26, 'Alamos Malbec 750 ml ', '26.jpg', 286, 50, 3, 0),
(27, 'Alion 750 ml ', '27.jpg', 2697, 50, 3, 0),
(28, 'Ancon san Vicente 750 ml ', '28.jpg', 1146, 50, 3, 0),
(29, 'Arzuga Crianza 750 ml ', '29.jpg', 735, 50, 3, 0),
(30, 'Balero 750 ml ', '30.jpg', 333, 50, 3, 0),
(31, '12 Lunas 750 ml ', '31.jpg', 335, 50, 4, 0),
(32, 'Cuatro soles Blanc Zinfandel 750 ml ', '32.png', 112, 50, 4, 0),
(33, 'Des Lys Rose D Anjou Rvino espumoso 750 ml ', '33.jpg', 224, 50, 4, 0),
(34, 'Finca la linda Rose Malbec 750 ml ', '34.jpg', 309, 50, 4, 0),
(35, 'GSM cava Cordoba 750 ml ', '35.jpg', 426, 50, 4, 0),
(36, 'Guaname 750 ml ', '36.png', 294, 50, 4, 0),
(38, 'Manon cotes de provino espumosonce 750 ml ', '38.jpg', 375, 50, 4, 0),
(39, 'Monte Xanic grenache rose 750 ml ', '39.jpg', 354, 50, 4, 0),
(41, 'G.H. Mumm Brutt Cordon Rouge 750 ml ', '41.jpg', 1068, 50, 5, 0),
(42, 'Moet Chandon Brut imp Y.Ambush 750 ml ', '42.jpg', 1324, 50, 5, 0),
(43, 'Perrier Jouet grand brut 750 ml ', '43.jpg', 1058, 50, 5, 0),
(44, 'Veuve clicquot brut 750 ml ', '44.png', 1149, 50, 5, 0),
(45, 'veuve clicquot demi sec 750 ml ', '45.png', 1149, 50, 5, 0),
(46, 'Veuve clicquot la grande dame 750 ml ', '46.jpg', 3760, 50, 5, 0),
(47, 'Veuve clicquot la grande dame rose 750 ml', '47.png', 7555, 50, 5, 0),
(48, 'Taittinger brut reserva 750 ml ', '48.jpg', 1365, 50, 5, 0),
(49, 'G.H. Mumm Brut Cordon Rouge 750 ml ', '49.jpg', 1067, 50, 5, 0),
(50, 'Louis Roederer Brut Premier 750 ml ', '50.jpg', 1395, 50, 5, 0),
(51, 'Zuccardi Torrontes Tardio 500 ml ', '51.png', 300, 50, 6, 0),
(52, 'Madeira Henriques & Henriques 750 ml ', '52.jpg', 538, 50, 6, 0),
(53, 'Eiswein blue nun 500 ml ', '53.jpg', 1172, 50, 6, 0),
(54, 'Torres Moscatel 500 ml ', '54.jpg', 299, 50, 6, 0),
(55, 'Errazuriz Late Harvest 375 ml ', '55.jpg', 369, 50, 6, 0),
(56, 'L.A. Cetto Moscatel & Palomino 750 ml', '56.jpg', 206, 50, 6, 0),
(57, 'Calvet Sauternes 500 ml ', '57.jpg', 526, 50, 6, 0),
(58, 'Monte Xanic Chenin Blanc cosecha tardia 750 ml ', '58.jpg', 370, 50, 6, 0),
(59, 'Terraza de los Andes sinngle Vineyard 375 ml ', '59.jpg', 599, 50, 6, 0),
(60, ' Les cocottes Chardonnay sin alcohol 750 ml ', '60.jpg', 314, 50, 7, 0),
(61, 'Les cocottes Chardonnay sin alcohol 750 ml ', '61.png', 330, 50, 7, 0),
(62, 'Pierre zero Chardonnay sin alcohol 200 ml ', '62.png', 134, 50, 7, 0),
(63, 'Les cocottes rose sin alcohol 750 ml ', '63.jpg', 314, 50, 7, 0),
(64, 'Pierre zero rose sin alcohol 200 ml ', '64.jpg', 134, 50, 7, 0),
(65, 'Free alcohol moscato 750 ml ', '65.jpg', 231, 50, 7, 0),
(66, 'Les cocottes Merlot sin alcohol 750 ml ', '66.jpg', 314, 50, 7, 0),
(67, 'Home free premium 750 ml ', '67.png', 231, 50, 7, 0),
(68, 'Torres Winter Fruits 700 ml ', '68.jpg', 187, 50, 8, 0),
(69, 'Alma de Magno 700 ml ', '69.jpg', 419, 50, 8, 0),
(70, 'Azteca de oro 700 ml ', '70.png', 152, 50, 8, 0),
(71, 'Bertrams 750 ml ', '71.jpg', 190, 50, 8, 0),
(72, 'Byass 12 reserva 700 ml ', '72.jpg', 262, 50, 8, 0),
(73, 'Cardenal de Mendoza gran reserva 700 ml ', '73.jpg', 1107, 50, 8, 0),
(74, 'Carlos I Gran reserva 700 ml ', '74.jpg', 833, 50, 8, 0),
(75, 'Carlos I Imperial XO 700 ml ', '75.jpg', 1496, 50, 8, 0),
(76, 'Conde Herrera X 700 ML ', '76.jpg', 275, 50, 8, 0),
(77, 'Don Pedtro clasico 1000 ml ', '77.png', 162, 50, 8, 0),
(78, 'Corralejo reposado 100 ml ', '78.jpg', 103, 50, 9, 0),
(79, 'Rey sol añejo 50 ml ', '79.png', 279, 50, 9, 0),
(80, 'Adictivo añejo 800 ml ', '80.png', 645, 50, 9, 0),
(81, 'Adictivo extra añejo 800 ml ', '81.png', 1150, 50, 9, 0),
(82, 'Adictivo plata 800 ml ', '82.png', 350, 50, 9, 0),
(83, 'Adictivo reposado 800 ml ', '83.png', 445, 50, 9, 0),
(84, 'Alacran blanco 750 ml ', '84.jpg', 489, 50, 9, 0),
(85, 'Alacran cristal añejo 750 ml ', '85.jpg', 670, 50, 9, 0),
(86, 'Buen amigo reposado 750 ml ', '86.jpg', 149, 50, 9, 0),
(87, 'Carrera reposado cristalino 750 ml ', '87.jpg', 595, 50, 9, 0),
(88, 'Hennessy vsop 200 years 700 ml ', '88.png', 1701, 50, 10, 0),
(89, 'Hennessy vsop 375 ml ', '89.png', 625, 50, 10, 0),
(90, 'Martell vsop R. BR 700 ml ', '90.jpg', 740, 50, 10, 0),
(91, 'Courvoisier VS 700 ml ', '91.jpg', 710, 50, 10, 0),
(92, 'Courvoisier vsop 700 ml ', '92.png', 979, 50, 10, 0),
(93, 'Hennessy vino Espumosory special 700 ml ', '93.jpg', 815, 50, 10, 0),
(94, 'Hennessy vino espumosory special flask 200 ml ', '94.jpg', 270, 50, 10, 0),
(95, 'Hennessy vino espumosory special pantone 700 ml ', '95.png', 815, 50, 10, 0),
(96, 'Hennessy XO 700 ml ', '96.jpg', 4660, 50, 10, 0),
(97, 'Martell blue swift 700 ml ', '97.jpg', 1211, 50, 10, 0),
(98, 'Beefeater blackberry 700 ml ', '98.jpg', 480, 50, 11, 0),
(99, 'Rives london 700 ml ', '99.jpg', 228, 50, 11, 0),
(100, 'Tanqueray London dry 1750 ml ', '100.jpg', 915, 50, 11, 0),
(101, 'Tanqueray ten 1750 ml ', '101.jpg', 1686, 50, 11, 0),
(102, 'Beefeater 24 años 750 ml ', '102.png', 669, 50, 11, 0),
(103, 'Beefeater 750 ml ', '103.jpg', 480, 50, 11, 0),
(104, 'Bloom London dry 750 ml ', '104.jpg', 1031, 50, 11, 0),
(105, 'Bombay sapphire 1000 ml ', '105.png', 530, 50, 11, 0),
(106, 'Boodles London dry 750 ml ', '106.jpg', 398, 50, 11, 0),
(107, 'Boodles Mulberry 750 ml ', '107.png', 494, 50, 11, 0),
(108, 'Amaras joven cupreata 750 ml ', '108.jpg', 699, 50, 12, 0),
(109, 'Amaras joven espadin 750 ml ', '109.jpg', 599, 50, 12, 0),
(110, 'Apaluz joven 1000 ml ', '110.png', 461, 50, 12, 0),
(111, 'Apaluz joven 300 ml ', '111.jpg', 256, 50, 12, 0),
(112, 'Artesanal aguas mansas 700 ml ', '112.png', 623, 50, 12, 0),
(113, 'Doña natalia c/estuche 750 ml ', '113.jpg', 2359, 50, 12, 0),
(114, 'Espiritu Lauro joven 750 ml ', '114.png', 890, 50, 12, 0),
(115, 'Union uno 375 ml ', '115.jpg', 259, 50, 12, 0),
(116, 'Conejos espadin tobala 750 ml ', '116.png', 674, 50, 12, 0),
(117, 'Conejos joven 750 ml ', '117.png', 476, 50, 12, 0),
(118, 'Bacardi añejo 1000 ml ', '118.jpg', 180, 50, 13, 0),
(119, 'Bacardi añejo 750 ml ', '119.jpg', 144, 50, 13, 0),
(120, 'Bacardi carta blanca 1750 ml ', '120.jpg', 293, 50, 13, 0),
(121, 'Bacardi carta blanca 3000 ml ', '121.jpg', 790, 50, 13, 0),
(122, 'Capitan Morgan 700 ml ', '122.jpg', 142, 50, 13, 0),
(123, 'Capitan Morgan white 750 ml ', '123.jpg', 137, 50, 13, 0),
(124, 'Castillo imperial añejo 1000 ml ', '124.jpg', 93, 50, 13, 0),
(125, 'Flor de caña añejo 750 ml ', '125.jpg', 249, 50, 13, 0),
(126, 'Flor de caña blanco extra dry 750 ml ', '126.png', 190, 50, 13, 0),
(127, 'Havana club 7 años 750 ml ', '127.jpg', 377, 50, 13, 0),
(128, 'Abasolo de maiz 750 ml ', '128.png', 590, 50, 14, 0),
(129, 'Bruichladdich Charlotte 700 ml ', '129.png', 1705, 50, 14, 0),
(130, 'Chivas regal extra 13 sherry 750 ml ', '130.png', 720, 50, 14, 0),
(131, 'Chivas regal extra 375 ml ', '131.jpg', 403, 50, 14, 0),
(132, 'Dalwhinnie 15 años edicion especial 700 ml ', '132.jpg', 1382, 50, 14, 0),
(133, 'Dewars white label 1000 ml ', '133.jpg', 368, 50, 14, 0),
(134, 'Dewars white label 4500 ', '134.jpg', 1718, 50, 14, 0),
(135, 'Glenmorangie 14 años quinta Ruban 750 ml ', '135.png', 1490, 50, 14, 0),
(136, 'Jack Daniels single barrel 700 ml ', '136.jpg', 1083, 50, 14, 0),
(137, 'Johnnie Walker double black 750 ml ', '137.jpg', 923, 50, 14, 0),
(138, 'Absolute blue 1000 ml ', '138.jpg', 294, 50, 15, 0),
(139, 'Absolute lime 375 ml ', '139.jpg', 90, 50, 15, 0),
(140, 'Absolute mango 750 ml ', '140.jpg', 262, 50, 15, 0),
(141, 'Absolute one blue 750 ml ', '141.jpg', 259, 50, 15, 0),
(142, 'Absolute passion fruit 750 ml ', '142.jpg', 262, 50, 15, 0),
(143, 'Absolut rainbow 750 ml ', '143.jpg', 262, 50, 15, 0),
(144, 'Absolut sequins 750 ml ', '144.jpg', 259, 50, 15, 0),
(145, 'Belvino espumoso dere 375 ml ', '145.png', 407, 50, 15, 0),
(146, 'Ciroc 3000 ml ', '146.jpg', 259, 50, 15, 0),
(147, 'Eristoff 700 ml ', '147.jpg', 84, 50, 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_por_compra`
--

CREATE TABLE `producto_por_compra` (
  `id_ticket` smallint(5) UNSIGNED NOT NULL,
  `id_producto` tinyint(3) UNSIGNED NOT NULL,
  `cantidad` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `id_usuario` smallint(5) UNSIGNED NOT NULL,
  `fecha_compra` datetime NOT NULL,
  `monto_total` mediumint(9) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `CP` varchar(7) NOT NULL,
  `id_municipio` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`id`, `tipo`) VALUES
(3, 'Administra'),
(4, 'Almacenist'),
(1, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido_materno` varchar(20) NOT NULL,
  `apellido_paterno` varchar(20) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `fotografia` varchar(50) NOT NULL,
  `contraseña` varchar(200) NOT NULL,
  `id_tipo` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido_materno`, `apellido_paterno`, `correo_electronico`, `fotografia`, `contraseña`, `id_tipo`) VALUES
(3, 'Fer', 'Mendoza', 'Jimenez', 'admin@gmail.com', 'admin', 'OWiGYWDBjsk=', 3),
(4, 'Fer', 'Mendoza', 'Jimenez', 'almacenista@gmail.com', 'alnamce', '4yYSVO6VB6L8YY9VjHDhVg==', 4),
(6, 'Fer', 'Mendoza', 'Jimenez', 'cliente@gmail.com', 'cleint', '+8xpz7ozZ+c=', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo_productos`
--
ALTER TABLE `catalogo_productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `categoria_productos`
--
ALTER TABLE `categoria_productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_catalogo` (`id_catalogo`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `producto_por_compra`
--
ALTER TABLE `producto_por_compra`
  ADD PRIMARY KEY (`id_ticket`,`id_producto`) USING BTREE,
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_ticket` (`id_ticket`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipo` (`tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo_productos`
--
ALTER TABLE `catalogo_productos`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria_productos`
--
ALTER TABLE `categoria_productos`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria_productos`
--
ALTER TABLE `categoria_productos`
  ADD CONSTRAINT `categoria_productos_ibfk_1` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogo_productos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_productos` (`id`);

--
-- Filtros para la tabla `producto_por_compra`
--
ALTER TABLE `producto_por_compra`
  ADD CONSTRAINT `producto_por_compra_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `producto_por_compra_ibfk_2` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
