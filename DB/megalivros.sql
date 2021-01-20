-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jan-2021 às 23:32
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `megalivros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros`
--

CREATE TABLE `bairros` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `zona` varchar(255) NOT NULL,
  `cidade` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bairros`
--

INSERT INTO `bairros` (`id`, `nome`, `zona`, `cidade`, `created_at`, `updated_at`) VALUES
(1, 'Tancredo Neves', 'Leste', 1, '2020-08-26 00:00:00', '2020-06-06 00:00:00'),
(3, 'Adrianópolis', 'Centro-Sul', 1, '2020-08-26 00:00:00', '2020-06-06 00:00:00'),
(4, 'Aleixo', 'Centro-Sul', 1, '2020-08-26 00:00:00', '2020-08-11 00:00:00'),
(5, 'Alvorada', 'Centro-Oeste', 1, '2020-10-04 00:00:00', '2020-10-07 00:00:00'),
(6, 'Armando Mendes', 'Leste', 1, '2020-10-01 00:00:00', '2020-10-08 00:00:00'),
(7, 'Betania', 'Sul', 1, '2020-10-01 00:00:00', '2020-10-16 00:00:00'),
(8, 'Cachoeirinha', 'Sul', 1, '2020-10-14 00:00:00', '2020-10-20 00:00:00'),
(9, 'Centro', 'Sul', 1, '2020-10-01 00:00:00', '2020-10-09 00:00:00'),
(10, 'Chapada', 'Centro-Sul', 1, '2020-10-02 00:00:00', '2020-10-16 00:00:00'),
(11, 'Cidade de Deus', 'Norte', 1, '2020-10-06 00:00:00', '2020-10-09 00:00:00'),
(12, 'Cidade Nova', 'Norte', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(13, 'Colônia Antônio Aleixo', 'Leste', 1, '2020-10-03 00:00:00', '2020-10-08 00:00:00'),
(14, 'Colônia Oliveira Machado', 'Sul', 1, '2020-10-07 00:00:00', '2020-10-08 00:00:00'),
(15, 'Colônia Santo Antônio', 'Norte', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(16, 'Colônia Terra Nova', 'Norte', 1, '2020-10-05 00:00:00', '2020-10-06 00:00:00'),
(17, 'Compensa', 'Oeste', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(18, 'Coroado', 'Leste', 1, '2020-10-05 00:00:00', '2020-10-06 00:00:00'),
(19, 'Crespo', 'Sul', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(20, 'Da Paz', 'Centro-Oeste', 1, '2020-10-05 00:00:00', '2020-10-06 00:00:00'),
(21, 'Distrito Industrial I', 'Sul', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(22, 'Distrito Industrial II', 'Leste', 1, '2020-10-05 00:00:00', '2020-10-06 00:00:00'),
(23, 'Dom Pedro', 'Centro-Oeste', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(24, 'Educandos', 'Sul', 1, '2020-10-05 00:00:00', '2020-10-06 00:00:00'),
(25, 'Flores', 'Centro-Sul', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(26, 'Gilberto Mestrinho', 'Leste', 1, '2020-10-05 00:00:00', '2020-10-06 00:00:00'),
(27, 'Glória', 'Oeste', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(28, 'Japiim', 'Sul', 1, '2020-10-05 00:00:00', '2020-10-06 00:00:00'),
(29, 'Jorge Teixeira', 'Leste', 1, '2020-10-01 00:00:00', '2020-10-02 00:00:00'),
(30, 'Lago Azul', 'Norte', 1, '2020-10-05 00:00:00', '2020-10-06 00:00:00'),
(31, 'Lírio do Vale', 'Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(32, 'Mauazinho', 'Leste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(33, 'Monte das Oliveiras', 'Norte', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(34, 'Morro da Liberdade', 'Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(35, 'Aparecida', 'Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(36, 'Nossa Senhora das Graças', 'Centro-Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(37, 'Nova Cidade', 'Norte', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(38, 'Nova Esperança', 'Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(39, 'Nova Cidade', 'Norte', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(40, 'Nova Esperança', 'Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(41, 'Novo Aleixo', 'Norte', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(42, 'Novo Israel', 'Norte', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(43, 'Parque 10', 'Centro-Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(44, 'Petrópolis', 'Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(45, 'Planalto', 'Centro-Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(46, 'Ponta Negra', 'Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(47, 'Praça 14', 'Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(48, 'Presidente Vargas', 'Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(49, 'Puraquequara', 'Leste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(50, 'Raiz', 'Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(51, 'Redenção', 'Centro-Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(52, 'Santa Etelvina', 'Norte', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(53, 'Santa Luzia', 'Sul', 1, '2020-10-14 00:00:00', '2020-10-15 00:00:00'),
(54, 'Santo Agostinho', 'Oeste', 1, '2020-10-09 00:00:00', '2020-10-10 00:00:00'),
(55, 'Santo Antonio', 'Oeste', 1, '2020-10-06 00:00:00', '2020-10-07 00:00:00'),
(56, 'São Francisco', 'Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(57, 'São Geraldo', 'Centro-Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(58, 'São Jorge', 'Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(59, 'São José Operário', 'Leste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(60, 'São Lázaro', 'Sul', 1, '2020-10-14 00:00:00', '2020-10-15 00:00:00'),
(61, 'São Raimundo', 'Oeste', 1, '2020-10-09 00:00:00', '2020-10-10 00:00:00'),
(62, 'Tarumã', 'Oeste', 1, '2020-10-06 00:00:00', '2020-10-07 00:00:00'),
(63, 'Tarumã-Açu', 'Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(64, 'Vila Buriti', 'Sul', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(65, 'Vila da Prata', 'Oeste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00'),
(66, 'Zumbi', 'Leste', 1, '2020-10-02 00:00:00', '2020-10-03 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_produtos`
--

