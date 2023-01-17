-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Tempo de geração: 11-Jan-2023 às 00:59
-- Versão do servidor: 10.10.2-MariaDB-1:10.10.2+maria~ubu2204
-- versão do PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `om_site`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `om_books`
--

CREATE TABLE `om_books` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `om_books`
--

INSERT INTO `om_books` (`id`, `titulo`, `descricao`, `data_criacao`) VALUES
(1, 'Lorem Ipsum Dolor Sit Amet', 'Consectetur adipiscing elit. Phasellus eget metus odio. Nulla hendrerit accumsan maximus. Nulla maximus ornare lacus sed molestie. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In at quam enim. Nullam ut ligula dui. Nunc porttitor condimentum lacus at condimentum. Quisque consequat lacus efficitur mi viverra aliquam. Aenean mauris mauris, rutrum nec gravida at, faucibus sit amet turpis.', '2023-01-01'),
(2, 'Pellentesque Sollicitudin Consequat Ex', 'Non commodo est imperdiet at. Aliquam elementum neque ex, at finibus mauris interdum vel. Ut sem lorem, cursus mollis purus sed, tempor tempus augue. Quisque suscipit vestibulum lectus, eu scelerisque arcu cursus imperdiet. Mauris sollicitudin tincidunt dapibus.', '2023-01-12');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `om_books`
--
ALTER TABLE `om_books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `om_books`
--
ALTER TABLE `om_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
