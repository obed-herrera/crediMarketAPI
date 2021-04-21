-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2021 a las 07:40:01
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nb_credimarket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credi_client`
--

CREATE TABLE `credi_client` (
  `id_credi_client` int(11) NOT NULL,
  `client_first_name` varchar(50) NOT NULL,
  `client_middle_name` varchar(50) NOT NULL,
  `client_last_name1` varchar(50) NOT NULL,
  `client_last_name2` varchar(50) NOT NULL,
  `client_national_id` varchar(50) NOT NULL,
  `client_sys_code` varchar(20) NOT NULL,
  `client_phone` varchar(9) NOT NULL,
  `client_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credi_item`
--

CREATE TABLE `credi_item` (
  `id_credi_item` int(11) NOT NULL,
  `credi_item_code` varchar(20) NOT NULL,
  `credi_item_name` varchar(60) NOT NULL,
  `credi_item_description` varchar(100) NOT NULL,
  `credi_item_cost` float NOT NULL,
  `credi_item_price` float NOT NULL,
  `credi_item_quantity` int(11) NOT NULL,
  `credi_item_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credi_line`
--

CREATE TABLE `credi_line` (
  `id_credi_line` int(11) NOT NULL,
  `credi_line_name` varchar(50) NOT NULL,
  `credi_line_state` int(11) NOT NULL COMMENT '0: Activa, 1: Inactiva'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credi_loan`
--

CREATE TABLE `credi_loan` (
  `id_credi_loan` int(11) NOT NULL,
  `credi_loan_code` varchar(20) NOT NULL,
  `credi_loan_mount` float NOT NULL,
  `credi_loan_interest` decimal(10,0) NOT NULL,
  `credi_loan_term` int(11) NOT NULL,
  `credi_loan_paym_freq` float NOT NULL,
  `credi_loan_money_type` int(11) NOT NULL COMMENT '0: Cordoba, 1: Dolar',
  `credi_loan_delivery_date` date NOT NULL,
  `credi_loan_initial_date` date NOT NULL,
  `credi_loan_end_date` date NOT NULL,
  `credi_loan_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `credi_client`
--
ALTER TABLE `credi_client`
  ADD PRIMARY KEY (`id_credi_client`);

--
-- Indices de la tabla `credi_item`
--
ALTER TABLE `credi_item`
  ADD PRIMARY KEY (`id_credi_item`);

--
-- Indices de la tabla `credi_line`
--
ALTER TABLE `credi_line`
  ADD PRIMARY KEY (`id_credi_line`);

--
-- Indices de la tabla `credi_loan`
--
ALTER TABLE `credi_loan`
  ADD PRIMARY KEY (`id_credi_loan`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `credi_client`
--
ALTER TABLE `credi_client`
  MODIFY `id_credi_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `credi_item`
--
ALTER TABLE `credi_item`
  MODIFY `id_credi_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `credi_line`
--
ALTER TABLE `credi_line`
  MODIFY `id_credi_line` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `credi_loan`
--
ALTER TABLE `credi_loan`
  MODIFY `id_credi_loan` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
