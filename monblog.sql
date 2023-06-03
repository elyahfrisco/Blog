-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : jeu. 27 oct. 2022 à 20:13
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `monblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`) VALUES
(1, 'Bronze', 'bronze'),
(2, 'Silver', 'silver'),
(3, 'Gold', 'gold');

-- --------------------------------------------------------

--
-- Structure de la table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(5, 2, 3),
(6, 2, 4),
(9, 3, 5),
(10, 3, 6);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `user_id`, `name`, `email`, `message`) VALUES
(1, '2022-09-14 12:52:15', '2022-09-14 12:52:15', NULL, 'Jackie Renner IV', 'darrell72@example.com', 'And in she went. Once more she found herself falling down a large cauldron which seemed to think about stopping herself before she made her next remark. \'Then the eleventh day must have prizes.\'.'),
(2, '2022-09-14 12:52:15', '2022-09-14 12:52:15', NULL, 'Dr. Jessyca Streich', 'kutch.donald@example.net', 'I shall only look up and went down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two she stood still where she was, and waited. When the Mouse was swimming away from him, and said.'),
(3, '2022-09-14 12:52:15', '2022-09-14 12:52:15', NULL, 'Alaina Skiles', 'mcglynn.braden@example.org', 'Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at.'),
(4, '2022-09-14 12:52:15', '2022-09-14 12:52:15', NULL, 'Eleonore Wyman', 'colby.osinski@example.net', 'For some minutes it puffed away without being seen, when she had gone through that day. \'That PROVES his guilt,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, always ready to talk.'),
(5, '2022-09-14 12:52:15', '2022-09-14 12:52:15', NULL, 'Florian Willms', 'rboyle@example.org', 'March Hare meekly replied. \'Yes, but some crumbs must have been changed in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah.'),
(6, '2022-09-14 14:21:11', '2022-09-14 14:21:11', NULL, 'client', 'client@gmail.com', 'haha');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `follows`
--

