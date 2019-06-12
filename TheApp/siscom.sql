-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 28-Maio-2019 às 23:41
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siscom`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `idClientes` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cpf` decimal(11,0) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `telefone` varchar(12) DEFAULT NULL,
  `celular` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idClientes`, `cpf`, `dataNascimento`, `nome`, `endereco`, `bairro`, `cidade`, `estado`, `telefone`, `celular`, `email`) VALUES
(1, '37517815604', '1940-05-10', 'Wanderlinsk Arnoudo Juberto', 'Rua do Robertão', 'Centro', 'Belo Horizonte', NULL, '', '32-985425642', 'juberto@gmail.com'),
(2, '35465825402', '1748-07-15', 'Rodowaldo Rodolph', '', '', 'Atenas', NULL, NULL, NULL, NULL),
(3, '436434343', '1967-08-14', 'Adaubertu', 'Não informado', 'Centro', 'Ribeirão Preto', NULL, '', '16-945216485', 'adauberto1967@gmail.com'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `idPedidos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Produtos_codigo` int(10) UNSIGNED NOT NULL,
  `Clientes_idClientes` int(10) UNSIGNED NOT NULL,
  `dataPedido` datetime DEFAULT NULL,
  `valorPedido` decimal(10,2) DEFAULT NULL,
  `situacao` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`idPedidos`),
  KEY `Clientes_idClientes` (`Clientes_idClientes`),
  KEY `Produtos_codigo` (`Produtos_codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `embalagem` varchar(20) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `qtde_estoque` decimal(10,2) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
