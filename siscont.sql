-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jul-2024 às 14:58
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `siscont`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiscals`
--

CREATE TABLE `fiscals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unidade_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matricula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fiscals`
--

INSERT INTO `fiscals` (`id`, `unidade_id`, `nome`, `email`, `matricula`, `created_at`, `updated_at`) VALUES
(2, 23, 'MANOEL WILKER ALVES DA SILVA', 'wilker.silva@codevasf.gov.br', '10852-04', '2024-07-08 18:02:23', '2024-07-08 18:02:23'),
(3, 6, 'JOSINEIDE VIANA DE CARVALHO ALVES', 'josi.viana@codevasf.gov.br', NULL, '2024-07-08 18:06:18', '2024-07-08 18:06:18'),
(7, 9, 'AECIO MOTA DE SOUSA', NULL, '12015-06', '0000-00-00 00:00:00', '2024-07-08 20:18:48'),
(8, 0, 'AGENÁRIO CHAGAS PESSOA', '', '3823-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 0, 'ALEXANDRE MAGNO BOTELHO BAGETTI', '', '10156-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 16, 'ALEXINALDO LEDA DE SOUZA', NULL, '11145-06', '0000-00-00 00:00:00', '2024-07-08 20:19:09'),
(11, 26, 'AMANDA CAMPELO BATISTA', NULL, '12253-08', '0000-00-00 00:00:00', '2024-07-08 20:19:29'),
(12, 0, 'ANTONIO DE MIRANDA', '', '3101-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 0, 'ANTONIO MARINHO FILHO', '', '5097-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 0, 'ANTONIO PAULO LOPES', '', '9158-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 27, 'ARIANA BERTHIANN BARROS DE ASSIS', NULL, '10062-07', '0000-00-00 00:00:00', '2024-07-08 20:20:44'),
(16, 0, 'ARIMATÉA ARAÚJO NUNES', '', '11331-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 0, 'AUGUSTO CEZAR DE FRANÇA LUCENA', '', '8574-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 0, 'AURINO ASSIS SANTOS', '', '3366-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 0, 'CARPEGIANE SODRÉ DE ARAÚJO', '', '10911-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 0, 'CÍCERO BARBOSA DE SOUSA', '', '11201-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 0, 'CLARA EDUANA ROCHA SOARES ', '', '11934-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 0, 'CLÁUDIO BALTAZAR SILVA DIAS', '', '10157-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 0, 'DANIELA BARBOSA ANDRADE RODRIGUES SILVEIRA', '', '11365-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 0, 'DÉBORA LOUISE BARROS SILVA', '', '11791-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 0, 'DJAN FERREIRA DA SILVA', '', '10182-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 0, 'EDILÁZIO WANDERLEY DE LIMA FILHO', '', '12223-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 0, 'EDMILSON FERREIRA DE LIMA', '', '3005-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 0, 'EDMUNDO MANOEL DA SILVA', '', '3820-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 0, 'ELIJALMA AUGUSTO BESERRA', '', '10154-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 0, 'ELISABETH CRISTINA DE SANTANA SILVA', '', '11300-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 0, 'EMILIANO DIAS FILHO', '', '7864-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 0, 'EPIFÂNIO ALVES FERREIRA', '', '3014-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 0, 'ESPEDITO BORGES NUNES', '', '2982-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 0, 'EVANILDO GOMES COELHO', '', '0995-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 0, 'EXPEDITO PEREIRA FILHO', '', '10164-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 0, 'FABRÍCIO MARQUES RODRIGUES', '', '11361-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 0, 'FELIPE EDUARDO SOARES DE ANDRADE', '', '11966-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 0, 'FERNANDO RIOS CAMPELO FILHO', '', '4809-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 0, 'FLÁVIO AUGUSTO REITHLER DA SILVA E SOUZA', '', '10196-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 0, 'FLÁVIO JOSÉ GOMES CABRAL', '', '3053-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 0, 'FRANCELIO PEREIRA DE SOUSA ', '', '10879-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 0, 'FRANCISCLEBER NUNES DE CARVALHO', '', '11293-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 0, 'FRANCISCO ALMEIDA OLIVEIRA', '', '1773-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 0, 'FRANCISCO ASSIS DE ALMEIDA', '', '0706-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 0, 'FRANCISCO DE ASSIS BEDOR LIMA', '', '3029-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 0, 'FRANCISCO DE ASSIS SOARES DOS SANTOS', '', '3042-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 0, 'FRANCISCO FELIPE DE ALENCAR', '', '3427-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 0, 'FRANCISCO JOSÉ DE SOUZA REIS', '', '7597-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 0, 'FRANKLIN DELANO LEITE GURGEL', '', '3735-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 0, 'GERVILSON JARDEL GONÇALVES DUARTE', '', '9312-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 0, 'GILBERTO ALVES DA MOTA', '', '3116-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 0, 'GILBERTO GONÇALVES VALENÇA', '', '3061-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 0, 'GILDEMAR DE OLIVEIRA SANTOS', '', '8099-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 0, 'GIOVANI BARBOSA JUNIOR', '', '8020-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 0, 'GIULIANO MARCONDES LADEIRA', '', '10064-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 0, 'GLAUBER D\'AVILA SANTANA ', '', '11779-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 0, 'HILDEBRANDO RODRIGUES FILHO', '', '3045-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 0, 'IDILIO ALVES DOS SANTOS', '', '0998-05 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 0, 'IDIVALDO SANTOS PEREIRA', '', '10770-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 0, 'IRINEU ELIAS DO NASCIMENTO', '', '1820-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 0, 'IVONALDO DE SOUSA LACERDA', '', '11131-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 0, 'IZAAC DAMASCENO PEQUENO', '', '10817-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 0, 'JAIR MOREIRA FILHO', '', '11091-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 0, 'JAQUES JOSÉ DA SILVA SOUZA', '', '8972-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 0, 'JEONES MARINHO SIQUEIRA', '', '10439-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 0, 'JOÃO GALDINO DA COSTA', '', '2988-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 0, 'JOÃO PAULO BASTOS DE ANDRADE', '', '11296-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 0, 'JOÃO PAULO DE SOUSA SANTOS', '', '10155-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 0, 'JOÃO TITO COTA LOPES', '', '10153-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 0, 'JOAQUIM DEOLINDO RAMOS DE CASTRO', '', '8055-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 0, 'JOSÉ CARLOS CARVALHO DA SILVA', '', '2264-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 0, 'JOSÉ COSTA BARROS', '', '10697-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 0, 'JOSÉ DE ARAUJO BARROS JÚNIOR', '', '11181-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 0, 'JOSÉ DE SOUZA GOMES FILHO ', '', '7372-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 0, 'JOSÉ GERALDO MEIRELES', '', '11295-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 0, 'JOSÉ GIOVANI LEITE', '', '8973-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 0, 'JOSÉ MANOEL DE GOIS', '', '3044-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 0, 'JOSÉ NOVAES DINIZ CARVALHO', '', '3875-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 0, 'JOSÉ SINÉSIO HERCULANO E SILVA', '', '3599-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 0, 'JOSÉ WILSON DOS SANTOS PLUTARCO ', '', '3463-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 0, 'JOSELÂNDIA RODRIGUES BEZERRA CORDEIRO', '', '9987-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 0, 'JOSINEIDE VIANA DE CARVALHO ALVES', '', '9197-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 0, 'JULIA ISABEL PONTES', '', '12177-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 0, 'JUSTINO RODRIGUES DA SILVA', '', '1004-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 0, 'JUVENILSON RODRIGUES DE ANDRADE', '', '1508-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 0, 'LEANDRO SILVA DE MORAES ', '', '11964-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 0, 'LEONARDO LUIZ CRUZ DA SILVA', '', '10158-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 0, 'LEONARDO NUNES LYRA', '', '9386-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 0, 'LHAUA BARBOSA PEREIRA DE MIRANDA', '', '12270 -09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 0, 'LORENA CAMILA BISPO DOS SANTOS', '', '11291-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 0, 'LOURIVAL RIBEIRO', '', '1195-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 0, 'LUANNA THALIA DA SILVA LIRA', '', '12227-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 0, 'LUCAS EDUARDO RIBEIRO LIMA', '', '11924-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 0, 'LUCAS MATEUS FONTENELE DE OLIVEIRA', '', '12366-0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 0, 'LUIS EDUARDO SANTANA MATIAS FROTA ', '', '7433-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 0, 'LUIZ CAMILO DE MELO SILVA', '', '12222-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 0, 'LUZIA DE LOURDES ALVES RODRIGUES', '', '3937-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 0, 'LUZIA MARIA MARTINS ARAUJO', '', '3978-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 0, 'MANOEL MESSIAS GOMES', '', '7826-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 0, 'MANOEL WILKER ALVES DA SILVA', '', '10852-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 0, 'MARCELO ROBERTO DOS SANTOS BARBALHO', '', '7434-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 0, 'MÁRCIA FERREIRA ALEX', '', '2261-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 0, 'MARIA DA PENHA RODRIGUES', '', '0170-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 0, 'MARIA DE FATIMA SANTANA GAMA', '', '2059-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 0, 'MARIA HELENA AURÉLIO DE LIMA', '', '11190-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 0, 'MARIA LUCIA SANTOS PEREIRA LIMA', '', '2906-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 0, 'MARIA MARY DE MENEZES', '', '2257-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 0, 'MARIA PEDRINA DE SOUSA ', '', '1169-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 0, 'MARIA REJANA DE SANTANA ', '', '9542-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 0, 'MARIA RUTH DO NASCIMENTO', '', '8875-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 0, 'MAURI RODRIGUES LUNA', '', '3603-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 0, 'MAURILIO MOURA REIS', '', '0515-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 0, 'MAXIMEANO JOSÉ DE MARIA', '', '3104-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 0, 'MAXWELL RODRIGO LIMA TAVARES SAMPAIO', '', '10926-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 0, 'MIGUEL ANGELO MELLO MATTOS SHAW DA SILVA', '', '7947-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 0, 'MILRION GOMES MARTINS', '', '11787-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 0, 'NATERCIO MELO', '', '0522-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 0, 'OLGA SANTANA GUIMARÃES MORAIS', '', '12240-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 0, 'OTILIA MARIA SOARES GOMES ARAUJO', '', '12213-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 0, 'PAULO CIPRIANO DOS SANTOS', '', '3740-08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 0, 'PAULO HENRIQUE PEREIRA DA CRUZ', '', '1207806', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 0, 'PAULO INACIO PRYSTHON DE MELLO', '', '12214-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 0, 'PAULO JOSÉ DA SILVA', '', '3423-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 0, 'PAULO ROBERTO DA SILVA', '', '3889-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 0, 'PAULO VIANA DE GOIS', '', '1013-03 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 0, 'PEDRO IVO AQUINO LEITE SALA ', '', '11943-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 0, 'RAFAEL BARBOSA DA SILVA', '', '12215-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 0, 'RAIMUNDO FERREIRA DO NASCIMENTO', '', '3051-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 0, 'RAIMUNDO NONATO PEREIRA', '', '1814-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 0, 'REJANE MOREIRA DINIZ DE OLIVEIRA', '', '10512-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 0, 'RENATO DIAS DA SILVA', '', '2985-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 0, 'RENATO SANDRO ALVES FERREIRA', '', '7610-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 0, 'ROBERTA FREIRE D AGUIAR DE ALMEIDA', '', '10296-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 0, 'ROBERTO DIAS PINHEIRO ', '', '1816-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 0, 'ROGER RANIELE MANIÇOBA SANTANA', '', '9573-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 0, 'ROSEMEIRE DE SENNA FERREIRA', '', '11328-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 0, 'ROZZANNO ANTONIO CAVALCANTI REIS DE FIGUEIREDO', '', '8069-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 0, 'SAMIR COELHO CUNHA', '', '9313-06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 0, 'SÁVIO TÚLIO DE SÁ AGUIAR SILVA ', '', '11862-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 0, 'SEBASTIÃO MATIAS DA SILVA ', '', '3058-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 0, 'SHEILA LORENA DUTRA PEREIRA DE OLIVEIRA', '', '12037-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 0, 'SILVIO DURAN FERNANDEZ', '', '9040-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 0, 'TAYNÁ BARBOSA CORREIA', '', '11841-05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 0, 'THIAGO EMANUEL DE CARVALHO PEREIRA', '', '11897-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 0, 'TIAGO CAVALCANTE ARAÚJO', '', '10063-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 0, 'TIAGO MARINHO NETO', '', '3099-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 0, 'VALDENICIO NUNES ARAUJO', '', '3115-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 0, 'VALMIR RODRIGUES DE SANTANA', '', '3766-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 0, 'VANESSA THAYSA GONDIM DE QUEIROZ', '', '12285-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 0, 'VICTOR MIGUEL OLIVEIRA MARTIN', '', '11179-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 0, 'WELLISON DA SILVA ARAÚJO', '', '11172-03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 0, 'WIDEMAR BARBOSA CAMPOS', '', '3765-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 0, 'YASMIM RODRIGUES DE MENEZES', '', '12183-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instrumentos`
--

