-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/06/2024 às 03:55
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

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
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiscals`
--

CREATE TABLE `fiscals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unidade_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `fiscals`
--

INSERT INTO `fiscals` (`id`, `unidade_id`, `nome`, `email`, `matricula`, `created_at`, `updated_at`) VALUES
(1, 1, 'Manoel Wilker Alves da Silva', 'wilker.silva@codevasf.gov.br', '10842-04', '2024-06-21 23:51:19', '2024-06-21 23:51:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `instrumentos`
--

CREATE TABLE `instrumentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fiscal_id` bigint(20) UNSIGNED NOT NULL,
  `tipo` enum('Contrato','Convênio','Carta Contrato','Ordem de Fornecimento','Ordem de Serviço','Termo de Parceria','Termo de Cooperação Técnica','Contrato de Cessão') NOT NULL,
  `numero_sigec` varchar(255) DEFAULT NULL,
  `numero_transferegov` varchar(255) DEFAULT NULL,
  `celebracao` date DEFAULT NULL,
  `vigencia` date DEFAULT NULL,
  `objeto` text NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `entidade` varchar(255) NOT NULL,
  `beneficiarios` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` enum('Execução','Paralisado','Concluído') NOT NULL,
  `valor_global` double(10,2) DEFAULT NULL,
  `valor_empenhado` double(10,2) DEFAULT NULL,
  `valor_liquidado` double(10,2) DEFAULT NULL,
  `valor_pago` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instrumento_municipio`
--

CREATE TABLE `instrumento_municipio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instrumento_id` bigint(20) UNSIGNED NOT NULL,
  `municipio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesoregiaos`
--

CREATE TABLE `mesoregiaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mesoregiaos`
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
(9, 'Zona da Mata', NULL, '2024-06-25 04:01:56', '2024-06-25 04:01:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
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
-- Estrutura para tabela `monitoramentos`
--

CREATE TABLE `monitoramentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instrumento_id` bigint(20) UNSIGNED NOT NULL,
  `andamento` text DEFAULT NULL,
  `dificuldades` text DEFAULT NULL,
  `atores` text DEFAULT NULL,
  `providencias` text DEFAULT NULL,
  `prazo` date DEFAULT NULL,
  `anexo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `municipios`
--

CREATE TABLE `municipios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mesorregiao_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `municipios`
--

INSERT INTO `municipios` (`id`, `mesorregiao_id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 1, 'Petrolina', NULL, '2024-06-25 03:32:38', '2024-06-25 03:32:38'),
(3, 1, 'Santa Maria da Boa Vista', NULL, '2024-06-25 03:35:44', '2024-06-25 03:35:44'),
(4, 1, 'Lagoa Grande', NULL, '2024-06-25 03:39:17', '2024-06-25 03:39:17'),
(5, 1, 'Cabrobó', NULL, '2024-06-25 03:55:06', '2024-06-25 03:55:06'),
(6, 1, 'Dormentes', NULL, '2024-06-25 03:55:37', '2024-06-25 03:55:37'),
(7, 5, 'Serra Talhada', NULL, '2024-06-25 03:58:05', '2024-06-25 03:58:05'),
(8, 8, 'Caruaru', NULL, '2024-06-25 04:03:26', '2024-06-25 04:03:26'),
(9, 3, 'Salgueiro', NULL, '2024-06-25 04:07:10', '2024-06-25 04:07:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `unidades`
--

CREATE TABLE `unidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sigla` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `unidades`
--

INSERT INTO `unidades` (`id`, `nome`, `sigla`, `created_at`, `updated_at`) VALUES
(1, '3ª Gerência de Gestão Estratégica e Finanças', '3ª GRG', '2024-06-21 23:31:58', '2024-06-21 23:31:58'),
(2, '3ª Gerência de Infraestrutura', '3ª GRD', '2024-06-21 23:33:19', '2024-06-21 23:33:19'),
(3, NULL, '3ª GRI', '2024-06-21 23:33:41', '2024-06-21 23:33:41'),
(4, NULL, '3ª GRA', '2024-06-21 23:33:49', '2024-06-21 23:33:49'),
(5, NULL, '3ª GRD/UIP', '2024-06-21 23:33:58', '2024-06-21 23:33:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@umc.com', NULL, '$2y$12$SQzs.oeF2kM797XpzSO2E.GYMFoDdqEVqP2bIrEw0XxqnYaDiJ2ny', 'SKQSt7LgZWpOqS66lbxAZLOJK0uCqJjODYvxIDjAETjwnafe0ojer70V3g5p', '2024-06-21 17:40:36', '2024-06-21 17:40:36'),
(2, 'wilker', 'wilker.silva@codevasf.gov.br', NULL, '$2y$12$fQUWSX9QK3Jepu7829VzuuTTS3/KEio0aPYCphq.kBx4IB812Tk0K', NULL, '2024-06-21 23:10:44', '2024-06-21 23:10:44');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `fiscals`
--
ALTER TABLE `fiscals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fiscals_unidade_id_foreign` (`unidade_id`);

--
-- Índices de tabela `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrumentos_fiscal_id_foreign` (`fiscal_id`);

--
-- Índices de tabela `instrumento_municipio`
--
ALTER TABLE `instrumento_municipio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrumento_municipio_instrumento_id_foreign` (`instrumento_id`),
  ADD KEY `instrumento_municipio_municipio_id_foreign` (`municipio_id`);

--
-- Índices de tabela `mesoregiaos`
--
ALTER TABLE `mesoregiaos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `monitoramentos`
--
ALTER TABLE `monitoramentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monitoramentos_instrumento_id_foreign` (`instrumento_id`);

--
-- Índices de tabela `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `municipios_nome_unique` (`nome`),
  ADD KEY `municipios_mesorregiao_id_foreign` (`mesorregiao_id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `instrumento_municipio`
--
ALTER TABLE `instrumento_municipio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mesoregiaos`
--
ALTER TABLE `mesoregiaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `fiscals`
--
ALTER TABLE `fiscals`
  ADD CONSTRAINT `fiscals_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`);

--
-- Restrições para tabelas `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD CONSTRAINT `instrumentos_fiscal_id_foreign` FOREIGN KEY (`fiscal_id`) REFERENCES `fiscals` (`id`);

--
-- Restrições para tabelas `instrumento_municipio`
--
ALTER TABLE `instrumento_municipio`
  ADD CONSTRAINT `instrumento_municipio_instrumento_id_foreign` FOREIGN KEY (`instrumento_id`) REFERENCES `instrumentos` (`id`),
  ADD CONSTRAINT `instrumento_municipio_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`);

--
-- Restrições para tabelas `monitoramentos`
--
ALTER TABLE `monitoramentos`
  ADD CONSTRAINT `monitoramentos_instrumento_id_foreign` FOREIGN KEY (`instrumento_id`) REFERENCES `instrumentos` (`id`);

--
-- Restrições para tabelas `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_mesorregiao_id_foreign` FOREIGN KEY (`mesorregiao_id`) REFERENCES `mesoregiaos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