CREATE TABLE `follows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `follows`
--

INSERT INTO `follows` (`id`, `href`, `title`) VALUES
(3, 'http://127.0.0.1:8000/', 'Freelance');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2022_09_14_121215_create_notifications_table', 1),
(31, '2022_09_14_121615_create_categories_table', 1),
(32, '2022_09_14_121836_create_tags_table', 1),
(33, '2022_09_14_122009_create_posts_table', 1),
(34, '2022_09_14_122431_category_post_table', 1),
(35, '2022_09_14_122614_post_tag_table', 1),
(36, '2022_09_14_122759_create_comments_table', 1),
(37, '2022_09_14_133533_create_contacts_table', 1),
(38, '2022_09_14_133749_create_pages_table', 1),
(39, '2022_09_14_133913_create_follows_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `body`) VALUES
(1, 'about-us', 'About us', 'L’entreprise SN CORP est une grande entreprise de HEDGE FUND basé sur la stratégie long/short Fund qui est un fond de placement à caractère spéculatif ouvert à un nombre limité d\'investisseurs à la recherche d’un rendement élevé.\nSN CORP s\'engage à donner aux jeunes et aux investisseurs des opportunités. En fournissant à aux clients des services innovants. L’équipe possède une connaissance approfondie en matière de bourse et des dernières technologies et de la manière dont elles peuvent être appliquées pour aider les clients à atteindre leurs objectifs. L’entreprise est toujours à la recherche de nouvelles façons d\'améliorer ses offres et de faire une différence dans le monde de business. \n');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('bdoyle@example.net', '$2y$10$spHFDKpCi9dYDSaOvDEaduLZ7D3I28t3kUggMlaBigxqZPbI0oikS', '2022-09-14 13:49:40');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `slug`, `seo_title`, `excerpt`, `body`, `meta_description`, `meta_keywords`, `active`, `image`, `user_id`) VALUES
(1, '2022-09-14 12:52:15', '2022-10-07 07:52:38', 'Capital 5000$', 'Capital-1', 'Capital 1', '1/2 du profit : Le résultat peut varier selon la situation du marché, les résultats passés ne reflètent pas les résultats futurs. Ces 1/2 peuvent varier, mais en moyenne, on peut estimer à 10% mensuel, mais sur un délai de long terme, grâce aux intérêts composés, ce pourcentage peut monter jusqu’à 30% le mois (Estimation).', 'CAPITAL MINIMUM : 5 000$\nLe Capital est figé durant 3 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 6 Mois.\n', 'Et et qui quia sed.', 'est,distinctio,exercitationem', 1, 'img02.jpg', 2),
(2, '2022-09-14 12:52:15', '2022-09-27 18:20:38', 'Capital 10000$', 'Capital-2', 'Capital 2', 'Le Capital est figé durant 6 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 12 Mois.\n', 'Le Capital est figé durant 6 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 12 Mois.\n', 'Ab quos quos autem veritatis.', 'qui,magnam,dolore', 1, 'img01.jpg', 2),
(3, '2022-09-14 12:52:15', '2022-09-14 12:52:15', 'Capital 15000$', 'Capital-3', 'Capital 3', 'Le Capital est figé durant 12 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 24 Mois.\n', 'Le Capital est figé durant 12 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 24 Mois.\n', 'Autem est quasi a.', 'distinctio,perspiciatis,qui', 1, 'img03.jpg', 3),
(4, '2022-09-14 12:52:15', '2022-09-14 12:52:15', 'Capital 20000$', 'Capital-4', 'Capital 4', 'Le Capital est figé durant 18 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 30 Mois.\n', 'Le Capital est figé durant 18 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 30 Mois.\n', 'Est velit nulla ratione eaque ex.', 'molestiae,perspiciatis,tempora', 1, 'img04.jpg', 3),
(5, '2022-09-14 12:52:15', '2022-09-14 12:52:15', 'Capital 30000$', 'Capital-5', 'Capital 5', 'Le Capital est figé durant 24 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 36 Mois.\n', 'Le Capital est figé durant 24 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 36 Mois.\n', 'Quia voluptatem vero at qui dolorem.', 'ut,quidem,vel', 1, 'img05.jpg', 3),
(6, '2022-09-14 12:52:15', '2022-09-14 12:52:15', 'Capital 50000$', 'Capital-6', 'Capital-6', 'Le Capital est figé durant 30 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 50 Mois.\n', 'Le Capital est figé durant 30 mois après un dépôt (Premier trimestre de l’investisseur), après cela l’investisseur peut retirer à tout moment son capital ainsi que ses profits.\nLes frais de gestion sont de 3% tous les 50 Mois.\n', 'Molestiae itaque ipsum quia ullam omnis dolorum.', 'necessitatibus,autem,vero', 1, 'img06.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(4, 2, 1),
(5, 2, 4),
(6, 2, 3),
(7, 2, 6),
(8, 3, 5),
(9, 3, 6),
(10, 3, 2),
(11, 4, 1),
(12, 4, 5),
(13, 5, 1),
(14, 5, 2),
(15, 6, 5),
(16, 6, 3),
(17, 6, 6),
(18, 6, 2),
(34, 1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `slug`) VALUES
(1, 'Tag1', 'tag1'),
(2, 'Tag2', 'tag2'),
(3, 'Tag3', 'tag3'),
(4, 'Tag4', 'tag4'),
(5, 'Tag5', 'tag5'),
(6, 'Tag6', 'tag6'),
(7, 'Aa', 'aa'),
(8, 'Aaaaa', 'aaaaa'),
(9, 'Ada', 'ada'),
(10, 'Argent', 'argent');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','redac','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `valid`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'frisco', 'frisco@gmail.com', '2022-09-14 12:52:15', '$2y$10$0Gu/AzvPRY7xXVqBoxmWne7D/p5pwpNYerRhOf9LB8smJp8srCYSe', 'admin', 1, 'owcKLW5kRyBshL0bUZHbSN8nZ00lBlkWzBNx2AMMUS6eYbEAoTLidOXg3Dyf', '2022-09-14 12:41:45', '2022-09-14 12:41:45'),
(2, 'SN CORP', 'stracke.ellen@example.org', '2022-09-14 12:52:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 1, 'EwsNeTcswr', '2022-09-14 12:52:15', '2022-09-14 12:52:15'),
(3, 'SN CORP', 'qtremblay@example.com', '2022-09-14 12:52:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'redac', 1, 'MDmAlBHKZy', '2022-09-14 12:52:15', '2022-09-14 12:52:15'),
(4, 'SN CORP', 'bdoyle@example.net', '2022-09-14 12:52:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'redac', 1, 'SuMQTYTmLf', '2022-09-14 12:52:15', '2022-09-14 12:52:15'),
(5, 'SN CORP', 'isabell53@example.org', '2022-09-14 12:52:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, 'pKB5WYn8Gu', '2022-09-14 12:52:15', '2022-09-14 12:52:15'),
(6, 'SN CORP', 'gwest@example.net', '2022-09-14 12:52:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, '87OYawB6hd', '2022-09-14 12:52:15', '2022-09-14 12:52:15'),
(7, 'SN CORP ', 'zhand@example.org', '2022-09-14 12:52:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 1, 'D2JpvviRKc', '2022-09-14 12:52:15', '2022-09-14 12:52:15'),
(8, 'client', 'client@gmail.com', NULL, '$2y$10$szjVQEw7kGqxpVaRw8kfkO1z6bxojueT809C2LClfTfikTo4OdJyK', 'admin', 1, '2VKVb8PZjNCpZeJvbBUzHiZm2YS9BZ8bhNgsvkJvyxIHJuaFdEbDFK9N4H6a', '2022-09-14 14:09:34', '2022-09-14 14:09:34'),
(9, 'tsiory', 'tsiory@gmail.com', NULL, '$2y$10$JAWvtC/WFHbB78oqBK8TO.eCOI1XZQb1wNsj9Doi8b6FtTxpEqYtO', 'user', 1, NULL, '2022-09-15 16:34:21', '2022-09-15 16:54:58'),
(10, 'elyah', 'elyahfrisco7@gmail.com', NULL, '$2y$10$Dtyena9GrR77GrUtJeEuAeRzWNjetOL1KMUvyB9SG.UT7eymullxu', 'redac', 1, NULL, '2022-09-15 17:33:37', '2022-09-15 17:33:37');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Index pour la table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Index pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