CREATE TABLE `instrumentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fiscal_id` bigint(20) UNSIGNED NOT NULL,
  `tipo` enum('Contrato','Convênio','Carta Contrato','Ordem de Fornecimento','Ordem de Serviço','Termo de Parceria','Termo de Cooperação Técnica','Contrato de Cessão') COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_sigec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_transferegov` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celebracao` date DEFAULT NULL,
  `vigencia` date DEFAULT NULL,
  `objeto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beneficiarios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valor_global` double(10,2) DEFAULT NULL,
  `valor_empenhado` double(10,2) DEFAULT NULL,
  `valor_liquidado` double(10,2) DEFAULT NULL,
  `valor_pago` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `instrumentos`
--

INSERT INTO `instrumentos` (`id`, `fiscal_id`, `tipo`, `numero_sigec`, `numero_transferegov`, `celebracao`, `vigencia`, `objeto`, `latitude`, `longitude`, `entidade`, `beneficiarios`, `foto`, `status`, `valor_global`, `valor_empenhado`, `valor_liquidado`, `valor_pago`, `created_at`, `updated_at`) VALUES
(1, 18, 'Contrato', '3.0222.00/2024', '956252', '2024-07-10', '2024-07-23', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ip</p>', '526545', '52546456', 'WTECH ENGENHARIA DE SOFTWARE', 'POPULAÇÃO 100.00 HAB', 'fotos_instrumentos/01J29XVBNTS4VC9Z8FN2CD9BV9.png', 'Em Execução', 1000000.00, 1000000.00, 500000.00, 500000.00, '2024-07-08 22:41:37', '2024-07-08 22:41:37'),
(2, 15, 'Convênio', '3.0223.00/2024', '6523256', '2024-07-10', '2024-07-23', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ip</p>', '526545', '52546456', 'WTECH ENGENHARIA DE SOFTWARE', 'POPULAÇÃO 100.00 HAB', NULL, 'Em Execução', 1000000.00, 1000000.00, 500000.00, 500000.00, '2024-07-08 22:43:33', '2024-07-08 22:43:33'),
(3, 15, 'Convênio', '3.0223.00/2024', '6523256', '2024-07-10', '2024-07-23', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ip</p>', '526545', '52546456', 'WTECH ENGENHARIA DE SOFTWARE', 'POPULAÇÃO 100.00 HAB', NULL, 'Em Execução', 1000000.00, 1000000.00, 500000.00, 500000.00, '2024-07-08 22:44:32', '2024-07-08 22:44:32'),
(4, 15, 'Convênio', '3.0223.00/2024', '6523256', '2024-07-10', '2024-07-23', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ip</p>', '526545', '52546456', 'WTECH ENGENHARIA DE SOFTWARE', 'POPULAÇÃO 100.00 HAB', NULL, 'Em Execução', 1000000.00, 1000000.00, 500000.00, 500000.00, '2024-07-08 22:45:09', '2024-07-08 22:45:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instrumento_municipio`
--

CREATE TABLE `instrumento_municipio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instrumento_id` bigint(20) UNSIGNED NOT NULL,
  `municipio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `instrumento_municipio`
--

INSERT INTO `instrumento_municipio` (`id`, `instrumento_id`, `municipio_id`, `created_at`, `updated_at`) VALUES
(1, 4, 427, NULL, NULL),
(2, 4, 509, NULL, NULL),
(3, 4, 541, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesoregiaos`
--

CREATE TABLE `mesoregiaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `mesoregiaos`
--

INSERT INTO `mesoregiaos` (`id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Sertão do São Francisco', '<p>Sertão do São Francisco - 7 Municipios</p><p><strong>Afrânio, Cabrobó, Dormentes, Lagoa Grande, Orocó, Petrolina, Santa Maria da Boa Vista.</strong></p>', '2024-06-25 02:56:26', '2024-06-25 02:56:26'),
(2, 'Sertão do Araripe', '<p>Sertão do Araripe - 10 Municipios</p><p><strong>Araripina, Bodocó, Exu, Granito, Ipubi, Moreilândia, Ouricuri, Santa Cruz, Santa Filomena, Trindade.</strong></p><p><br><br></p>', '2024-06-25 02:57:13', '2024-06-25 02:57:13'),
(3, 'Sertão Central', '<p>Sertão Central - 8 Municipios</p><p><strong>Cedro, Mirandiba, Parnamirim, Salgueiro, São José do Belmonte, Serrita, Terra Nova, Verdejante.</strong></p><p><br><br></p>', '2024-06-25 02:57:35', '2024-06-25 02:57:35'),
(4, 'Sertão de Itaparica', '<p>Sertão de Itaparica - 7 Municipios</p><p><strong>Belém do São Francisco, Carnaubeira da Penha, Floresta, Itacuruba, Jatobá, Petrolândia, Tacaratu.</strong></p><p><br><br></p>', '2024-06-25 02:57:59', '2024-06-25 02:57:59'),
(5, 'Sertão do Pajeú', '<p>Sertão do Pajeú - 17 Municipios</p><p><strong>Afogados da Ingazeira, Brejinho, Calumbi, Carnaíba, Flores, Iguaracy, Ingazeira, Itapetim, Quixaba, Santa Cruz da Baixa Verde, Santa Terezinha, São José do Egito, Serra Talhada, Solidão, Tabira, Triunfo, Tuparetama.</strong></p><p><br><br></p>', '2024-06-25 02:58:23', '2024-06-25 02:58:23'),
(6, 'Sertão do Moxotó', '<p>Sertão do Moxotó - 7 Municipios</p><p><strong>Arcoverde, Betânia, Custódia, Ibimirim, Inajá, Manari, Sertânia.</strong></p><p><br><br></p>', '2024-06-25 02:58:50', '2024-06-25 02:58:50'),
(7, 'Agreste Meridional', '<p>Agreste Meridional - 26 Municipios</p><p><strong>Águas Belas, Angelim, Bom Conselho, Brejão, Buíque, Caetés, Calçado, Canhotinho, Capoeiras, Correntes, Garanhuns, Iati, Itaíba, Jucati, Jupi, Jurema, Lagoa do Ouro, Lajedo, Palmeirina, Paranatama, Pedra, Saloá, São João, Terezinha, Tupanatinga, Venturosa.</strong></p><p><br><br></p>', '2024-06-25 02:59:48', '2024-06-25 02:59:48'),
(8, 'Agreste Central', '<p>Agreste Central - 27 Municipios</p><p><strong>Agrestina, Alagoinha, Altinho, Barra de Guabiraba, Belo Jardim, Bezerros, Bonito, Brejo da Madre de Deus, Cachoeirinha, Camocim de São Félix, Caruaru, Cupira, Gravatá, Ibirajuba, Jataúba, Lagoa dos Gatos, Panelas, Pesqueira, Poção, Pombos - Agreste Central, Riacho das Almas, Sairé, Sanharó, São Bento do Una, São Caitano, São Joaquim do Monte, Tacaimbó.</strong></p><p><br><br></p>', '2024-06-25 03:00:09', '2024-06-25 03:00:09'),
(9, 'Zona da Mata', NULL, '2024-06-25 04:01:56', '2024-06-25 04:01:56'),
(10, 'Agreste Setentrional', '<p>Bom Jardim&nbsp; ,&nbsp; Casinhas&nbsp; ,&nbsp; Cumaru&nbsp; ,&nbsp; Feira Nova&nbsp; ,&nbsp; Frei Miguelinho&nbsp; ,&nbsp; João Alfredo&nbsp; ,&nbsp; Limoeiro&nbsp; ,&nbsp; Machados&nbsp; ,&nbsp; Orobo&nbsp; ,&nbsp; Passira&nbsp; ,&nbsp; Salgadinho&nbsp; ,&nbsp; Santa Cruz do Capibaribe&nbsp; ,&nbsp; Santa Maria do Cambuca&nbsp; ,&nbsp; São Vicente Férrer&nbsp; ,&nbsp; Surubim&nbsp; ,&nbsp; Taquaritinga do Norte&nbsp; ,&nbsp; Toritama&nbsp; ,&nbsp; Vertente do Lério , Vertentes</p>', '2024-07-08 17:15:33', '2024-07-08 17:17:30'),
(11, 'Mata Norte', NULL, '2024-07-08 17:16:04', '2024-07-08 17:16:04'),
(12, 'Mata Sul', '<p>Água Preta&nbsp; ,&nbsp; Amaraji&nbsp; ,&nbsp; Barreiros&nbsp; ,&nbsp; Belém de Maria&nbsp; ,&nbsp; Catende&nbsp; ,&nbsp; Chã Grande&nbsp; ,&nbsp; Cortes&nbsp; ,&nbsp; Escada ,&nbsp; Gameleira&nbsp; ,&nbsp; Jaqueira&nbsp; ,&nbsp; Joaquim Nabuco&nbsp; ,&nbsp; Maraial&nbsp; ,&nbsp; Palmares&nbsp; , &nbsp; Primavera&nbsp; ,&nbsp; Quipapá&nbsp; ,&nbsp; Ribeirão&nbsp; ,&nbsp; Rio Formoso&nbsp; ,&nbsp; São Benedito do Sul&nbsp; ,&nbsp; Sirinhaém&nbsp; ,&nbsp; São José da Coroa Grande&nbsp; ,&nbsp; Tamandaré&nbsp; ,&nbsp; Vitória de Santo Antão&nbsp; ,&nbsp; Xexéu.</p>', '2024-07-08 17:16:23', '2024-07-08 17:16:23'),
(13, 'Metropolitana', '<p>Abreu e Lima&nbsp; ,&nbsp; Aracoiaba&nbsp; ,&nbsp; Cabo de Santo Agostinho&nbsp; ,&nbsp; Camaragibe&nbsp; ,&nbsp; Fernando Noronha ,&nbsp; Igarassu&nbsp; ,&nbsp; Ipojuca&nbsp; ,&nbsp; Itamaracá&nbsp; ,&nbsp; Itapissuma ,&nbsp; Jaboatão dos Guararapes&nbsp; ,&nbsp; Moreno&nbsp; ,&nbsp; Olinda&nbsp; ,&nbsp; Paulista&nbsp; ,&nbsp; Recife&nbsp; ,&nbsp; São Lourenço da Mata.</p>', '2024-07-08 17:16:44', '2024-07-08 17:16:44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2024_06_10_135211_create_unidades_table', 1),
(22, '2024_06_10_135223_create_fiscals_table', 1),
(23, '2024_06_10_145952_create_mesoregiaos_table', 1),
(24, '2024_06_11_124452_create_instrumentos_table', 1),
(25, '2024_06_11_124515_create_municipios_table', 1),
(26, '2024_06_18_135257_create_monitoramentos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `monitoramentos`
--

CREATE TABLE `monitoramentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instrumento_id` bigint(20) UNSIGNED NOT NULL,
  `andamento` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dificuldades` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atores` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `providencias` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prazo` date DEFAULT NULL,
  `anexo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipios`
--

CREATE TABLE `municipios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mesorregiao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `municipios`
--

INSERT INTO `municipios` (`id`, `mesorregiao_id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(383, 13, 'Abreu e Lima', NULL, '0000-00-00 00:00:00', '2024-07-08 20:35:46'),
(384, 5, 'Afogados da Ingazeira', NULL, '0000-00-00 00:00:00', '2024-07-08 20:35:10'),
(385, 1, 'Afrânio', NULL, '0000-00-00 00:00:00', '2024-07-08 20:29:32'),
(386, 8, 'Agrestina', NULL, '0000-00-00 00:00:00', '2024-07-08 20:59:56'),
(387, 12, 'Água Preta', NULL, '0000-00-00 00:00:00', '2024-07-08 21:13:39'),
(388, 7, 'Águas Belas', NULL, '0000-00-00 00:00:00', '2024-07-08 20:53:17'),
(389, 8, 'Alagoinha', NULL, '0000-00-00 00:00:00', '2024-07-08 21:00:11'),
(390, 11, 'Aliança', NULL, '0000-00-00 00:00:00', '2024-07-08 21:27:54'),
(391, 8, 'Altinho', NULL, '0000-00-00 00:00:00', '2024-07-08 21:00:27'),
(392, 12, 'Amaraji', NULL, '0000-00-00 00:00:00', '2024-07-08 21:13:58'),
(393, 7, 'Angelim', NULL, '0000-00-00 00:00:00', '2024-07-08 20:53:32'),
(394, 13, 'Araçoiaba', NULL, '0000-00-00 00:00:00', '2024-07-08 21:35:46'),
(395, 2, 'Araripina', NULL, '0000-00-00 00:00:00', '2024-07-08 20:36:43'),
(396, 6, 'Arcoverde', NULL, '0000-00-00 00:00:00', '2024-07-08 20:51:15'),
(397, 8, 'Barra de Guabiraba', NULL, '0000-00-00 00:00:00', '2024-07-08 21:00:42'),
(398, 12, 'Barreiros', NULL, '0000-00-00 00:00:00', '2024-07-08 21:14:10'),
(399, 12, 'Belém de Maria', NULL, '0000-00-00 00:00:00', '2024-07-08 21:14:36'),
(400, 4, 'Belém do São Francisco', NULL, '0000-00-00 00:00:00', '2024-07-08 20:43:41'),
(401, 8, 'Belo Jardim', NULL, '0000-00-00 00:00:00', '2024-07-08 21:01:13'),
(402, 6, 'Betânia', NULL, '0000-00-00 00:00:00', '2024-07-08 20:51:26'),
(403, 8, 'Bezerros', NULL, '0000-00-00 00:00:00', '2024-07-08 21:01:25'),
(404, 2, 'Bodocó', NULL, '0000-00-00 00:00:00', '2024-07-08 20:38:34'),
(405, 7, 'Bom Conselho', NULL, '0000-00-00 00:00:00', '2024-07-08 20:53:49'),
(406, 10, 'Bom Jardim', NULL, '0000-00-00 00:00:00', '2024-07-08 21:07:35'),
(407, 8, 'Bonito', NULL, '0000-00-00 00:00:00', '2024-07-08 21:01:40'),
(408, 7, 'Brejão', NULL, '0000-00-00 00:00:00', '2024-07-08 20:54:06'),
(409, 5, 'Brejinho', NULL, '0000-00-00 00:00:00', '2024-07-08 20:46:07'),
(410, 8, 'Brejo da Madre de Deus', NULL, '0000-00-00 00:00:00', '2024-07-08 21:01:54'),
(411, 11, 'Buenos Aires', NULL, '0000-00-00 00:00:00', '2024-07-08 21:28:37'),
(412, 7, 'Buíque', NULL, '0000-00-00 00:00:00', '2024-07-08 20:54:22'),
(413, 13, 'Cabo de Santo Agostinho', NULL, '0000-00-00 00:00:00', '2024-07-08 21:36:00'),
(414, 1, 'Cabrobó', NULL, '0000-00-00 00:00:00', '2024-07-08 20:30:15'),
(415, 8, 'Cachoeirinha', NULL, '0000-00-00 00:00:00', '2024-07-08 21:02:17'),
(416, 7, 'Caetés', NULL, '0000-00-00 00:00:00', '2024-07-08 20:54:35'),
(417, 7, 'Calçado', NULL, '0000-00-00 00:00:00', '2024-07-08 20:54:51'),
(418, 5, 'Calumbi', NULL, '0000-00-00 00:00:00', '2024-07-08 20:46:25'),
(419, 13, 'Camaragibe', NULL, '0000-00-00 00:00:00', '2024-07-08 21:36:14'),
(420, 8, 'Camocim de São Félix', NULL, '0000-00-00 00:00:00', '2024-07-08 21:02:32'),
(421, 11, 'Camutanga', NULL, '0000-00-00 00:00:00', '2024-07-08 21:28:56'),
(422, 7, 'Canhotinho', NULL, '0000-00-00 00:00:00', '2024-07-08 20:55:06'),
(423, 7, 'Capoeiras', NULL, '0000-00-00 00:00:00', '2024-07-08 20:55:18'),
(424, 5, 'Carnaíba', NULL, '0000-00-00 00:00:00', '2024-07-08 20:46:40'),
(425, 4, 'Carnaubeira da Penha', NULL, '0000-00-00 00:00:00', '2024-07-08 20:43:59'),
(426, 11, 'Carpina', NULL, '0000-00-00 00:00:00', '2024-07-08 21:29:10'),
(427, 8, 'Caruaru', NULL, '0000-00-00 00:00:00', '2024-07-08 21:02:43'),
(428, 10, 'Casinhas', NULL, '0000-00-00 00:00:00', '2024-07-08 21:07:53'),
(429, 12, 'Catende', NULL, '0000-00-00 00:00:00', '2024-07-08 21:14:53'),
(430, 3, 'Cedro', NULL, '0000-00-00 00:00:00', '2024-07-08 20:41:19'),
(431, 11, 'Chã de Alegria', NULL, '0000-00-00 00:00:00', '2024-07-08 21:30:59'),
(432, 12, 'Chã Grande', NULL, '0000-00-00 00:00:00', '2024-07-08 21:15:07'),
(433, 11, 'Condado', NULL, '0000-00-00 00:00:00', '2024-07-08 21:31:35'),
(434, 7, 'Correntes', NULL, '0000-00-00 00:00:00', '2024-07-08 20:55:32'),
(435, 12, 'Cortês', NULL, '0000-00-00 00:00:00', '2024-07-08 21:15:24'),
(436, 10, 'Cumaru', NULL, '0000-00-00 00:00:00', '2024-07-08 21:08:12'),
(437, 8, 'Cupira', NULL, '0000-00-00 00:00:00', '2024-07-08 21:02:56'),
(438, 6, 'Custódia', NULL, '0000-00-00 00:00:00', '2024-07-08 20:51:37'),
(439, 1, 'Dormentes', NULL, '0000-00-00 00:00:00', '2024-07-08 20:30:56'),
(440, 12, 'Escada', NULL, '0000-00-00 00:00:00', '2024-07-08 21:15:37'),
(441, 2, 'Exu', NULL, '0000-00-00 00:00:00', '2024-07-08 20:38:54'),
(442, 10, 'Feira Nova', NULL, '0000-00-00 00:00:00', '2024-07-08 21:08:25'),
(443, 13, 'Fernando de Noronha', NULL, '0000-00-00 00:00:00', '2024-07-08 21:36:30'),
(444, 11, 'Ferreiros', NULL, '0000-00-00 00:00:00', '2024-07-08 21:31:57'),
(445, 5, 'Flores', NULL, '0000-00-00 00:00:00', '2024-07-08 20:46:57'),
(446, 4, 'Floresta', NULL, '0000-00-00 00:00:00', '2024-07-08 20:44:24'),
(447, 10, 'Frei Miguelinho', NULL, '0000-00-00 00:00:00', '2024-07-08 21:08:44'),
(448, 12, 'Gameleira', NULL, '0000-00-00 00:00:00', '2024-07-08 21:15:58'),
(449, 7, 'Garanhuns', NULL, '0000-00-00 00:00:00', '2024-07-08 20:55:49'),
(450, 11, 'Glória do Goitá', NULL, '0000-00-00 00:00:00', '2024-07-08 21:32:13'),
(451, 11, 'Goiana', NULL, '0000-00-00 00:00:00', '2024-07-08 21:32:44'),
(452, 2, 'Granito', NULL, '0000-00-00 00:00:00', '2024-07-08 20:39:13'),
(453, 8, 'Gravatá', NULL, '0000-00-00 00:00:00', '2024-07-08 21:03:12'),
(454, 7, 'Iati', NULL, '0000-00-00 00:00:00', '2024-07-08 20:56:02'),
(455, 6, 'Ibimirim', NULL, '0000-00-00 00:00:00', '2024-07-08 20:51:55'),
(456, 8, 'Ibirajuba', NULL, '0000-00-00 00:00:00', '2024-07-08 21:03:34'),
(457, 13, 'Igarassu', NULL, '0000-00-00 00:00:00', '2024-07-08 21:36:54'),
(458, 5, 'Iguaracy', NULL, '0000-00-00 00:00:00', '2024-07-08 20:47:12'),
(459, 13, 'Ilha de Itamaracá', NULL, '0000-00-00 00:00:00', '2024-07-08 21:37:11'),
(460, 6, 'Inajá', NULL, '0000-00-00 00:00:00', '2024-07-08 20:52:07'),
(461, 5, 'Ingazeira', NULL, '0000-00-00 00:00:00', '2024-07-08 20:47:28'),
(462, 13, 'Ipojuca', NULL, '0000-00-00 00:00:00', '2024-07-08 21:37:24'),
(463, 2, 'Ipubi', NULL, '0000-00-00 00:00:00', '2024-07-08 20:39:26'),
(464, 4, 'Itacuruba', NULL, '0000-00-00 00:00:00', '2024-07-08 20:44:43'),
(465, 7, 'Itaíba', NULL, '0000-00-00 00:00:00', '2024-07-08 20:56:20'),
(466, 11, 'Itambé', NULL, '0000-00-00 00:00:00', '2024-07-08 21:33:06'),
(467, 5, 'Itapetim', NULL, '0000-00-00 00:00:00', '2024-07-08 20:47:40'),
(468, 13, 'Itapissuma', NULL, '0000-00-00 00:00:00', '2024-07-08 21:37:39'),
(469, 11, 'Itaquitinga', NULL, '0000-00-00 00:00:00', '2024-07-08 21:33:20'),
(470, 13, 'Jaboatão dos Guararapes', NULL, '0000-00-00 00:00:00', '2024-07-08 21:37:56'),
(471, 12, 'Jaqueira', NULL, '0000-00-00 00:00:00', '2024-07-08 21:17:49'),
(472, 8, 'Jataúba', NULL, '0000-00-00 00:00:00', '2024-07-08 21:03:47'),
(473, 4, 'Jatobá', NULL, '0000-00-00 00:00:00', '2024-07-08 20:44:56'),
(474, 10, 'João Alfredo', NULL, '0000-00-00 00:00:00', '2024-07-08 21:09:03'),
(475, 12, 'Joaquim Nabuco', NULL, '0000-00-00 00:00:00', '2024-07-08 21:18:03'),
(476, 7, 'Jucati', NULL, '0000-00-00 00:00:00', '2024-07-08 20:56:34'),
(477, 7, 'Jupi', NULL, '0000-00-00 00:00:00', '2024-07-08 20:56:49'),
(478, 7, 'Jurema', NULL, '0000-00-00 00:00:00', '2024-07-08 20:57:01'),
(479, 11, 'Lagoa de Itaenga', NULL, '0000-00-00 00:00:00', '2024-07-08 21:33:35'),
(480, 11, 'Lagoa do Carro', NULL, '0000-00-00 00:00:00', '2024-07-08 21:33:47'),
(481, 7, 'Lagoa do Ouro', NULL, '0000-00-00 00:00:00', '2024-07-08 20:57:21'),
(482, 8, 'Lagoa dos Gatos', NULL, '0000-00-00 00:00:00', '2024-07-08 21:04:04'),
(483, 1, 'Lagoa Grande', NULL, '0000-00-00 00:00:00', '2024-07-08 20:32:04'),
(484, 7, 'Lajedo', NULL, '0000-00-00 00:00:00', '2024-07-08 20:57:33'),
(485, 10, 'Limoeiro', NULL, '0000-00-00 00:00:00', '2024-07-08 21:09:21'),
(486, 11, 'Macaparana', NULL, '0000-00-00 00:00:00', '2024-07-08 21:34:02'),
(487, 10, 'Machados', NULL, '0000-00-00 00:00:00', '2024-07-08 21:09:34'),
(488, 6, 'Manari', NULL, '0000-00-00 00:00:00', '2024-07-08 20:52:23'),
(489, 12, 'Maraial', NULL, '0000-00-00 00:00:00', '2024-07-08 21:18:27'),
(490, 3, 'Mirandiba', NULL, '0000-00-00 00:00:00', '2024-07-08 20:41:33'),
(491, 2, 'Moreilândia', NULL, '0000-00-00 00:00:00', '2024-07-08 20:39:44'),
(492, 13, 'Moreno', NULL, '0000-00-00 00:00:00', '2024-07-08 21:38:11'),
(493, 11, 'Nazaré da Mata', NULL, '0000-00-00 00:00:00', '2024-07-08 21:34:16'),
(494, 13, 'Olinda', NULL, '0000-00-00 00:00:00', '2024-07-08 21:38:23'),
(495, 10, 'Orobó', NULL, '0000-00-00 00:00:00', '2024-07-08 21:09:55'),
(496, 1, 'Orocó', NULL, '0000-00-00 00:00:00', '2024-07-08 20:32:25'),
(497, 2, 'Ouricuri', NULL, '0000-00-00 00:00:00', '2024-07-08 20:40:05'),
(498, 12, 'Palmares', NULL, '0000-00-00 00:00:00', '2024-07-08 21:18:47'),
(499, 7, 'Palmeirina', NULL, '0000-00-00 00:00:00', '2024-07-08 20:57:49'),
(500, 8, 'Panelas', NULL, '0000-00-00 00:00:00', '2024-07-08 21:04:20'),
(501, 7, 'Paranatama', NULL, '0000-00-00 00:00:00', '2024-07-08 20:58:02'),
(502, 3, 'Parnamirim', NULL, '0000-00-00 00:00:00', '2024-07-08 20:41:49'),
(503, 10, 'Passira', NULL, '0000-00-00 00:00:00', '2024-07-08 21:10:08'),
(504, 11, 'Paudalho', NULL, '0000-00-00 00:00:00', '2024-07-08 21:34:34'),
(505, 13, 'Paulista', NULL, '0000-00-00 00:00:00', '2024-07-08 21:38:40'),
(506, 7, 'Pedra', NULL, '0000-00-00 00:00:00', '2024-07-08 20:58:20'),
(507, 8, 'Pesqueira', NULL, '0000-00-00 00:00:00', '2024-07-08 21:04:39'),
(508, 4, 'Petrolândia', NULL, '0000-00-00 00:00:00', '2024-07-08 20:44:12'),
(509, 1, 'Petrolina', NULL, '0000-00-00 00:00:00', '2024-07-08 20:33:02'),
(510, 8, 'Poção', NULL, '0000-00-00 00:00:00', '2024-07-08 21:04:51'),
(511, 12, 'Pombos', NULL, '0000-00-00 00:00:00', '2024-07-08 21:19:02'),
(512, 12, 'Primavera', NULL, '0000-00-00 00:00:00', '2024-07-08 21:19:17'),
(513, 12, 'Quipapá', NULL, '0000-00-00 00:00:00', '2024-07-08 21:19:37'),
(514, 5, 'Quixaba', NULL, '0000-00-00 00:00:00', '2024-07-08 20:47:56'),
(515, 13, 'Recife', NULL, '0000-00-00 00:00:00', '2024-07-08 21:38:52'),
(516, 8, 'Riacho das Almas', NULL, '0000-00-00 00:00:00', '2024-07-08 21:05:21'),
(517, 12, 'Ribeirão', NULL, '0000-00-00 00:00:00', '2024-07-08 21:19:51'),
(518, 12, 'Rio Formoso', NULL, '0000-00-00 00:00:00', '2024-07-08 21:20:09'),
(519, 8, 'Sairé', NULL, '0000-00-00 00:00:00', '2024-07-08 21:05:43'),
(520, 10, 'Salgadinho', NULL, '0000-00-00 00:00:00', '2024-07-08 21:10:25'),
(521, 3, 'Salgueiro', NULL, '0000-00-00 00:00:00', '2024-07-08 20:42:05'),
(522, 7, 'Saloá', NULL, '0000-00-00 00:00:00', '2024-07-08 20:58:33'),
(523, 8, 'Sanharó', NULL, '0000-00-00 00:00:00', '2024-07-08 21:05:57'),
(524, 2, 'Santa Cruz', NULL, '0000-00-00 00:00:00', '2024-07-08 20:40:19'),
(525, 5, 'Santa Cruz da Baixa Verde', NULL, '0000-00-00 00:00:00', '2024-07-08 20:48:15'),
(526, 10, 'Santa Cruz do Capibaribe', NULL, '0000-00-00 00:00:00', '2024-07-08 21:10:38'),
(527, 2, 'Santa Filomena', NULL, '0000-00-00 00:00:00', '2024-07-08 20:40:36'),
(528, 1, 'Santa Maria da Boa Vista', NULL, '0000-00-00 00:00:00', '2024-07-08 20:33:16'),
(529, 10, 'Santa Maria do Cambucá', NULL, '0000-00-00 00:00:00', '2024-07-08 21:11:09'),
(530, 5, 'Santa Terezinha', NULL, '0000-00-00 00:00:00', '2024-07-08 20:49:22'),
(531, 12, 'São Benedito do Sul', NULL, '0000-00-00 00:00:00', '2024-07-08 21:20:27'),
(532, 8, 'São Bento do Una', NULL, '0000-00-00 00:00:00', '2024-07-08 21:06:18'),
(533, 8, 'São Caitano', NULL, '0000-00-00 00:00:00', '2024-07-08 21:06:34'),
(534, 7, 'São João', NULL, '0000-00-00 00:00:00', '2024-07-08 20:58:53'),
(535, 8, 'São Joaquim do Monte', NULL, '0000-00-00 00:00:00', '2024-07-08 21:06:50'),
(536, 12, 'São José da Coroa Grande', NULL, '0000-00-00 00:00:00', '2024-07-08 21:20:47'),
(537, 3, 'São José do Belmonte', NULL, '0000-00-00 00:00:00', '2024-07-08 20:42:22'),
(538, 5, 'São José do Egito', NULL, '0000-00-00 00:00:00', '2024-07-08 20:49:39'),
(539, 13, 'São Lourenço da Mata', NULL, '0000-00-00 00:00:00', '2024-07-08 21:39:12'),
(540, 10, 'São Vicente Férrer', NULL, '0000-00-00 00:00:00', '2024-07-08 21:11:26'),
(541, 5, 'Serra Talhada', NULL, '0000-00-00 00:00:00', '2024-07-08 20:49:59'),
(542, 3, 'Serrita', NULL, '0000-00-00 00:00:00', '2024-07-08 20:42:37'),
(543, 6, 'Sertânia', NULL, '0000-00-00 00:00:00', '2024-07-08 20:52:43'),
(544, 12, 'Sirinhaém', NULL, '0000-00-00 00:00:00', '2024-07-08 21:21:05'),
(545, 5, 'Solidão', NULL, '0000-00-00 00:00:00', '2024-07-08 20:50:15'),
(546, 10, 'Surubim', NULL, '0000-00-00 00:00:00', '2024-07-08 21:11:44'),
(547, 5, 'Tabira', NULL, '0000-00-00 00:00:00', '2024-07-08 20:50:27'),
(548, 8, 'Tacaimbó', NULL, '0000-00-00 00:00:00', '2024-07-08 21:07:04'),
(549, 4, 'Tacaratu', NULL, '0000-00-00 00:00:00', '2024-07-08 20:45:14'),
(550, 12, 'Tamandaré', NULL, '0000-00-00 00:00:00', '2024-07-08 21:21:18'),
(551, 10, 'Taquaritinga do Norte', NULL, '0000-00-00 00:00:00', '2024-07-08 21:12:02'),
(552, 7, 'Terezinha', NULL, '0000-00-00 00:00:00', '2024-07-08 20:59:06'),
(553, 3, 'Terra Nova', NULL, '0000-00-00 00:00:00', '2024-07-08 20:42:54'),
(554, 11, 'Timbaúba', NULL, '0000-00-00 00:00:00', '2024-07-08 21:34:46'),
(555, 10, 'Toritama', NULL, '0000-00-00 00:00:00', '2024-07-08 21:12:21'),
(556, 11, 'Tracunhaém', NULL, '0000-00-00 00:00:00', '2024-07-08 21:35:02'),
(557, 2, 'Trindade', NULL, '0000-00-00 00:00:00', '2024-07-08 20:40:50'),
(558, 5, 'Triunfo', NULL, '0000-00-00 00:00:00', '2024-07-08 20:48:27'),
(559, 7, 'Tupanatinga', NULL, '0000-00-00 00:00:00', '2024-07-08 20:59:20'),
(560, 5, 'Tuparetama', NULL, '0000-00-00 00:00:00', '2024-07-08 20:50:44'),
(561, 7, 'Venturosa', NULL, '0000-00-00 00:00:00', '2024-07-08 20:59:34'),
(562, 3, 'Verdejante', NULL, '0000-00-00 00:00:00', '2024-07-08 20:43:10'),
(563, 10, 'Vertente do Lério', NULL, '0000-00-00 00:00:00', '2024-07-08 21:12:52'),
(564, 10, 'Vertentes', NULL, '0000-00-00 00:00:00', '2024-07-08 21:12:34'),
(565, 11, 'Vicência', NULL, '0000-00-00 00:00:00', '2024-07-08 21:35:17'),
(566, 12, 'Vitória de Santo Antão', NULL, '0000-00-00 00:00:00', '2024-07-08 21:21:36'),
(567, 12, 'Xexéu', NULL, '0000-00-00 00:00:00', '2024-07-08 21:21:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidades`
--

CREATE TABLE `unidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sigla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `unidades`
--

INSERT INTO `unidades` (`id`, `nome`, `sigla`, `created_at`, `updated_at`) VALUES
(6, 'GABINETE DA SUPERINTENDÊNCIA REGIONAL', '3ª GB', '2024-07-08 17:55:14', '2024-07-08 17:55:14'),
(7, 'UNIDADE REGIONAL DE COMUNICAÇÃO', '3ª GB/URC', '2024-07-08 17:55:34', '2024-07-08 17:55:34'),
(8, 'SECRETARIA REGIONAL DE LICITAÇÕES', '3ª SL', '2024-07-08 17:55:50', '2024-07-08 17:55:50'),
(9, 'ASSESSORIA JURÍDICA REGIONAL', '3ª AJ', '2024-07-08 17:56:01', '2024-07-08 17:56:01'),
(10, 'GERÊNCIA REGIONAL DE REVITALIZAÇÃO E DESENVOLVIMENTO TERRITORIAL', '3ª GRR', '2024-07-08 17:56:20', '2024-07-08 17:56:20'),
(11, 'UNIDADE REGIONAL DE EMPREENDIMENTOS SOCIOAMBIENTAIS', '3ª GRR/UES', '2024-07-08 17:56:35', '2024-07-08 17:56:35'),
(12, 'UNIDADE REGIONAL DE DESENVOLVIMENTO TERRITORIAL', '3ª GRR/UDT', '2024-07-08 17:56:52', '2024-07-08 17:56:52'),
(13, 'CENTRO INTEGRADO DE RECURSOS PESQUEIROS E AQUICULTURA DE BEBEDOURO', '3ª CIB', '2024-07-08 17:57:14', '2024-07-08 17:57:14'),
(14, 'GERÊNCIA REGIONAL DE INFRAESTRUTURA', '3ª GRD', '2024-07-08 17:57:32', '2024-07-08 17:57:32'),
(15, 'UNIDADE REGIONAL DE ESTUDOS E PROJETOS', '3ª GRD/UEP', '2024-07-08 17:57:46', '2024-07-08 17:57:46'),
(16, 'UNIDADE REGIONAL DE IMPLANTAÇÃO E ACOMPANHAMENTO DE PROJETOS', '3ª GRD/UIP', '2024-07-08 17:58:01', '2024-07-08 17:58:01'),
(17, 'GERÊNCIA REGIONAL DE IRRIGAÇÃO E OPERAÇÕES', '3ª GRI', '2024-07-08 17:58:13', '2024-07-08 17:58:13'),
(18, 'UNIDADE REGIONAL DE GESTÃO DOS EMPREENDIMENTOS DE IRRIGAÇÃO', '3ª GRI/UEI', '2024-07-08 17:58:25', '2024-07-08 17:58:25'),
(19, 'UNIDADE REGIONAL DE APOIO À PRODUÇÃO', '3ª GRI/URP', '2024-07-08 17:58:38', '2024-07-08 17:58:38'),
(20, 'GERÊNCIA REGIONAL DE SUPORTE INTEGRADO', '3ª GRS', '2024-07-08 17:58:56', '2024-07-08 17:58:56'),
(21, 'UNIDADE REGIONAL DE LICENCIAMENTO AMBIENTAL E ADMINISTRAÇÃO FUNDIÁRIA', '3ª GRS/ULF', '2024-07-08 17:59:09', '2024-07-08 17:59:09'),
(22, 'GERÊNCIA REGIONAL DE ESTRATÉGIA E FINANÇAS', '3ª GRG', '2024-07-08 17:59:24', '2024-07-08 17:59:24'),
(23, 'UNIDADE REGIONAL DE MONITORAMENTO E DE CONTROLE DE CONTRATOS E CONVÊNIOS', '3ª GRG/UMC', '2024-07-08 17:59:35', '2024-07-08 17:59:35'),
(24, 'UNIDADE REGIONAL ORÇAMENTÁRIA', '3ª GRG/URO', '2024-07-08 17:59:49', '2024-07-08 17:59:49'),
(25, 'UNIDADE REGIONAL DE FINANÇAS E COBRANÇA', '3ª GRG/UFN', '2024-07-08 18:00:02', '2024-07-08 18:00:02'),
(26, 'SETOR DE COBRANÇA', '3ª GRG/UFN/SCB', '2024-07-08 18:00:14', '2024-07-08 18:00:14'),
(27, 'UNIDADE REGIONAL DE CONTABILIDADE', '3ª GRG/UCB', '2024-07-08 18:00:26', '2024-07-08 18:00:26'),
(28, 'GERÊNCIA REGIONAL DE ADMINISTRAÇÃO E TECNOLOGIA', '3ª GRA', '2024-07-08 18:00:40', '2024-07-08 18:00:40'),
(29, 'UNIDADE REGIONAL DE PATRIMÔNIO, LOGÍSTICA E SERVIÇOS AUXILIARES', '3ª GRA/USA', '2024-07-08 18:00:52', '2024-07-08 18:00:52'),
(30, 'UNIDADE REGIONAL DE GESTÃO DE PESSOAS', '3ª GRA/UGP', '2024-07-08 18:01:05', '2024-07-08 18:01:05'),
(31, 'UNIDADE REGIONAL DE TECNOLOGIA DA INFORMAÇÃO', '3ª GRA/UTI', '2024-07-08 18:01:19', '2024-07-08 18:01:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@umc.com', NULL, '$2y$12$SQzs.oeF2kM797XpzSO2E.GYMFoDdqEVqP2bIrEw0XxqnYaDiJ2ny', 'SKQSt7LgZWpOqS66lbxAZLOJK0uCqJjODYvxIDjAETjwnafe0ojer70V3g5p', '2024-06-21 17:40:36', '2024-06-21 17:40:36'),
(2, 'wilker', 'wilker.silva@codevasf.gov.br', NULL, '$2y$12$fQUWSX9QK3Jepu7829VzuuTTS3/KEio0aPYCphq.kBx4IB812Tk0K', '5fPEb6CqYspfG17kcqUoUo0VunO3G0aPvbtTWVCricuBJQgqb52bAVGf83Hu', '2024-06-21 23:10:44', '2024-06-21 23:10:44'),
(3, 'monitoramento', 'admin@monitoramento.com', NULL, '$2y$12$Aj8vi373xdJchyGO60v7yeY2IneXT366FXZJTNwYBxZLY6pbflGfG', 'ffdnVZXYeFqVGHiWZNajUtzoB1eS7knpI6AVS8aYDi8aGmx5UmxNohfvX1kW', '2024-07-08 15:50:58', '2024-07-08 15:50:58'),
(4, 'admin', 'admin@3sr.com', NULL, '$2y$12$FF11YmrErDu5NfzTDCQHr.9r9cdWe7EWTohnfuKosX5lFTtkhqprS', NULL, '2024-07-08 17:21:28', '2024-07-08 17:21:28');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `fiscals`
--
ALTER TABLE `fiscals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fiscals_unidade_id_foreign` (`unidade_id`);

--
-- Índices para tabela `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrumentos_fiscal_id_foreign` (`fiscal_id`);

--
-- Índices para tabela `instrumento_municipio`
--
ALTER TABLE `instrumento_municipio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrumento_municipio_instrumento_id_foreign` (`instrumento_id`),
  ADD KEY `instrumento_municipio_municipio_id_foreign` (`municipio_id`);

--
-- Índices para tabela `mesoregiaos`
--
ALTER TABLE `mesoregiaos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `monitoramentos`
--
ALTER TABLE `monitoramentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monitoramentos_instrumento_id_foreign` (`instrumento_id`);

--
-- Índices para tabela `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `municipios_nome_unique` (`nome`),
  ADD KEY `municipios_mesorregiao_id_foreign` (`mesorregiao_id`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fiscals`
--
ALTER TABLE `fiscals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de tabela `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `instrumento_municipio`
--
ALTER TABLE `instrumento_municipio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `mesoregiaos`
--
ALTER TABLE `mesoregiaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `monitoramentos`
--
ALTER TABLE `monitoramentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `fiscals`
--
ALTER TABLE `fiscals`
  ADD CONSTRAINT `fiscals_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`);

--
-- Limitadores para a tabela `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD CONSTRAINT `instrumentos_fiscal_id_foreign` FOREIGN KEY (`fiscal_id`) REFERENCES `fiscals` (`id`);

--
-- Limitadores para a tabela `instrumento_municipio`
--
ALTER TABLE `instrumento_municipio`
  ADD CONSTRAINT `instrumento_municipio_instrumento_id_foreign` FOREIGN KEY (`instrumento_id`) REFERENCES `instrumentos` (`id`),
  ADD CONSTRAINT `instrumento_municipio_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`);

--
-- Limitadores para a tabela `monitoramentos`
--
ALTER TABLE `monitoramentos`
  ADD CONSTRAINT `monitoramentos_instrumento_id_foreign` FOREIGN KEY (`instrumento_id`) REFERENCES `instrumentos` (`id`);

--
-- Limitadores para a tabela `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_mesorregiao_id_foreign` FOREIGN KEY (`mesorregiao_id`) REFERENCES `mesoregiaos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