CREATE TABLE `categoria_produtos` (
  `id` int(11) NOT NULL,
  `nome_categoria` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `likes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria_produtos`
--

INSERT INTO `categoria_produtos` (`id`, `nome_categoria`, `slug`, `descricao`, `created_at`, `updated_at`, `foto`, `likes`) VALUES
(1, 'livros', 'livros', 'todos os tipos de livros', '2020-03-06 00:00:00', '2020-03-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/1_tybbie.png', 103),
(2, 'escritorio itens', 'escritorio-itens', 'coisas relacionadas ao ambiente de ensino', '2020-03-06 00:00:00', '2020-03-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/2_zhktfv.png', 22),
(3, 'material escolar', 'material-escolar', 'materiais usados no ambiente de ensino', '2020-04-10 00:00:00', '2020-04-10 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/4_nblcyt.png', 567),
(4, 'mochilas', 'mochilas', 'suportes para materiais escolares, papéis, livros e etc.', '2020-04-15 00:00:00', '2020-04-10 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/3_vypjfi.png', 45),
(5, 'papeis', 'papeis', 'itens relacionados à papeis.', '2020-04-10 00:00:00', '2020-04-10 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/5_vynxde.png', 219);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Manaus', 1, '2020-08-26 00:00:00', '2020-06-06 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nascimento` datetime NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `e_mail` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `sua_descricao` varchar(255) DEFAULT 'NÃO INSERIDO',
  `cep` varchar(255) DEFAULT 'NÃO INSERIDO',
  `complemento_endereco` text DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT 'NÃO INSERIDO',
  `bairro_cidade_estado` int(11) DEFAULT NULL,
  `n_positivos` int(11) DEFAULT 0,
  `n_negativos` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `foto_perfil` varchar(255) DEFAULT 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg',
  `nome_img_perfil` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `data_nascimento`, `cpf`, `e_mail`, `senha`, `sua_descricao`, `cep`, `complemento_endereco`, `logradouro`, `bairro_cidade_estado`, `n_positivos`, `n_negativos`, `created_at`, `updated_at`, `foto_perfil`, `nome_img_perfil`) VALUES
(10, 'pedrohenriquemartinssilva', '2003-06-05 04:00:00', '000.000.000-00', 'pedro@gmail.com', 'pedropedro', 'sem descrição', '69087-380', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanês', 1, 0, 0, '2020-11-11 21:48:43', '2020-11-11 21:48:43', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_usuario%2F7846e69d2bf6817d561bd61fbac1263c.jpg', '4ff190993502dd388ecab4fd4957dc8c'),
(11, 'FlavioFlavioFlavio', '2000-06-05 07:33:00', '111.098.459-08', 'flavio@gmail.com', 'flavioflavio', 'omw~domwe erfvprfd', '12121', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanês', 17, 0, 0, '2020-11-11 21:55:38', '2020-11-11 21:55:38', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_usuario%2Fd15cf2fce0f8e8058cbe9cfb02af9989.jpg', '41ddadcc24a30e798efaa45baaee598b'),
(12, 'gokutestando123456', '2001-01-01 04:11:00', '000.000.000-00', 'gokutestando123456@gmail.com', 'gokugoku', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '69087-380', 'Próximo a escola Jorge de Rezende', 'sqw qaswq kqnflf epore', 19, 0, 0, '2020-11-11 23:19:22', '2020-11-27 16:44:34', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_usuario%2F5e8897d71d86a169379a2ca864ffac2e.jpg', 'b4855bfae85dd5f69d3340fc169beab5'),
(13, 'clienteteste', '2001-10-20 04:00:00', '000.000.000-00', 'pedroteste@gmail.com', '1234567890', '22w21e', '69087-380', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanês', 1, 0, 0, '2020-11-12 00:30:22', '2020-11-12 00:30:22', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_usuario%2Fb6236564aaec282b8deefbc8793c77dc.jpg', '4cb6055863b04aa41192972404305070'),
(14, 'Pedro Henrique Martins', '2003-06-05 14:50:00', '004.890.678-98', 'pedroh93601@gmail.com', 'Pedroh92985512', 'desenvolvedor de software', '69087380', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanez', 1, 0, 0, '2020-11-27 17:26:33', '2020-11-27 17:26:33', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_usuario%2F766557ddf47c701c6c991dc4ae4a3a8c.jpg', 'a89ac58d26b5ac2eec9b158ba8185b0f'),
(15, 'Kamily Mello', '2005-01-12 04:00:00', '000.000.000-00', 'kamili@gmail.com', '12345678', 'tenho oculos', '69087380', 't5g4', 'Rua Doutor Gallo Ibanez', 1, 0, 0, '2020-11-27 19:35:18', '2020-11-27 19:35:31', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg', '7fb2254b87b64580b01acbca63c5779f'),
(16, 'gokutestando123456', '2004-09-05 04:00:00', '000.000.000-00', 'gokutestando123456@gmail.com', '12345678', 'rvhmk,lkj i ouiou', '69087-380', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanez', 1, 0, 0, '2020-11-27 20:25:48', '2020-11-27 20:25:48', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_usuario%2F2074673baeb8a6095935f78a81c6c243.jpg', 'cddb4b898810bed31db365f6de4b8a0d');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contasrelacionadas`
--

CREATE TABLE `contasrelacionadas` (
  `id` int(11) NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contasrelacionadas`
--

INSERT INTO `contasrelacionadas` (`id`, `id_vendedor`, `id_cliente`, `created_at`, `updated_at`) VALUES
(1, 9, 10, '2020-11-11 21:49:56', '2020-11-11 21:49:56'),
(2, 10, 11, '2020-11-11 21:56:16', '2020-11-11 21:56:16'),
(4, 11, 12, '2020-11-11 23:19:22', '2020-11-11 23:19:22'),
(5, 12, 14, '2020-11-27 17:51:57', '2020-11-27 17:51:57'),
(6, 13, 15, '2020-11-27 19:37:50', '2020-11-27 19:37:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conversas`
--

CREATE TABLE `conversas` (
  `id` int(11) NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conversas`
--

INSERT INTO `conversas` (`id`, `id_vendedor`, `id_cliente`, `id_produto`, `created_at`, `updated_at`) VALUES
(13, 10, 13, 17, '2020-11-17 19:17:25', '2020-11-17 19:17:25'),
(14, 10, 13, 17, '2020-11-17 19:35:10', '2020-11-17 19:35:10'),
(15, 10, 14, 28, '2020-11-27 17:49:49', '2020-11-27 17:49:49'),
(16, 10, 14, 28, '2020-11-27 18:08:55', '2020-11-27 18:08:55'),
(17, 11, 14, 22, '2020-11-27 18:25:08', '2020-11-27 18:25:08'),
(18, 11, 14, 22, '2020-11-27 18:33:21', '2020-11-27 18:33:21'),
(19, 10, 11, 19, '2020-11-27 18:45:16', '2020-11-27 18:45:16'),
(20, 11, 14, 21, '2020-11-27 18:52:31', '2020-11-27 18:52:31'),
(21, 10, 14, 26, '2020-11-27 19:20:17', '2020-11-27 19:20:17'),
(22, 11, 15, 22, '2020-11-27 19:36:28', '2020-11-27 19:36:28'),
(23, 10, 15, 17, '2020-11-27 19:51:22', '2020-11-27 19:51:22'),
(24, 10, 11, 19, '2020-11-27 20:10:02', '2020-11-27 20:10:02'),
(25, 10, 11, 20, '2020-11-27 20:27:25', '2020-11-27 20:27:25'),
(26, 10, 11, 25, '2020-11-27 21:15:19', '2020-11-27 21:15:19'),
(27, 10, 11, 18, '2020-11-27 21:37:38', '2020-11-27 21:37:38'),
(28, 11, 11, 22, '2020-11-27 21:46:12', '2020-11-27 21:46:12'),
(29, 10, 11, 18, '2020-11-27 22:00:04', '2020-11-27 22:00:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `uf` varchar(255) NOT NULL,
  `codigo` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `nome`, `uf`, `codigo`, `created_at`, `updated_at`) VALUES
(1, 'Amazonas', '', 13, '2020-08-01 00:00:00', '2020-08-01 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `id_conversa` int(11) DEFAULT NULL,
  `author` enum('cliente','vendedor') DEFAULT 'cliente',
  `texto` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `id_conversa`, `author`, `texto`, `created_at`, `updated_at`) VALUES
(19, 13, 'cliente', 'olá estou interessado em seu produto!', '2020-11-17 19:17:25', '2020-11-17 19:17:25'),
(20, 13, 'vendedor', 'ok', '2020-11-17 19:18:18', '2020-11-17 19:18:18'),
(21, 14, 'cliente', 'olá estou interessado em seu produto!', '2020-11-17 19:35:10', '2020-11-17 19:35:10'),
(22, 15, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 17:49:49', '2020-11-27 17:49:49'),
(23, 16, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 18:08:55', '2020-11-27 18:08:55'),
(24, 15, 'cliente', 'vejamos', '2020-11-27 18:09:05', '2020-11-27 18:09:05'),
(25, 17, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 18:25:08', '2020-11-27 18:25:08'),
(26, 18, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 18:33:21', '2020-11-27 18:33:21'),
(27, 18, 'cliente', 'OI', '2020-11-27 18:33:39', '2020-11-27 18:33:39'),
(28, 18, 'vendedor', 'OK', '2020-11-27 18:34:17', '2020-11-27 18:34:17'),
(29, 19, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 18:45:16', '2020-11-27 18:45:16'),
(30, 19, 'cliente', 'olá', '2020-11-27 18:45:31', '2020-11-27 18:45:31'),
(31, 20, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 18:52:31', '2020-11-27 18:52:31'),
(32, 20, 'cliente', 'eai?', '2020-11-27 18:52:44', '2020-11-27 18:52:44'),
(33, 21, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 19:20:17', '2020-11-27 19:20:17'),
(34, 22, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 19:36:29', '2020-11-27 19:36:29'),
(35, 22, 'cliente', 'oi', '2020-11-27 19:36:36', '2020-11-27 19:36:36'),
(36, 23, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 19:51:22', '2020-11-27 19:51:22'),
(37, 23, 'cliente', 'oi', '2020-11-27 19:51:29', '2020-11-27 19:51:29'),
(38, 24, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 20:10:02', '2020-11-27 20:10:02'),
(39, 24, 'cliente', 'eai?', '2020-11-27 20:10:17', '2020-11-27 20:10:17'),
(40, 24, 'cliente', 'eai?', '2020-11-27 20:10:18', '2020-11-27 20:10:18'),
(41, 23, 'vendedor', 'eai?', '2020-11-27 20:13:17', '2020-11-27 20:13:17'),
(42, 25, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 20:27:25', '2020-11-27 20:27:25'),
(43, 25, 'cliente', 'blz', '2020-11-27 20:27:33', '2020-11-27 20:27:33'),
(44, 25, 'vendedor', 'fd', '2020-11-27 20:28:06', '2020-11-27 20:28:06'),
(45, 17, 'cliente', 't5', '2020-11-27 20:37:04', '2020-11-27 20:37:04'),
(46, 24, 'vendedor', 'oi', '2020-11-27 20:50:59', '2020-11-27 20:50:59'),
(47, 26, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 21:15:19', '2020-11-27 21:15:19'),
(48, 27, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 21:37:38', '2020-11-27 21:37:38'),
(49, 28, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 21:46:12', '2020-11-27 21:46:12'),
(50, 29, 'cliente', 'olá estou interessado em seu produto!', '2020-11-27 22:00:04', '2020-11-27 22:00:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `local_entrega` varchar(255) NOT NULL,
  `qtd` int(11) NOT NULL,
  `datalimite` varchar(255) NOT NULL,
  `estado` enum('entregar','entregue','cancelado') DEFAULT 'entregar',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_produto`, `id_cliente`, `local_entrega`, `qtd`, `datalimite`, `estado`, `created_at`, `updated_at`, `id_vendedor`) VALUES
(11, 17, 13, 'texas', 1, '2020-11-20', 'cancelado', '2020-11-17 19:18:26', '2020-11-17 19:18:54', 10),
(12, 17, 13, 'texasretbgdf', 1, '', 'entregue', '2020-11-17 19:35:42', '2020-11-17 19:35:59', 10),
(13, 17, 13, 'texasretbgdf', 1, '2020-11-19', 'entregue', '2020-11-17 19:36:15', '2020-11-27 21:39:13', 10),
(14, 22, 14, 'jorge teixeira,rua 3', 4, '2020-11-28', 'entregar', '2020-11-27 18:34:48', '2020-11-27 18:34:48', 11),
(15, 17, 13, 'jorge teixeira,rua 3', 1, '2020-11-30', 'entregar', '2020-11-27 19:23:45', '2020-11-27 19:23:45', 10),
(16, 20, 11, 'jorge teixeira,rua 3', 3, '2020-12-05', 'entregar', '2020-11-27 20:28:29', '2020-11-27 20:28:29', 10),
(17, 17, 13, 'jorge teixeira,rua 3', 1, '2020-12-12', 'entregar', '2020-11-27 22:39:18', '2020-11-27 22:39:18', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco_produto` double NOT NULL,
  `destalhes_importantes` text DEFAULT NULL,
  `img_filename` varchar(255) DEFAULT 'https://res.cloudinary.com/dzf56esap/image/upload/v1599099814/Icones/IMAGEM_v0q50t.jpg',
  `quantidade` int(11) NOT NULL,
  `vendedor_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `n_positivos` int(11) DEFAULT 0,
  `n_negativos` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `estado` enum('vendido','vendendo') DEFAULT 'vendendo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome_produto`, `descricao`, `preco_produto`, `destalhes_importantes`, `img_filename`, `quantidade`, `vendedor_id`, `categoria_id`, `n_positivos`, `n_negativos`, `created_at`, `updated_at`, `estado`) VALUES
(17, 'Livro Sociologia', '            w\r\n        ', 22.5, '            w\r\n        ', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F99a7e1ea953f2992351d84fb26239aea.jpg', 20, 10, 18, 0, 0, '2020-11-11 22:50:46', '2020-11-27 17:11:13', 'vendendo'),
(18, 'Livros Didático Ramalho', 'w2d', 25.5, 'podemos negociar', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2Fe1f423a69a0516ec250a86bed44a71f6.jpg', 21, 10, 30, 2, 1, '2020-11-27 16:55:34', '2020-11-27 22:21:47', 'vendendo'),
(19, 'novo ramalho', '* não paga frete', 8.5, '*livro usado', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2Fd8072688d143a1c7009ff4e0ca3f0562.jpg', 2, 10, 27, 0, 0, '2020-11-27 17:07:18', '2020-11-27 17:07:18', 'vendendo'),
(20, 'livro história do Amazonas', 'frete gratis', 15, ' 2° mão', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F3bfacd39c7e3d481d88aad65c6284a7a.jpg', 3, 10, 30, 1, 0, '2020-11-27 17:10:33', '2020-11-27 20:27:22', 'vendendo'),
(21, 'canetas coloridas pacote', 'mais variedades na livraria lira', 6, '- feito de materiais reciclaveis', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2Fe316aae40940ce57a98b1823d12caa36.jpg', 100, 11, 7, 0, 0, '2020-11-27 17:15:42', '2020-11-27 17:15:42', 'vendendo'),
(22, 'caderno reciclavel', 'reciclavel', 3.5, 'frete gratis\r\n', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F91cf87b0a390c600c846a03f246092a1.jpg', 20, 11, 3, 3, 0, '2020-11-27 17:16:44', '2020-11-27 21:46:06', 'vendendo'),
(23, 'Post It de várias cores', '', 2, 'mais variações na livraria lira', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2Fb6f1cde533c70e7c7062dea2cdba8028.jpg', 12, 11, 18, 0, 0, '2020-11-27 17:18:57', '2020-11-27 17:18:57', 'vendendo'),
(25, 'Borracha simples', '            borracha da faber castell\r\n        ', 2.5, '            sem detalhes tecnicos\r\n        ', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F96e99d5fb6f0e03d62fa077d41b23e9b.jpg', 19, 10, 6, 1, 0, '2020-11-27 17:20:51', '2020-11-27 20:11:10', 'vendendo'),
(26, 'borracha para lapis', 'borracha que pode ser colocada na ponta do lapís', 15, 'sem detalhes tecnicos', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F64dd1e75c55be1a5791022951650083a.jpg', 12, 10, 6, 0, 0, '2020-11-27 17:22:24', '2020-11-27 17:22:24', 'vendendo'),
(28, 'Agrafador Azul', 'Agrafado também conhecido popularmente com pregador', 8.5, 'sem detalhes tecnicos', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F7fff31f2bb0d5cbea607186072064584.jpg', 20, 10, 4, 2, 0, '2020-11-27 17:31:03', '2020-11-27 18:08:41', 'vendendo'),
(30, 'livro gramática', '3r445t', 8, '5y55', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F36ac97b6510bf60195b767feb895d5cc.jpg', 3, 12, 30, 0, 0, '2020-11-27 18:13:35', '2020-11-27 18:13:35', 'vendendo'),
(31, 'livro gramática', '4R5T', 3.5, '6Y7', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F8687f78f87be684e0e5e31922420781e.jpg', 1, 12, 30, 0, 0, '2020-11-27 18:26:33', '2020-11-27 18:26:33', 'vendendo'),
(32, '2', '            3\r\n        ', 5.5, '            e4\r\n        ', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F96773c38fd0cfa2394930e04e9433a90.jpg', 3, 10, 17, 0, 0, '2020-11-27 18:37:45', '2020-11-27 20:29:26', 'vendendo'),
(33, 'soci', 'fhty', 10.5, 'iik', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2F947d2efaf57c18dbe9aa20be7c204d52.jpg', 1, 12, 30, 0, 0, '2020-11-27 19:22:46', '2020-11-27 19:22:46', 'vendendo'),
(34, 'boloacha', '            uyj\r\n        ', 20, '            ikmjikuhn\r\n        ', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/localImagem%2Fc818be453aa4b4e9abe4ecc245f4827f.jpg', 21, 10, 16, 0, 0, '2020-11-27 22:38:18', '2020-11-27 22:38:33', 'vendendo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub_categoria`
--

CREATE TABLE `sub_categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `pai_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `likes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sub_categoria`
--

INSERT INTO `sub_categoria` (`id`, `nome`, `descricao`, `slug`, `pai_id`, `created_at`, `updated_at`, `foto`, `likes`) VALUES
(1, 'agenda', 'anotar as coisas!', 'agenda', 5, '2020-04-22 00:00:00', '2020-09-10 19:44:13', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069634/imagem-categorias-sub/3_asik5g.jpg', 1),
(2, 'Canetas', 'teste de verificação!', 'canetas', 3, '2020-04-13 00:00:00', '2020-04-13 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069636/imagem-categorias-sub/17_ubojbo.jpg', 0),
(3, 'Caderno', 'Caderno', 'Caderno', 5, '2020-04-23 00:00:00', '2020-04-17 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069636/imagem-categorias-sub/18_lm59bz.jpg', 0),
(4, 'Agrafador', 'Um agrafador ou grampeador é uma ferramenta manual que permite agrafar folhas de papel ou cartão umas às outras através de um pequeno pedaço de arame em forma de U denominado de agrafo ou grampo. Existem atualmente vários tipos de agrafadores.', 'agrafador', 2, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069636/imagem-categorias-sub/19_gp7avl.jpg', 0),
(5, 'Apagador', 'Apagador é um artefato utilizado para apagar quadros escolares.\r\nÉ feito de um pedaço de madeira ou plástico, ao qual fica preso um pedaço de feltro (para quadros negros) ou lã (para quadros brancos), que é friccionado sobre o quadro branco quando se deseja remover dele a escrita, e se feito de forma errada ele ficará borrado, piorando seu uso.', 'apagador', 2, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069637/imagem-categorias-sub/20_dnntar.jpg', 0),
(6, 'Borracha Escolar', 'A borracha natural é o produto primário da coagulação do látex da seringueira (Hevea brasiliensis). Hoje, a borracha sintética, cotômero natural em algumas aplicações e complementar em outras, é produzida a partir de derivados de petróleo. Tanto uma como outra tem como polímero fundamental o poli-isopreno. A diferenciação se dá por adição de pigmentos e processos vulcanização com graus distintos. Há inúmeras aplicações industriais e domésticas obtidas a partir de métodos de industrialização, como a vulcanização, que modificam as características naturais especialmente quando adicionada de solventes.\r\nA borracha escolar é um objeto de uso escolar ou em escritório e seu principal uso é corrigir erros feitos com o lápis ou lapiseira.', 'borracha-escolar', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069635/imagem-categorias-sub/8_x2gjjy.jpg', 0),
(7, 'Caneta Esferográfica', 'Canetas esferográficas são um tipo de caneta cuja tinta envolve uma esfera rolante que desliza sobre a superfície destinada à escrita, disponível em várias cores.\r\n\r\nNa evolução da caneta, o uso de uma esfera na ponta possibilitou a distribuição constante e uniforme de tinta, e popularizou o uso deste instrumento de escrita ao mesmo tempo em que substituía com vantagem a caneta-tinteiro.\r\n\r\nCom a invenção da caneta as pessoas passaram a escrever cartas, postais e livros. Hoje em dia a caneta esferográfica é usada universalmente para escrever apontamentos e fazer testes.\r\n\r\n', 'caneta-esferografica', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069635/imagem-categorias-sub/7_nxbjup.jpg', 0),
(8, 'Caneta Hidrográfica', 'Caneta hidrográfica, marcador ou caneta de feltro é um tipo de caneta com ponta de diâmetro variável, cuja tinta umedece uma ponta de feltro usada para escrever e desenhar. É possível encontrar no mercado diversos tipos de canetas hidrográficas, para as mais diferentes aplicações, e com carga de tinta nas cores mais variadas.', 'caneta-hidrografica', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069634/imagem-categorias-sub/6_uhqrg1.jpg', 0),
(9, 'Clipe', 'Um clipe é uma pequena peça feita de metal ou plástico, utilizado geralmente para agrupar ou anexar papéis', 'clipe', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069634/imagem-categorias-sub/4_kywofa.jpg', 0),
(10, 'Compasso (geometria)', 'Compasso é um instrumento de desenho que faz arcos de circunferência. Também serve para marcar um segmento numa reta com comprimento igual a outro segmento dado, e resolver alguns tipos de problemas geométricos, como por exemplo construir um hexágono, ou achar o centro de uma circunferência.\r\n\r\nO compasso parabólico que conhecemos hoje foi inventado por Leonardo da Vinci.\r\n\r\nOs compassos comuns possuem uma ponta seca, em forma de agulha, que determina um ponto fixo no papel, e outra ponta dotada de um estilete de grafite para traçar a circunferência, tendo como centro a ponta seca.\r\n\r\nNos compassos usados em Desenho Técnico, a ponta de grafite pode ser substituída por um adaptador, que permite acoplar uma lapiseira ou caneta. Outro acessório destes compassos é o tira-linhas, um instrumento que funciona como uma espécie de bico de pena. É semelhante a uma fina pinça, com um parafuso que permite regular a distância entre as pontas. Deposita-se uma gota de tinta nanquim entre as pontas da pinça, e em seguida se traça a circunferência.', 'compasso', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069635/imagem-categorias-sub/9_i6trud.jpg', 0),
(11, 'Flipchart', 'Flipchart ou bloco de cavalete (conhecido no Brasil como tripé ou cavalete) é um tipo de quadro, usado geralmente para exposições didáticas ou apresentações, em que fica preso um bloco de papéis. Deste modo, quando o quadro está cheio, o apresentador simplesmente vira a folha (em inglês, flip), sem perder tempo apagando o quadro.', 'flipchart', 5, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069634/imagem-categorias-sub/2_kv318t.jpg', 0),
(12, 'Giz de cera', 'Giz de cera (português brasileiro) ou lápis de cera (português europeu) é um material escolar, usado principalmente para desenhar, constituído principalmente por parafina, pigmentos e cargas, apresentando uma vasta variedades de cores, graças a mistura de seus corantes. Geralmente, é um material usado para a realização de esboços.\r\nO desenho com giz de cera traz algumas vantagens: as cores não ficam amareladas com a passagem do tempo, é um material mais estável do que o pastel, permite uma variação de cores enorme. O aspecto negativo é que o uso das barras de giz de cera dificulta a execução de detalhes no desenho.', 'giz-de-cera', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069637/imagem-categorias-sub/21_x2v6k1.jpg', 0),
(13, 'Lápis', 'Um lápis é um instrumento concebido para marcar, riscar e até mesmo cortar superfícies. A acepção mais comum do termo atrela-se a um instrumento utilizado para escrever, desenhar ou mesmo riscar papel; usualmente construído através de um estilete de grafite revestido de madeira - o tradicional lápis de escrever preto. Mudando-se o material do estilete, produzem-se de forma similar lápis de várias cores distintas.', 'lapis', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069636/imagem-categorias-sub/16_anw5pi.jpg', 0),
(14, 'Lápis de cor', 'Lápis de cor é uma variedade de lápis utilizada para pintura e afins, principalmente no ambiente escolar. Normalmente são comercializados em embalagens contendo 6,8, 12,18, 24, 36, 48 ou 120 unidades de cores diferentes. Contudo, ao invés de conter uma mina de grafite em seu interior, os lápis de cor são preenchidos com minas de barro, goma, cera e pigmentos coloridos.', 'lapis-de-cor', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069636/imagem-categorias-sub/15_mwuihi.jpg', 0),
(15, 'Régua', 'Régua é um instrumento utilizado em geometria, próprio para traçar segmentos de reta e medir distâncias pequenas. Também é incorporada no desenho técnico e na Engenharia. É composta por uma lâmina de madeira, plástico ou metal e pode conter uma escala, geralmente centimétrica e milimétrica.', 'regua', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069636/imagem-categorias-sub/14_mcihxb.jpg', 0),
(16, 'Tira-Linhas', 'O tira-linhas é um instrumento próprio para desenho técnico. É usado para realizar traços com tinta nanquim ou tinta da china ou outras tintas líquidas. Permite desenhar as linhas mais finas com precisão. A espessura da linha pode ser aumentada ou diminuída ajustando o parafuso que une as lâminas, que nalguns modelos apresenta uma escala numerada. É usado com auxilio de régua, de esquadro, e de régua \"T\", transferidor e outros tipos de réguas curvas e de formas.', 'tira-linhas', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069634/imagem-categorias-sub/5_dmrera.jpg', 0),
(17, 'Transferidor', 'Transferidor é um instrumento feito para medir ângulos composto por uma escala circular, ou de seções de círculo, dividida e marcada em ângulos espaçados regularmente, tal qual numa régua. Seu uso é diversificado tendo emprego em educação, matemática, engenharia, topografia, construção e diversas outras atividades que requeiram o uso e a medição de ângulos com precisão.', 'transferidor', 3, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069635/imagem-categorias-sub/10_hpakfn.jpg', 0),
(18, 'Post-it', 'Essa é uma opção versátil para anotar lembretes, podendo ser fixada no computador, paredes, divisórias, etc. Também pode ser utilizada em reuniões para a visualização de projetos, por exemplo no modelo canvas.\r\nPost-It é uma marca registada da 3M Company que identifica um tipo de bloco de notas composto por pequenas folhas de papel adesivo, de várias dimensões, formas e cores, e que são vendidas em blocos de várias folhas pegadas entre si.', 'post-it', 5, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069635/imagem-categorias-sub/11_oo52ot.jpg', 0),
(19, 'Blocos de notas e agendas', 'Agenda é um pequeno caderno onde o usuário faz as anotações de compromissos e horários e informações diversas.\r\nÉ uma ferramenta pessoal e geralmente têm a validade de um ano; após este período podem ser mantidas como arquivo.', 'bloco-de-notas-e-agendas', 5, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069635/imagem-categorias-sub/12_xeplj6.jpg', 0),
(20, 'Pastas, Fichários, Pasta de papel', 'Pastas fichário, pastas de papel, pastas-dobra, pastas-bolso… São diversos os modelos de pastas existentes e todos eles podem auxiliar na organização dos muitos documentos que são gerados escritório diariamente.', 'pasta-fichario-pasta-de-papel', 5, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069636/imagem-categorias-sub/13_aqf0pz.jpg', 0),
(21, 'Envelope', 'Um envelope ou sobrescrito é uma coberta de papel ou outro material para guardar cartas, documentos ou impressos de qualquer outra natureza para enviar pelos correios. O envelope é feito de forma para que possa se colocar as informações referentes ao destinatário (na frente do envelope, lado sem aba) e ao remetente (atrás do envelope, lado com aba). Por isso a parte frontal é lisa, com as dobras do papel sempre para trás.', 'envelope', 5, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069634/imagem-categorias-sub/1_oabmkt.jpg', 0),
(22, 'Mochila Escolar Feminina', 'Uma mochila é, em sua forma mais simples, um saco de lona ou tecido sintético resistente que é carregado nas costas de uma pessoa, e apoiada através de duas alças que passam por cima dos ombros. Utilizada por soldados, excursionistas, escolares, etc. para transportar artigos de uso pessoal, provisões, material e itens variados. Foi criada originalmente na África antiga, feita de peles de animais.', 'mochila-escolar-femenina', 4, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069637/imagem-categorias-sub/25_al4vwg.jpg', 0),
(23, 'Mochila Escolar Masculina', 'Uma mochila é, em sua forma mais simples, um saco de lona ou tecido sintético resistente que é carregado nas costas de uma pessoa, e apoiada através de duas alças que passam por cima dos ombros. Utilizada por soldados, excursionistas, escolares, etc. para transportar artigos de uso pessoal, provisões, material e itens variados. Foi criada originalmente na África antiga, feita de peles de animais.', 'mochila-escolar-masculina', 4, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069637/imagem-categorias-sub/24_hss4l5.jpg', 0),
(24, 'Papel A4', 'O padrão internacional ISO 216, de 1975, define os tamanhos de papel utilizados em quase todos os países, com exceção de EUA e Canadá. Em particular, são definidas as séries A, B e C, das quais faz parte o formato A4, de uso comum.', 'papel-a4', 5, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069637/imagem-categorias-sub/23_amq312.jpg', 0),
(25, 'Carimbo', 'Carimbo (do quimbundo \"kirimbu\", significando marca) é o instrumento com o qual se marcam papéis a tinta.\r\nO carimbo é uma forma de garantir autenticidade a documentos. Ele é de extrema importância na assinatura de contratos, assim como para profissionais que precisam identificar sua inscrição em associação profissional, como médicos, engenheiros, advogados, etc.', 'carimbo', 2, '2020-06-06 00:00:00', '2020-06-06 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599069637/imagem-categorias-sub/22_rfa2sz.jpg', 0),
(27, 'Livro Paradidático', 'o livro paradidático é um recurso utilizado para enriquecer o conhecimento dos alunos. Ele promove o aprofundamento e/ou de especialização dos conteúdos que o livro didático pode não dar conta de alcançar.', 'livro-paradidatico', 1, '2020-11-17 00:00:00', '2020-11-17 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/1_tybbie.png', 22),
(28, 'Literatura de ficção', 'A escrita de ficção é a composição de textos em prosa não factuais. A escrita ficcional muitas vezes é produzida como uma história destinada a entreter ou transmitir o ponto de vista do autor. Freqüentemente, os autores de ficção Ignoram a física ao escrever sobre esses tipos de assuntos.', 'literatura-de-ficcao', 1, '2020-11-17 00:00:00', '2020-11-17 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/1_tybbie.png', 291),
(29, 'Livros científicos ou de não-ficção', 'Não-ficção é uma descrição ou representação de um assunto que é apresentado como fato. Esta representação pode ser precisa ou não; isto é, pode fornecer uma descrição verdadeira ou falsa do assunto em questão. Todavia, geralmente assume-se que os autores de tais relatos acreditavam que eles eram verdadeiros na época em que foram criados.', 'livros-cientificos-ou-de-nao-ficcao', 1, '2020-09-09 00:00:00', '2020-06-09 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/1_tybbie.png', 289),
(30, 'Livro didático', 'Surgiu como complemento aos livros clássicos, utilizados na escola, inicialmente buscando ajudar na alfabetização e na divulgação das ciências, história e filosofia.', 'livro-didatico', 1, '2020-11-27 00:00:00', '2020-11-27 00:00:00', 'https://res.cloudinary.com/dzf56esap/image/upload/v1598452845/imagem-categorias-sub/1_tybbie.png', 1890);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `nome_profissional_responsavel` varchar(255) NOT NULL,
  `nome_empresa` varchar(255) NOT NULL,
  `data_nascimento_vendedor` datetime NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `site_profissional_empresa` varchar(255) DEFAULT 'NÃO INSERIDO',
  `e_mail` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `dados_profissionais` text DEFAULT NULL,
  `cep` varchar(255) DEFAULT 'NÃO INSERIDO',
  `complemento_endereco` text DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT 'NÃO INSERIDO',
  `bairro_cidade_estado` int(11) DEFAULT NULL,
  `n_positivos` int(11) DEFAULT 0,
  `n_negativos` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `foto_perfil` varchar(255) DEFAULT 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg',
  `nome_img_perfil` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendedores`
--

INSERT INTO `vendedores` (`id`, `nome_profissional_responsavel`, `nome_empresa`, `data_nascimento_vendedor`, `cpf`, `site_profissional_empresa`, `e_mail`, `senha`, `dados_profissionais`, `cep`, `complemento_endereco`, `logradouro`, `bairro_cidade_estado`, `n_positivos`, `n_negativos`, `created_at`, `updated_at`, `foto_perfil`, `nome_img_perfil`) VALUES
(9, 'Pedro Henrique', 'www.google.com', '2003-06-05 04:00:00', '104.067.010-86', 'Goku', 'pedro@gmail.com', 'pedropedro', 'sem nenhum', '69087-380', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanês', 1, 0, 0, '2020-11-11 21:49:56', '2020-11-11 21:49:56', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_usuario%2F7846e69d2bf6817d561bd61fbac1263c.jpg', ''),
(10, 'Flavio Martins', 'Flaviada', '2000-06-05 07:33:00', '111.098.459-08', 'www.Faviolmateriais.com', 'flavio@gmail.com', 'flavioflavio', 'sokwq', '69087-380', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanês', 17, 0, 0, '2020-11-11 21:56:16', '2020-11-27 22:26:03', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_vendedor%2Fd0829252dc27de74f8ca8a01df1639e8.jpg', '51cdb54040645e01b28c21454112672b'),
(11, 'Teste02', 'GokuTestando ', '2001-01-01 04:11:00', '232.012.110-90', 'www.gokuteste0228.com', 'gokutestando123456@gmail.com', 'gokugoku', 'qaqwxdwsaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '69087-380', 'Próximo a escola Jorge de Rezende', 'sqw qaswq kqnflf epore', 19, 0, 0, '2020-11-11 23:11:24', '2020-11-11 23:11:24', 'http://storage.googleapis.com/mega-livros-b57dd.appspot.com/img_perfil_vendedor%2F9e68a8d653c6b976b879adc5e414d7a4.jpg', '38200684674cac6f76c8cff77b7fa635'),
(12, 'Pedro Henrique Martins', 'www.pedrovendas.com', '2003-06-05 14:50:00', '004.890.678-98', 'www.google.com', 'pedroh93601@gmail.com', 'Pedroh92985512', '23es3r', '69087-380', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanez', 1, 0, 0, '2020-11-27 17:51:57', '2020-11-27 18:14:09', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg', ''),
(13, 'Kamily Mello', 'Papeliax', '2005-01-12 04:00:00', '000.000.000-00', 'www.google.com', 'kamili@gmail.com', '12345678', 'vendo papeis e tenho oculos', '69087-380', 'Próximo a escola Jorge de Rezende', 'Rua Doutor Gallo Ibanez', 1, 0, 0, '2020-11-27 19:37:49', '2020-11-27 19:37:59', 'https://res.cloudinary.com/dzf56esap/image/upload/v1599095674/Icones/__rlmwke.jpg', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cidade` (`cidade`);

--
-- Índices para tabela `categoria_produtos`
--
ALTER TABLE `categoria_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado` (`estado`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bairro_cidade_estado` (`bairro_cidade_estado`);

--
-- Índices para tabela `contasrelacionadas`
--
ALTER TABLE `contasrelacionadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices para tabela `conversas`
--
ALTER TABLE `conversas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_conversa` (`id_conversa`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produto` (`id_produto`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `pedidos_ibfk_3` (`id_vendedor`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendedor_id` (`vendedor_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Índices para tabela `sub_categoria`
--
ALTER TABLE `sub_categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pai_id` (`pai_id`);

--
-- Índices para tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bairro_cidade_estado` (`bairro_cidade_estado`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `categoria_produtos`
--
ALTER TABLE `categoria_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `contasrelacionadas`
--
ALTER TABLE `contasrelacionadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `conversas`
--
ALTER TABLE `conversas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `sub_categoria`
--
ALTER TABLE `sub_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `bairros`
--
ALTER TABLE `bairros`
  ADD CONSTRAINT `bairros_ibfk_1` FOREIGN KEY (`cidade`) REFERENCES `cidades` (`id`);

--
-- Limitadores para a tabela `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `cidades_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`bairro_cidade_estado`) REFERENCES `bairros` (`id`);

--
-- Limitadores para a tabela `contasrelacionadas`
--
ALTER TABLE `contasrelacionadas`
  ADD CONSTRAINT `contasrelacionadas_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id`),
  ADD CONSTRAINT `contasrelacionadas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);

--
-- Limitadores para a tabela `conversas`
--
ALTER TABLE `conversas`
  ADD CONSTRAINT `conversas_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id`),
  ADD CONSTRAINT `conversas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `conversas_ibfk_3` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`);

--
-- Limitadores para a tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD CONSTRAINT `mensagens_ibfk_1` FOREIGN KEY (`id_conversa`) REFERENCES `conversas` (`id`);

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`vendedor_id`) REFERENCES `vendedores` (`id`),
  ADD CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `sub_categoria` (`id`);

--
-- Limitadores para a tabela `sub_categoria`
--
ALTER TABLE `sub_categoria`
  ADD CONSTRAINT `sub_categoria_ibfk_1` FOREIGN KEY (`pai_id`) REFERENCES `categoria_produtos` (`id`);

--
-- Limitadores para a tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD CONSTRAINT `vendedores_ibfk_1` FOREIGN KEY (`bairro_cidade_estado`) REFERENCES `bairros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
