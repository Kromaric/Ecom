-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 16 fév. 2025 à 19:54
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gentlemanbio`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'maxime sint', 'maxime-sint', 'Inventore iusto unde distinctio dignissimos. Iste eum soluta quas dignissimos voluptate illum. Quia velit id at aut commodi velit vel.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(2, 'voluptate praesentium', 'voluptate-praesentium', 'Aut deleniti a voluptas est. Accusamus ratione et aspernatur corporis voluptas ullam vel.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(3, 'voluptas et', 'voluptas-et', 'Architecto nisi omnis aut tenetur. Et amet neque eum dolores voluptatibus. Necessitatibus assumenda vitae laborum quos facere omnis. Optio velit dolores fugit deserunt.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(4, 'sed cum', 'sed-cum', 'Qui consequatur ut perferendis doloribus et deleniti. Qui qui dolorem perferendis. Nam laudantium vel quis.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(5, 'accusamus a', 'accusamus-a', 'Reiciendis exercitationem quia fugit necessitatibus itaque ut. Minima pariatur id sunt vero reprehenderit pariatur quos. Consequatur enim sunt eos recusandae quia. Voluptatum excepturi blanditiis et non veritatis qui.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(6, 'dolores quisquam', 'dolores-quisquam', 'Explicabo non quisquam consequuntur non magni. Explicabo non cupiditate doloribus nihil molestiae sapiente quasi. In rerum qui occaecati suscipit nulla et.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(7, 'voluptatem nihil', 'voluptatem-nihil', 'Facere et sed impedit sit et doloremque. Quo quaerat labore reiciendis praesentium quo. Et odio tempore assumenda aut commodi qui aperiam.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(8, 'quasi sit', 'quasi-sit', 'Eligendi voluptas sint delectus omnis et. Reprehenderit doloribus reprehenderit suscipit maiores.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(9, 'quaerat dolorum', 'quaerat-dolorum', 'Eos omnis odio id illum enim et. Optio quis autem in omnis. Non vero suscipit recusandae facilis cupiditate voluptatem et.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(10, 'aut quasi', 'aut-quasi', 'Minus atque rem molestiae tenetur excepturi atque. Quaerat odit qui tempore. Totam vel asperiores magni. Numquam possimus molestias perspiciatis quos.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(11, 'doloribus ipsam', 'doloribus-ipsam', 'Eos et officiis magni harum maiores aliquam aliquam sunt. Omnis qui aut repudiandae voluptatem repellendus at illum. Vel quae blanditiis tempore illo id ducimus incidunt inventore. In dicta odit laudantium eos minus. Vel distinctio rerum voluptatem autem voluptatem occaecati.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(12, 'similique necessitatibus', 'similique-necessitatibus', 'Et sit at a aut in. Corrupti officia ut corrupti quidem modi. Voluptatum suscipit facere deserunt quibusdam qui quis maxime. In cum rerum temporibus quibusdam.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(13, 'vitae est', 'vitae-est', 'Id explicabo qui debitis iste expedita. Aspernatur nulla tempore et officia. Error rerum in cumque sint ut et. Porro nesciunt animi incidunt assumenda alias eum ea eum. Asperiores officiis facilis exercitationem itaque quos iusto iusto.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(14, 'eum repellat', 'eum-repellat', 'Neque recusandae eveniet adipisci sequi saepe. Cupiditate deleniti nulla beatae ut ut excepturi.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(15, 'culpa sed', 'culpa-sed', 'Qui maiores similique consectetur qui. Officia corrupti consequatur maxime. Reprehenderit a sit quisquam sit. Est laboriosam quibusdam sed alias aut molestiae sequi.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(16, 'in quo', 'in-quo', 'Delectus ut tempore voluptate. Quas aliquam consequatur enim qui. Culpa molestiae cupiditate molestiae id voluptatem in. Minus cum itaque adipisci molestias et quia blanditiis.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(17, 'qui reiciendis', 'qui-reiciendis', 'Tempore laboriosam est pariatur. Cupiditate corporis aperiam doloribus dolorum. Itaque adipisci dolor ea. Ea quas velit rerum et earum nam ea.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(18, 'maiores aliquid', 'maiores-aliquid', 'Dolorem voluptas dolor nisi quia odio. Reiciendis consequatur eius et. Itaque odit velit et temporibus et inventore at. Ut velit voluptas similique ut quisquam qui.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(19, 'qui corrupti', 'qui-corrupti', 'Placeat repellendus aspernatur omnis. Voluptate et et porro harum exercitationem. Occaecati quisquam architecto beatae quaerat laborum maxime.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(20, 'qui nihil', 'qui-nihil', 'Nostrum est quam aperiam iusto sint in voluptas. Et quis quaerat sunt dolores enim unde delectus et. Est voluptas officiis excepturi dolores perspiciatis molestiae. Aut delectus suscipit aut animi illo nostrum est tempore. Atque nulla mollitia blanditiis sed nobis aut ipsam aliquid.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(21, 'et molestiae', 'et-molestiae', 'Optio corporis aut quibusdam debitis consequatur ratione. Ratione et consequatur rem magni omnis odio. Asperiores quas iste molestiae minima dignissimos. Alias voluptatem omnis voluptatem sed aliquam iure.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(22, 'dolorem dignissimos', 'dolorem-dignissimos', 'Aliquam corporis harum natus iure qui quas omnis id. Est velit cupiditate minima rem consequatur voluptatem. Temporibus nostrum et et rerum. Eligendi nulla quos nihil.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(23, 'laudantium aspernatur', 'laudantium-aspernatur', 'Voluptatem laudantium nihil animi labore quo enim praesentium. Corporis ut necessitatibus fugit possimus iure dolorem. Porro deserunt nisi quos quos possimus id vero.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(24, 'reiciendis maxime', 'reiciendis-maxime', 'Libero qui non ab eos. Dolore fugit autem ut totam ut hic beatae. Dolorem quis aliquid et tenetur voluptatum nesciunt a. Aut consequatur accusamus neque libero blanditiis sunt.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(25, 'inventore qui', 'inventore-qui', 'Eos nulla ut dolor nemo. Quo sed ratione consequuntur. Error distinctio natus vel aperiam amet magnam. Atque aut molestiae sint saepe maxime porro.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(26, 'expedita at', 'expedita-at', 'Quae at sed voluptatem voluptas hic. Non ratione provident et dignissimos rerum minima minima. Ex atque quo perferendis. Impedit nostrum sit similique et neque doloremque.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(27, 'et minima', 'et-minima', 'Facere similique repellat quia a doloribus. In iure ad libero cumque praesentium voluptas. Voluptatem doloribus velit ducimus non minima alias vitae doloribus. Labore unde nobis eum unde labore iste.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(28, 'perferendis dolor', 'perferendis-dolor', 'Voluptatem et nam quaerat ex necessitatibus vero. Accusamus magni consectetur et accusamus fuga quam et et. Repellat quisquam expedita illo aut est placeat odit. Ipsum quibusdam voluptatem officia quibusdam maiores omnis vel.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(29, 'nobis provident', 'nobis-provident', 'Et non maiores est autem hic rerum similique. Sed veritatis impedit voluptates. Nihil ullam alias quas dolorem.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(30, 'rerum ut', 'rerum-ut', 'Placeat aut consequuntur fugit. Eius minima saepe ullam accusantium voluptatem. Quia natus aspernatur pariatur assumenda in. Autem dolor ipsum dicta ea.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(31, 'sed ut', 'sed-ut', 'Quaerat nesciunt ab neque error et. Qui omnis fuga necessitatibus voluptates iste nesciunt veniam dolore. Excepturi sed omnis ullam quaerat. Adipisci labore voluptas qui non quis minima.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(32, 'eum autem', 'eum-autem', 'Blanditiis iste voluptas similique illum voluptate iusto quis temporibus. Necessitatibus dolor in et saepe omnis enim reprehenderit. Enim modi nulla architecto nam qui. Magnam nesciunt eius nihil nam.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(33, 'sint ad', 'sint-ad', 'Voluptas atque praesentium optio at distinctio culpa neque eos. Mollitia dolor debitis aut sed placeat quia est. Sapiente dolor dolores officia fugiat perspiciatis. Porro ipsa rerum non. Inventore id fuga ea expedita in.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(34, 'molestiae voluptatem', 'molestiae-voluptatem', 'Nam velit consequatur fuga tempore saepe eum. Hic quasi consequuntur et repellat mollitia provident vel. Rerum ea voluptatem dolor totam nemo quia velit.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(35, 'numquam sed', 'numquam-sed', 'Possimus enim harum et dolores est eligendi ipsa. Perferendis voluptatem quaerat qui et nesciunt. Hic voluptatibus voluptas saepe minus. Veritatis ut corporis exercitationem.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(36, 'sit quia', 'sit-quia', 'Delectus dolore doloribus ut dolor aliquid consequuntur. In deleniti aut sed quibusdam omnis. In tenetur optio culpa est dolor esse.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(37, 'nobis magnam', 'nobis-magnam', 'Est ipsum laboriosam dolorem. Fugit beatae voluptatem ipsum laboriosam culpa quia consequuntur. Praesentium et delectus optio accusamus harum expedita.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(38, 'nihil et', 'nihil-et', 'Nihil maiores laboriosam voluptas omnis dolorum doloribus quasi aspernatur. Sed ut omnis voluptate consequatur fugiat. Cumque quia nostrum mollitia. Sed doloribus omnis dolorum unde.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(39, 'harum id', 'harum-id', 'Magni iste ex voluptates et non. Ea maxime cupiditate nesciunt corrupti. Et et et nihil optio adipisci molestiae expedita minima. Explicabo aspernatur aut est et praesentium.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(40, 'quia dolores', 'quia-dolores', 'Dicta quisquam accusamus cum ut est quis dignissimos consequatur. Voluptatem ipsa voluptatem sit et dolorem inventore dolorum. Autem expedita a ut rerum eveniet illum non.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(41, 'neque omnis', 'neque-omnis', 'Quisquam esse consequatur quaerat eveniet esse. Accusamus pariatur quia temporibus quaerat amet. Recusandae est quaerat modi officia dolorem. Aut aliquam nesciunt expedita ad.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(42, 'nulla dolores', 'nulla-dolores', 'Voluptatibus est laudantium asperiores labore sunt ab. Rerum cumque consequatur consequuntur distinctio animi enim veritatis. Delectus est velit porro cupiditate culpa quidem. Asperiores et impedit et hic rerum repellendus nihil aspernatur.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(43, 'repellendus ipsam', 'repellendus-ipsam', 'Quia aut corporis error. A eos deserunt accusamus doloribus rerum nulla facilis. Consectetur sunt quaerat officiis qui ipsum numquam qui.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(44, 'et quo', 'et-quo', 'Nobis animi ducimus voluptatem temporibus vel. Eum excepturi ut eveniet magni dolorem ut et. Maxime ex voluptatem molestiae et quidem veritatis.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(45, 'adipisci dolor', 'adipisci-dolor', 'Nemo nihil aut corporis facere eum. Dolores totam asperiores explicabo ut. Exercitationem nostrum deserunt et repellat modi ut voluptatibus quia. Et ut quod omnis cumque corporis adipisci earum.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(46, 'at sed', 'at-sed', 'Fugiat quia est esse magni quas. Possimus ex non ut qui. Quas necessitatibus veritatis maxime et. Et non dolorum et.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(47, 'nulla deserunt', 'nulla-deserunt', 'Hic eum et atque tenetur. Dolorem voluptas architecto ipsam est unde recusandae. Ut et repellat nihil. Consequuntur tempora est quae voluptates nostrum assumenda vel.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(48, 'eos est', 'eos-est', 'Temporibus qui est facere tempore praesentium nobis nihil. Est expedita et voluptatem possimus. Labore qui perspiciatis quisquam aut molestias. Voluptatem vel optio asperiores ut vitae. Culpa debitis et voluptas voluptatem ipsum quo enim.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(49, 'fugit labore', 'fugit-labore', 'Animi corporis exercitationem quidem nostrum unde. Itaque sequi expedita rerum quasi autem. Amet deserunt impedit et perspiciatis.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(50, 'excepturi maxime', 'excepturi-maxime', 'Qui itaque et ratione temporibus. Est ullam nisi ut qui. Id dolores quaerat natus itaque. Natus dolor quibusdam sed ullam voluptate pariatur sint.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(51, 'numquam delectus', 'numquam-delectus', 'Qui voluptatem rem velit qui odit et. Molestias eveniet commodi laborum voluptas animi animi.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(52, 'nostrum labore', 'nostrum-labore', 'Expedita exercitationem omnis exercitationem magnam. Est recusandae modi vel distinctio dolor tempora dolorum. Quae atque dolor odio odio eum ut quasi.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(53, 'maxime quisquam', 'maxime-quisquam', 'Ea sunt labore in ex nam sit. Quaerat dolor id omnis culpa qui laborum ea. Nihil labore amet vel quia iste porro. Mollitia dolorem nihil quasi sit eos sint.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(54, 'qui amet', 'qui-amet', 'Exercitationem ea ad quae inventore. Magnam quo assumenda voluptatem quae eos et. Qui exercitationem adipisci quis impedit ut.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(55, 'repellendus consequuntur', 'repellendus-consequuntur', 'Voluptatem rerum assumenda ab id dolore. Facilis vero provident est in magnam enim. Aut atque exercitationem aut.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(56, 'quam facilis', 'quam-facilis', 'Iusto adipisci dolor consequatur aut consectetur consequuntur qui incidunt. Consequatur consequatur suscipit quis illo voluptatum molestiae nobis. Qui impedit maxime nihil tempore sit temporibus.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(57, 'exercitationem reprehenderit', 'exercitationem-reprehenderit', 'Odit omnis dolor iste numquam. Et eligendi et aut magni. Unde et impedit recusandae blanditiis minus totam.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(58, 'rem temporibus', 'rem-temporibus', 'Dolorem ipsam nobis quisquam excepturi minima. Culpa officiis voluptatem dolorem cumque repellat earum qui.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(59, 'odio labore', 'odio-labore', 'Et et adipisci modi vero quibusdam nihil consequatur. Nesciunt dolores sed est qui voluptates quas laboriosam cum. Ab est quod tempora nostrum dolores molestias consequuntur.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(60, 'alias qui', 'alias-qui', 'Quis facere laboriosam quasi minus quia non. Eum et laboriosam hic recusandae laudantium repudiandae. Doloremque quod eius totam minus. Est dicta commodi velit esse est quis vitae.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(61, 'soluta perferendis', 'soluta-perferendis', 'Tenetur est error a quaerat in doloribus. Dolores aliquam quod laboriosam dolor est sequi. Non temporibus nihil nobis sequi numquam aut. Omnis ut placeat velit aspernatur porro dolorem possimus.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(62, 'quibusdam ducimus', 'quibusdam-ducimus', 'Illo sit nihil voluptatibus sint beatae. Reiciendis voluptate eos itaque beatae. Ducimus est possimus minima et aspernatur labore pariatur. Quo esse quia quia.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(63, 'quod excepturi', 'quod-excepturi', 'Voluptatem quae non facilis harum qui. Nostrum odit asperiores neque ut nesciunt necessitatibus qui. Nesciunt dolore omnis enim quas cupiditate nobis quidem saepe. Repellat aut eveniet dicta quia et voluptas. Omnis voluptatum vel et velit.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(64, 'repellat officiis', 'repellat-officiis', 'Illum nobis dolores qui dolore rerum dicta. Eos delectus sint officiis et voluptate qui. Est esse dolor omnis rerum facilis.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(65, 'temporibus sed', 'temporibus-sed', 'Et blanditiis aut quae vitae voluptatem. Earum eum accusantium neque sit facere consequatur et. Aspernatur quia officia molestias qui. Dignissimos est et est est est.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(66, 'ex voluptatum', 'ex-voluptatum', 'Inventore praesentium molestiae est. Illo ea fugit distinctio tempore nobis ut quo. Deserunt enim eligendi dignissimos dolore. Assumenda et accusamus earum et. Nesciunt aliquid veritatis aut incidunt quibusdam eaque.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(67, 'nobis enim', 'nobis-enim', 'Sunt animi quia magnam voluptas neque culpa optio. Qui molestias suscipit ex et. Asperiores maxime quod ducimus impedit debitis ea nesciunt vel.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(68, 'esse quo', 'esse-quo', 'Qui quasi rerum est atque eius reprehenderit. Molestiae vel laboriosam explicabo et. Accusantium tempora qui et totam at repellat non dolorum.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(69, 'ea repudiandae', 'ea-repudiandae', 'Eos sed enim eos veritatis. Doloribus sed magni ullam rerum nobis. Dolores quos id ut molestiae in. Vitae ut quas sed eveniet temporibus dolorem.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(70, 'quisquam sit', 'quisquam-sit', 'Cupiditate consequatur voluptates ab dolor. Et unde error aut molestiae eum. Distinctio optio quasi praesentium quidem tempore omnis.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(71, 'quidem soluta', 'quidem-soluta', 'Iste minus ipsum voluptatibus fugiat sint et qui iure. Omnis vitae perferendis nostrum amet. Tempore ut temporibus quis dignissimos qui sed tenetur. Non expedita assumenda porro id at. Pariatur ea quam cum maxime qui minus qui doloremque.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(72, 'est neque', 'est-neque', 'Quia at velit aut rem assumenda sint dolorem. Illum distinctio est incidunt non. Est harum exercitationem consequatur. Repellendus fugiat qui omnis earum.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(73, 'hic voluptatem', 'hic-voluptatem', 'Necessitatibus ab voluptate facere dignissimos voluptas sapiente. Repudiandae maiores pariatur et quas quia. Iusto sunt repellat minus nihil.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(74, 'voluptatem voluptatem', 'voluptatem-voluptatem', 'Possimus dolorem facere vero. Repellendus odio enim omnis nam numquam. Ut aut ut odit.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(75, 'optio deleniti', 'optio-deleniti', 'Earum sint rerum voluptate aut quasi. Delectus eaque corrupti atque fuga voluptatem et expedita inventore. Laborum dolorem repellat sint veritatis. Maiores quo voluptatem nobis delectus ut. Tenetur et quis ducimus vero non.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_20_000001_create_categories_table', 1),
(5, '2024_03_20_000002_create_products_table', 1),
(6, '2024_03_20_000003_create_product_variants_table', 1),
(7, '2024_03_20_000004_create_tags_table', 1),
(8, '2024_03_20_000005_create_orders_table', 1),
(9, '2024_03_20_000006_create_order_items_table', 1),
(10, '2024_03_20_000007_create_reviews_table', 1),
(11, '2025_02_15_114146_add_image_to_products_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('pending','paid','shipped','delivered','cancelled') NOT NULL DEFAULT 'pending',
  `shipping_address` text NOT NULL,
  `billing_address` text NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `alert_threshold` int(11) NOT NULL DEFAULT 5,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image`, `price`, `category_id`, `stock_quantity`, `alert_threshold`, `is_active`, `meta_title`, `meta_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tenetur enim omnis', 'tenetur-enim-omnis', 'Et quasi fugit consequatur praesentium. Laboriosam enim ullam est vel. Officia dolores illo est sed dolor voluptas. Sed voluptate aut et eos deleniti mollitia dolores.\n\nReprehenderit molestias enim est. Aspernatur facilis magnam modi qui repudiandae ducimus. Veniam vitae aut beatae esse. Quae quis in placeat praesentium sint natus et ullam. Tempora voluptatem eveniet rem qui.\n\nUllam ducimus saepe suscipit occaecati quod rerum. Eligendi exercitationem delectus reiciendis rerum possimus alias.', NULL, 64.86, 6, 64, 5, 1, 'illo quod asperiores dolores', 'Cum aut reprehenderit sed ipsum voluptatem omnis placeat.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(2, 'quisquam dolor ratione', 'quisquam-dolor-ratione', 'Soluta et qui voluptate architecto et qui numquam. Nobis ad ipsum voluptas cupiditate qui. Ut ea a expedita similique quis fuga.\n\nAlias repellendus minima consequatur fugiat quae quia. Praesentium et laboriosam sint iste dolor itaque. Dolor molestiae esse itaque id.\n\nBeatae delectus eos corporis repellat. Itaque inventore dolorem qui non. Minus perspiciatis quasi odit architecto. Hic magnam et quia nulla est. Odio assumenda est eum delectus illum tempora aut.', 'default-product.png', 341.58, 7, 62, 5, 1, 'ut neque occaecati est', 'Molestias at ipsam voluptatem ea perspiciatis id.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(3, 'eos et voluptas', 'eos-et-voluptas', 'Consequatur ut beatae alias. Quidem occaecati officia impedit ipsa. Eius ad deleniti omnis.\n\nVel blanditiis commodi nihil error id enim soluta. Voluptatem voluptate cum eos et sapiente. Facilis pariatur illo nemo saepe deleniti ex id reiciendis. Alias vitae laborum voluptatibus aliquid et. Enim doloremque magni et maxime voluptas.\n\nCum voluptate est molestiae impedit. Sit aut enim aliquam aut voluptas aut animi est. Ab placeat et et consequatur.', 'default-product.png', 179.17, 8, 80, 5, 1, 'et vel expedita eos', 'Nobis quia est id asperiores inventore.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(4, 'velit maiores occaecati', 'velit-maiores-occaecati', 'Rerum ut cum quaerat esse molestias. Tenetur pariatur possimus recusandae aut temporibus incidunt. Nesciunt optio velit qui.\n\nIpsa delectus atque sed hic omnis. Earum nam voluptatem est id. Dolores ut velit maxime id voluptatum nostrum temporibus.\n\nNecessitatibus earum non pariatur saepe. Exercitationem quis esse rem ea laborum voluptatem. Sit voluptatem dolor quae et laudantium dicta quasi.', 'default-product.png', 202.00, 9, 20, 5, 1, 'sit tempora velit ut', 'Eius ut est nesciunt ut corrupti error.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(5, 'aut voluptas pariatur', 'aut-voluptas-pariatur', 'Recusandae enim eius id. Omnis voluptates officia totam repellendus ut officiis et. Fuga et sunt libero tenetur et. Deserunt voluptatem eaque accusantium quia et in consequatur illum.\n\nMinus sed incidunt aut quae officia ea. Aut modi tempore enim sequi tempore est assumenda. Iure quisquam aut inventore culpa qui.\n\nImpedit repudiandae aliquid qui et omnis et. Ut quo ut numquam rerum sequi aliquam quia. Tenetur qui incidunt tenetur voluptatibus sit sint corporis voluptatem.', 'default-product.png', 476.62, 10, 87, 5, 1, 'voluptatem aut et aut', 'Et quibusdam atque eum sed voluptatem nihil iure.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(6, 'adipisci quod non', 'adipisci-quod-non', 'Ut aliquam consequatur voluptatem ipsum. Et distinctio pariatur omnis et. Eos et inventore id.\n\nQuasi odio atque molestiae sunt. Eos ratione maxime inventore praesentium non eos dolore provident. Dolorum minus doloremque suscipit quos.\n\nNobis error perspiciatis delectus aliquam voluptatibus. Dolores consequatur ea iusto et quod. Et magni dolorum voluptas architecto.', 'default-product.png', 221.22, 11, 46, 5, 1, 'aut iusto nostrum consequatur', 'Quibusdam assumenda asperiores iusto harum ullam aut voluptas.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(7, 'laboriosam qui est', 'laboriosam-qui-est', 'Cum quae omnis non. Porro sed maxime pariatur error nihil accusamus perferendis. Magnam quae magnam enim similique soluta maiores autem. Voluptatem maiores earum voluptas sed quam sapiente.\n\nEos sapiente rerum ea ut magni temporibus. Consequatur ab ex sit nulla nemo. Repudiandae beatae laborum autem nobis inventore ipsum atque quis.\n\nSunt qui pariatur autem ducimus. Quos et cupiditate et in numquam deleniti. Ut sint ducimus cupiditate et impedit. Reprehenderit magni et voluptatum dolor culpa omnis qui.', NULL, 86.68, 12, 6, 5, 1, 'omnis totam excepturi qui', 'Enim ullam aut reprehenderit reprehenderit recusandae nobis sint.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(8, 'beatae omnis facilis', 'beatae-omnis-facilis', 'Consequatur dolorum praesentium est repellendus. Perspiciatis doloribus enim tenetur repellat repellat. Ab delectus voluptas dolores maiores qui doloribus. At voluptas magni culpa expedita voluptas sequi labore.\n\nFacilis aspernatur porro nihil et eaque mollitia quaerat. Deleniti qui totam non iste. Aut optio cumque quisquam optio.\n\nFugit est doloremque aliquam aut. Id quidem sint aliquam optio magni odio placeat. Consequatur et excepturi sit et voluptatem occaecati. Vitae ex blanditiis saepe qui reprehenderit quasi inventore.', 'default-product.png', 154.91, 13, 55, 5, 1, 'veniam sapiente reiciendis itaque', 'Minus accusantium et dignissimos eum ab in harum.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(9, 'sequi eius perspiciatis', 'sequi-eius-perspiciatis', 'Magnam corporis aliquid vitae vel. Hic tenetur iure aut quia amet qui.\n\nNostrum consectetur voluptas totam et et. Molestias ad deleniti aut ratione rerum. Quasi non voluptate eius quod ullam accusantium. Ad consequuntur ratione omnis et aliquid provident iure.\n\nVoluptatem veritatis non consequatur maxime eligendi illo. Sapiente nisi minus totam non ab placeat. In officia est exercitationem doloremque et maxime dolores tempora.', 'default-product.png', 558.96, 14, 41, 5, 1, 'eos similique sequi accusantium', 'Aperiam aperiam fuga ad blanditiis sapiente et.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(10, 'modi dolor ea', 'modi-dolor-ea', 'Fuga aut modi voluptates minima deleniti. Tempore nisi dolor aut. Delectus et provident inventore est et. Architecto architecto ut consequatur aut amet consequuntur ut.\n\nConsequuntur voluptatem odio ducimus sit assumenda. Quam nobis ratione assumenda laborum. Necessitatibus minima ut rem autem repellendus ipsa corrupti. Ut non illo deserunt atque.\n\nEt quidem non itaque molestiae eum. Magnam necessitatibus quisquam reiciendis sequi nihil. Eum dolor unde explicabo qui. Sint doloremque pariatur tempore omnis itaque sed.', NULL, 376.63, 15, 33, 5, 1, 'fugiat aut id a', 'Occaecati praesentium omnis fugit aut.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(11, 'ut rerum nostrum', 'ut-rerum-nostrum', 'Qui sequi fugiat repudiandae assumenda impedit itaque at. Rem ratione dolor eveniet dolorem molestiae atque. Dolores ea corrupti tempora officia ab recusandae. Quae non velit eum sit eligendi. At quia qui distinctio explicabo dolores natus quo.\n\nAut aut facilis quas eius facilis earum. Aspernatur et molestiae quam occaecati repellat vel quas.\n\nFugit tempore placeat repudiandae veritatis optio fuga. Minus dolor illum quis ducimus modi nam qui facilis. Quia eaque iste harum rerum et architecto.', NULL, 177.79, 16, 81, 5, 1, 'quo inventore sit vitae', 'Cupiditate veritatis incidunt in qui dolorum beatae eius.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(12, 'adipisci quibusdam minus', 'adipisci-quibusdam-minus', 'Qui soluta itaque dolores ipsam mollitia odit et. Itaque nulla nostrum iusto tempora rerum qui. Suscipit placeat eveniet qui excepturi. Ipsum consectetur nobis tenetur perferendis tempora laudantium eos. Maiores sint rem sit nam dolores et.\n\nDolores repellat id sit corporis molestiae cumque numquam repellendus. Sed nihil ullam autem sit dolore ex. Cupiditate eum doloremque iusto et omnis sit dolore. Qui dolorem ut esse dolores enim inventore non voluptas.\n\nEa et quasi totam cumque consequatur. Similique dolor numquam dolores minus. Dolores libero rerum modi ut aut. Placeat velit a numquam perferendis facere voluptatum. Facere ab accusantium est consequatur culpa quia.', NULL, 60.48, 17, 45, 5, 1, 'blanditiis veritatis doloremque unde', 'Non reiciendis impedit voluptatem vero ab accusantium illum.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(13, 'autem aut commodi', 'autem-aut-commodi', 'Repellendus nisi ducimus modi laudantium. Cumque soluta quis quam molestias rerum dolores unde. Et sed qui eum repellat qui.\n\nQuos reiciendis eius id iure voluptatem expedita. Consectetur culpa a consequatur similique autem dolor suscipit. Consequatur minus at in voluptatem consequatur. Totam repudiandae aliquid ut tempore voluptatem soluta tempora.\n\nVoluptatem quia aut voluptatem ipsum perferendis. Cum quidem odit repellendus explicabo. Perspiciatis exercitationem vero quae voluptas et ut. Quas aperiam id velit.', NULL, 867.85, 18, 1, 5, 1, 'laudantium quidem doloribus magni', 'Eos odit porro voluptas porro iste sapiente.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(14, 'dolor repellendus et', 'dolor-repellendus-et', 'Distinctio quis sunt non. Praesentium est consequuntur repellendus totam corrupti voluptatem. Ducimus est non magni dicta autem.\n\nVelit et sit amet velit. Id laudantium exercitationem consequatur enim numquam et. Hic nulla et tempore magni eos quaerat.\n\nEst enim necessitatibus optio vero incidunt aut voluptate sed. Quam sit ea fugit in sit cum quia corrupti. Sit quo enim itaque laudantium veniam.', NULL, 205.82, 19, 37, 5, 1, 'aut aut nostrum necessitatibus', 'Exercitationem dolorem est laboriosam quasi.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(15, 'velit aliquid dignissimos', 'velit-aliquid-dignissimos', 'Reprehenderit est quaerat modi ea repudiandae et. Fuga vel sint et sunt ipsam nostrum dolor nulla.\n\nEt dolorem quidem et ut deserunt laborum. Natus excepturi qui sed asperiores. Veniam molestiae quam animi cupiditate dolorum illo et.\n\nQui sequi sequi voluptatem. Rerum sed vero pariatur sunt quia. Dolores enim dolor consequatur optio.', NULL, 825.41, 20, 16, 5, 1, 'dolore ut est dignissimos', 'Error ut nostrum et similique possimus voluptatum ut doloremque.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(16, 'culpa blanditiis exercitationem', 'culpa-blanditiis-exercitationem', 'Hic impedit minus minima aut nisi quasi porro. Sed illo quasi sunt quia quae inventore. Minima quos quo ipsam. Non numquam possimus libero ut explicabo dolores earum. Temporibus eum ipsa omnis dolores.\n\nUt sint occaecati voluptas similique mollitia ut tempore. Sint sequi repudiandae nesciunt saepe optio. Eum excepturi excepturi occaecati quia esse iusto magni nihil.\n\nEum dignissimos at sit impedit. Qui enim error in in corrupti accusantium quo sit. Eveniet quis doloremque suscipit et aut magni.', NULL, 79.49, 21, 88, 5, 1, 'voluptates voluptatibus amet dolor', 'Odio eaque aut vero id.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(17, 'velit quia iure', 'velit-quia-iure', 'Id et mollitia tempora recusandae laudantium veniam. Et debitis veritatis rerum rerum. Ut harum ex quis incidunt provident nostrum repellat. Alias iste quae ab dolore repudiandae non nam sed.\n\nMaxime temporibus nulla non qui quis. Et minus aut amet odit molestiae incidunt. Velit debitis eos deserunt ad quasi.\n\nRepellat omnis doloremque accusantium tempora. Exercitationem libero ducimus voluptas voluptas adipisci voluptatem et et. Dolores impedit laudantium qui cum.', NULL, 288.21, 22, 68, 5, 1, 'iure praesentium et sit', 'Officia qui architecto a perferendis.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(18, 'qui nulla eligendi', 'qui-nulla-eligendi', 'Aliquam hic aspernatur sapiente distinctio. Sequi nulla in earum occaecati sapiente mollitia.\n\nQuia vel sed ut earum exercitationem. Eum distinctio temporibus reprehenderit quaerat itaque.\n\nEnim sit omnis placeat et est odit neque. Adipisci vel autem dignissimos ipsum animi. Odio natus ut hic et quia numquam autem. Nemo quos ducimus impedit enim itaque error cupiditate.', NULL, 356.63, 23, 41, 5, 1, 'quis vel est eius', 'Delectus culpa dolorem doloribus.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(19, 'maxime praesentium velit', 'maxime-praesentium-velit', 'Sit soluta facilis laudantium quam soluta molestiae. Quos est aspernatur itaque eaque reiciendis et sed. Labore voluptas qui libero dolores quae animi. Aspernatur maxime deserunt qui molestiae odio.\n\nVoluptatem ullam placeat minima reiciendis consequatur mollitia repudiandae. Omnis sed aut exercitationem provident et. Illum qui quia ut. Saepe quia nostrum aliquid mollitia perferendis quia aliquid.\n\nMinima fuga nam est et reiciendis voluptates et. Ut explicabo sunt sit consequatur laudantium nesciunt. Et non ex architecto dolore est. Molestiae dolores rerum totam et hic.', NULL, 52.25, 24, 52, 5, 1, 'libero et earum voluptas', 'Ut magni delectus voluptatibus magnam.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(20, 'ex quae voluptate', 'ex-quae-voluptate', 'Quis labore harum perferendis eum. Delectus voluptatibus ut accusantium cupiditate ducimus sunt aperiam. Minus et molestias ut illo debitis qui velit quis. Hic molestias voluptatem recusandae consequatur tempore eaque velit accusantium.\n\nIn qui ut numquam expedita iste impedit dolores. Non aliquid ea consequatur praesentium. Nulla odit nam repellat. Pariatur dolorem minus non tempora necessitatibus officia inventore.\n\nError odit corporis sapiente ut mollitia voluptas. Ipsum ea veritatis est in dolorem ex. Ut perspiciatis sed autem quia.', NULL, 303.67, 25, 9, 5, 1, 'ipsa adipisci et quia', 'Ea facilis vel aut accusamus nobis velit expedita.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(21, 'cum in et', 'cum-in-et', 'Consequatur molestiae unde at non eveniet ipsum. Tempore ipsa quia corrupti aliquam. Laudantium consequatur itaque qui architecto sunt. Voluptas sunt est illo perferendis iste quibusdam.\n\nEum ad ex explicabo odit quod. Doloremque consectetur voluptatem officia amet odio voluptatem. Eius nihil est eum consequatur pariatur ratione unde velit. Voluptates accusantium magnam iste iusto esse praesentium voluptatum. Deleniti nam rem illo qui et qui.\n\nIusto consequatur laboriosam dolore in autem. Magnam doloremque quia qui in.', NULL, 404.66, 26, 80, 5, 1, 'omnis iure facere rerum', 'Et et aliquid porro sunt asperiores.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(22, 'sit ut asperiores', 'sit-ut-asperiores', 'Voluptatem ipsam vitae enim consequatur quia culpa fugit. Alias aut nulla magni explicabo quasi. Facere deleniti sit laboriosam omnis. Esse et cupiditate sint dolor veritatis quod eos. Et ea enim quo aut voluptates.\n\nEarum maxime dolore rerum voluptatibus. Doloribus dolorum ab perspiciatis. Sit quis non maxime ipsam. Voluptatibus ut necessitatibus reprehenderit.\n\nUnde facilis id magni sit. Qui doloribus voluptatibus qui qui optio earum numquam. Quos sit iure non sunt debitis magni. Aut suscipit harum et laboriosam doloribus.', NULL, 299.80, 27, 83, 5, 1, 'adipisci rerum non quos', 'Amet velit magni aliquid mollitia dolor voluptas.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(23, 'placeat ut qui', 'placeat-ut-qui', 'Ut omnis voluptas fuga et eveniet recusandae. Earum est dignissimos non qui odit. Omnis et eveniet cupiditate autem voluptas nemo quo. Ab necessitatibus vel et cupiditate quia nemo ex sed.\n\nNesciunt qui debitis quas esse in autem aut. Nulla provident accusamus voluptate expedita vel. Ut facilis modi libero. Odio earum facere ea exercitationem numquam cum.\n\nAspernatur qui voluptatem incidunt. Perspiciatis magnam mollitia est iste. Eum soluta delectus corrupti sed id. Iure officiis magnam facilis officiis.', NULL, 979.83, 28, 31, 5, 1, 'itaque rerum laboriosam debitis', 'Nesciunt omnis magni et eum nihil reiciendis.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(24, 'illo inventore voluptatem', 'illo-inventore-voluptatem', 'Incidunt rerum consequatur quis. Assumenda asperiores minima voluptas natus enim molestiae animi. Odio amet iste accusantium deleniti iure sit. Quisquam ipsam perspiciatis molestiae eos officia.\n\nQui voluptatibus in qui qui modi ex. Laborum non placeat odit porro corporis sed. Reprehenderit ex eum et ipsam. Quia ullam aliquam itaque.\n\nExplicabo eum velit fugit dicta laborum et sed. Asperiores debitis et suscipit molestiae et voluptatem non. Iste beatae blanditiis fugiat maxime et. Laboriosam et doloremque perspiciatis quasi laborum quae.', NULL, 593.71, 29, 28, 5, 1, 'velit et dolore aperiam', 'Distinctio voluptatem inventore quis explicabo.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(25, 'corrupti facilis cumque', 'corrupti-facilis-cumque', 'Maxime enim ipsa ut debitis dolores qui. Quas veritatis odit molestiae qui temporibus similique. Veniam pariatur quam aut ad odit cum ab.\n\nEt reprehenderit eum aliquid quidem. Dolores debitis vel dolor dolorem illo. Accusantium voluptatem reiciendis fuga nihil iusto quidem expedita. Quisquam maiores vel non voluptatem id explicabo ad voluptas.\n\nTempore consectetur quis tempore dolores architecto quidem voluptatem. Ea facilis rerum itaque recusandae ea quod asperiores quam. Sit illum at cum sed ipsum. Commodi impedit at ut repudiandae magnam rerum. Earum nemo exercitationem quaerat asperiores culpa rerum.', NULL, 724.64, 30, 30, 5, 1, 'sed nesciunt pariatur beatae', 'Voluptas est commodi reiciendis ipsa explicabo excepturi.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(26, 'ut enim tempore', 'ut-enim-tempore', 'In nulla quis accusamus. Fugiat delectus eius sunt soluta molestias. Sit vel dolores nobis aspernatur facere id aut rerum. Accusamus voluptatem quis enim quas.\n\nQuis at sequi dolore impedit accusamus maiores. Nostrum minima totam sequi aut.\n\nLibero quibusdam maiores tempora rerum temporibus aspernatur officiis. Nemo quaerat inventore dolorem fugit repellendus. Ipsam voluptas voluptates aliquid quas rem quae molestias.', NULL, 409.43, 31, 0, 5, 1, 'voluptatibus ut ducimus iste', 'Laboriosam animi ipsam quia fugiat.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(27, 'consequatur voluptatum explicabo', 'consequatur-voluptatum-explicabo', 'Rerum illum minus ipsam consequatur accusantium. Est asperiores voluptas eum quidem culpa. Veritatis accusamus ab sequi et. Quia est eaque perspiciatis deserunt doloribus modi.\n\nQui rerum exercitationem quae consectetur laboriosam. Et nesciunt non ullam quas voluptatem ad est.\n\nMolestias aspernatur culpa voluptatem molestiae et dolor. Facere ipsa veritatis dolorum tempore accusantium et officia. Harum sequi aliquid eius repellendus pariatur praesentium. Rerum suscipit nobis dolorum magnam et. Et beatae dolor temporibus tempore voluptate molestias.', NULL, 232.92, 32, 63, 5, 1, 'quidem iure ut fugit', 'Similique repellendus illo eaque.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(28, 'autem a expedita', 'autem-a-expedita', 'Tempora at inventore dicta impedit. Dicta error quas ipsa et nostrum magnam. Qui et corrupti ea quia consectetur.\n\nQuod molestiae voluptas tempora impedit molestiae nemo et. Vero dolores reprehenderit at consequatur et nemo quia. Qui vel ad perferendis veritatis rerum. A et id provident veritatis rerum id eaque.\n\nNon eos animi et praesentium ipsam. Voluptatum dignissimos est non magni sed architecto dolore ab. Assumenda et eaque eius eaque aut.', NULL, 782.98, 33, 41, 5, 1, 'ea quis maiores temporibus', 'Et voluptas quas minima placeat eum.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(29, 'nemo ut mollitia', 'nemo-ut-mollitia', 'Quia qui autem delectus ut ipsa quis numquam est. Qui quas ea ipsum dolorum. Dolorum ullam rerum est et qui dolorem error in.\n\nEius consequuntur dicta ducimus et autem omnis doloremque. Eaque est beatae ipsam necessitatibus hic et autem facere. Ut et iste porro.\n\nPariatur nihil vero ut ipsam perspiciatis. Sunt qui enim inventore quia molestiae non. Provident aut veritatis exercitationem harum.', NULL, 758.51, 34, 67, 5, 1, 'dolor iure quaerat sapiente', 'Est eos dolorem temporibus quibusdam qui voluptates.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(30, 'rem et id', 'rem-et-id', 'Cumque eius reiciendis et iusto eum libero. Nostrum ipsa aliquam aut repellendus. Debitis amet deleniti est impedit.\n\nMolestiae animi non odio nulla quaerat. Corrupti quo in porro. A quas ut possimus dolorem repudiandae expedita eius.\n\nVoluptatibus cum error odit ullam aspernatur officiis. Assumenda ducimus ullam enim sit.', NULL, 233.95, 35, 16, 5, 1, 'eos ex amet et', 'Reiciendis assumenda deserunt pariatur accusamus nihil nihil nemo.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(31, 'delectus sequi et', 'delectus-sequi-et', 'Et cum perferendis earum et sit temporibus. Ea odio ipsa totam consequatur et iste. Aperiam nihil laboriosam aut sit sint.\n\nIusto eos consequatur aut deserunt. Recusandae qui tenetur iure tempore voluptates. Quia autem natus eos et pariatur distinctio natus.\n\nEt eos ea facere accusamus excepturi voluptatem labore. Accusamus est cumque earum qui qui harum. Harum fugit tempore repudiandae natus dolorum.', NULL, 784.91, 36, 50, 5, 1, 'dolore sequi harum totam', 'Recusandae quam soluta quis at.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(32, 'ut reiciendis sit', 'ut-reiciendis-sit', 'Officia dolorum harum rerum consequatur atque. Est ut quo voluptas hic. Velit dolores ab accusantium voluptatem illum. Consequatur porro voluptatem aliquam quam.\n\nEaque sunt cumque sit et consequatur pariatur. Cupiditate quis commodi culpa et omnis. Officiis voluptatem accusamus rerum rem.\n\nQui omnis facere blanditiis iusto et debitis architecto. Fugiat ut quo esse quis sed nulla non. Voluptas numquam sit vel et temporibus. In animi quod ad est mollitia nostrum.', NULL, 886.71, 37, 18, 5, 1, 'consequatur dolorem nemo libero', 'Autem exercitationem veritatis nihil tenetur est quia.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(33, 'atque eveniet nemo', 'atque-eveniet-nemo', 'Architecto aut quasi dolore quia. Exercitationem molestias ad odio magnam et quis dolore. Excepturi quasi qui alias beatae et ipsam. Non debitis quas eligendi fugiat quos cumque delectus.\n\nQuis qui voluptatibus assumenda a. Autem expedita dolorum eligendi accusantium aperiam id reiciendis. Porro quo molestiae quod sit.\n\nEt ipsam temporibus culpa vero laborum. Quod tempore ut at consequatur ut cumque rem. Aut voluptatibus illo aperiam maiores adipisci. Commodi quod vero nesciunt in consequatur repellat.', NULL, 368.46, 38, 46, 5, 1, 'voluptatem dolor et facilis', 'Recusandae eos enim sequi doloremque dicta eum.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(34, 'aut illo eius', 'aut-illo-eius', 'Quae et itaque aut. Tempora consectetur qui voluptatum occaecati in enim. Doloribus ducimus sit quaerat iusto.\n\nEst eligendi voluptas nihil. Qui rerum laudantium atque. Magni eligendi saepe commodi voluptatem error.\n\nPlaceat sequi necessitatibus harum necessitatibus numquam rerum quasi et. Et aut laborum fugiat odio et similique repudiandae. Animi sed veritatis quia molestias autem.', NULL, 157.37, 39, 90, 5, 1, 'autem omnis eos ut', 'Eos et quo dolor ut omnis amet dolorum.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(35, 'a placeat impedit', 'a-placeat-impedit', 'Doloribus quam qui necessitatibus aut praesentium voluptatem. Qui praesentium qui debitis autem voluptatem deleniti. Fugiat at sunt molestias sed. Sed ducimus illo qui rerum facere nihil ut quibusdam.\n\nSoluta et blanditiis officiis delectus exercitationem. Ut sed veniam sint ea est totam. Voluptas commodi ut beatae. Distinctio omnis voluptas nihil quam.\n\nDicta animi qui iusto. Sed nihil facere reiciendis corporis sit. Perspiciatis iste aut incidunt sit repellat molestiae. Voluptatem ut sit quibusdam.', NULL, 104.89, 40, 81, 5, 1, 'omnis voluptate iusto doloribus', 'Eum ratione aut ipsa quasi.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(36, 'nam qui sequi', 'nam-qui-sequi', 'Repellat et molestiae necessitatibus nisi. Et assumenda itaque aut voluptatibus voluptatibus. Cupiditate necessitatibus praesentium nostrum consequatur dolor ut reprehenderit. Quos vel aut illo quia repellendus suscipit tempore dolor.\n\nEarum voluptas consequatur velit. Quis eius a repellat sit enim nulla velit. Nemo aliquid quidem exercitationem voluptate excepturi minus praesentium.\n\nSunt modi quia molestiae. Aperiam quisquam amet sit voluptatem doloribus sint sed. Adipisci reiciendis et explicabo voluptas. Voluptate sint magnam quod qui.', NULL, 660.23, 41, 1, 5, 1, 'mollitia mollitia omnis dolor', 'Commodi atque quod et quam.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(37, 'magnam impedit commodi', 'magnam-impedit-commodi', 'Eius accusamus non error quia. Totam facilis laudantium sunt esse. Quidem rem quo aperiam aut blanditiis error.\n\nSoluta blanditiis odio saepe et. Amet exercitationem hic autem et repellat recusandae temporibus ipsam. Recusandae delectus aut molestiae sed. Perferendis eius adipisci occaecati quo minima.\n\nEt nihil ut reprehenderit. Cumque expedita quia aut fuga molestias quia error. Cum voluptatem vitae minima aut reiciendis excepturi delectus est.', NULL, 865.60, 42, 87, 5, 1, 'iusto qui saepe sit', 'Omnis aut expedita doloremque consectetur.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(38, 'laudantium blanditiis accusantium', 'laudantium-blanditiis-accusantium', 'Quae ut nemo odio aperiam. Et temporibus nobis eum non cupiditate iure ea et. Accusantium ad dolorem voluptates rerum. Eaque voluptas possimus qui.\n\nEligendi ea sunt qui voluptatem iure. Eveniet in animi optio voluptate. Quisquam molestiae consectetur aut ut velit a. Rerum repellendus quas et laudantium.\n\nIncidunt amet voluptatem nam. Impedit iste ad id sed. Natus blanditiis commodi accusantium. Accusantium qui sint inventore ullam aut. Quibusdam sed maiores excepturi ratione autem officia libero.', NULL, 644.51, 43, 25, 5, 1, 'eaque exercitationem suscipit est', 'Tempora quia aut illum explicabo sint velit ut.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(39, 'et vitae eaque', 'et-vitae-eaque', 'Deserunt voluptatem reiciendis ratione rerum. Itaque odit consequatur error error.\n\nEaque quos voluptatum voluptas quas. Soluta voluptate pariatur quisquam iure corporis dolore consequatur.\n\nSint omnis qui non dolorem. Omnis laboriosam dolor eligendi eos quia. Expedita necessitatibus dicta vero voluptatibus saepe. Dolores eius quisquam vero excepturi ut molestiae facilis est.', NULL, 189.66, 44, 98, 5, 1, 'saepe inventore cumque labore', 'Quod ab sit aspernatur architecto laborum.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(40, 'molestiae quas impedit', 'molestiae-quas-impedit', 'Officia adipisci neque laborum. Rerum sint non error aliquam. Rerum animi nobis laborum laudantium deserunt animi aut. Possimus fuga omnis accusantium.\n\nDistinctio ut odio illo. Modi autem in aut cupiditate nostrum quo. Ut dignissimos aliquam sit. Consequatur exercitationem provident aspernatur ullam nemo culpa et.\n\nUt velit ut voluptas illo eius quam voluptas. Voluptatibus a eum voluptas. Consectetur delectus veniam saepe doloremque. Tenetur quo eaque voluptas omnis.', NULL, 693.19, 45, 7, 5, 1, 'nostrum ipsa velit adipisci', 'Earum hic ipsam vero sapiente.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(41, 'qui magnam delectus', 'qui-magnam-delectus', 'Expedita ratione voluptatibus iusto. Aut unde minima est est. Quis corporis laboriosam reprehenderit asperiores voluptatum dolor ea. Et odit sit iste quam mollitia voluptatem.\n\nNostrum harum adipisci sit non. Vitae consequatur dolorem omnis doloribus enim omnis sit dolorum. Voluptates placeat id quam non voluptatem sequi quia reprehenderit. Sunt quis tempore illum necessitatibus commodi maxime adipisci voluptatem.\n\nEst ullam qui odit tempora dolorum. Recusandae tempora consequatur autem nemo similique at. A nemo quia saepe. Maiores eaque doloribus aut.', NULL, 895.11, 46, 65, 5, 1, 'aperiam nam inventore delectus', 'Atque et explicabo voluptatibus iste at nisi.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(42, 'impedit vel enim', 'impedit-vel-enim', 'Nobis quam iste vel nisi accusantium in hic. Qui velit atque ea dolorem blanditiis dolore. Laboriosam eveniet sit dolores nulla velit ad nihil repellendus.\n\nPerspiciatis numquam doloremque eum ex nostrum hic accusamus. Vel cum impedit quas iusto voluptatem facere libero. Dolorem necessitatibus dolor dolore soluta. In ducimus corrupti nemo eum.\n\nAutem velit dolores sed voluptas a. Consequuntur est et voluptatem id omnis debitis aut. Et debitis voluptate blanditiis quidem. Perferendis ex pariatur non dolores ut nesciunt.', NULL, 265.77, 47, 76, 5, 1, 'enim aperiam ut autem', 'Molestiae delectus dolore eum voluptates.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(43, 'et quam aut', 'et-quam-aut', 'Sit odio delectus occaecati voluptate ratione nemo architecto. Qui et nisi ducimus nihil qui corporis. Sunt sapiente et maxime ut. Quaerat ratione iure excepturi id rerum aperiam consequatur.\n\nIpsa magnam sunt sit minima voluptatibus eveniet repellendus. Quis ducimus et tempora asperiores. Assumenda natus earum sint quis minima esse. Perspiciatis voluptas corporis pariatur id fuga ut perferendis autem. Qui necessitatibus id minima officiis.\n\nNisi consequatur animi optio iusto laudantium voluptatem odio. Ullam dolorem eos doloribus similique. Debitis quis sit ipsum optio et enim consequatur eaque.', NULL, 257.61, 48, 44, 5, 1, 'et repellendus eaque sint', 'Illum est doloremque vel quo architecto corrupti tempore.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(44, 'et laudantium nobis', 'et-laudantium-nobis', 'Praesentium harum tenetur voluptatem. Unde recusandae nobis itaque. Qui ut consectetur expedita.\n\nRatione quia eum impedit. Qui et aut error ducimus molestias. Non eum fugiat quisquam eum reiciendis suscipit dolor. Non tenetur nihil unde quasi eius doloribus.\n\nPossimus libero incidunt natus incidunt. Dolores esse est aperiam quo velit voluptas. Facilis fugit expedita quae aperiam. Harum earum saepe facilis tempora dolorem doloremque. Sed dolores voluptas architecto neque sed.', NULL, 179.24, 49, 70, 5, 1, 'quaerat vel nesciunt aut', 'Ea ullam et qui numquam vel vero nemo.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(45, 'molestias quae et', 'molestias-quae-et', 'Possimus rerum rem vel est. Magni et nihil aliquid sit. Occaecati odit esse doloribus aut dolorem quae.\n\nVitae quam et rerum beatae voluptate officiis eligendi. Autem qui ea aut alias occaecati omnis. Nobis nesciunt et nobis magni.\n\nEius quas est provident est placeat. Qui amet ipsam ut ex rem. Rerum molestias beatae ipsam aut.', NULL, 62.25, 50, 68, 5, 1, 'labore quisquam enim voluptas', 'Molestias voluptate aut minus.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(46, 'adipisci doloribus et', 'adipisci-doloribus-et', 'Sint qui itaque quae voluptas in sit. Voluptate perferendis atque suscipit aut. Reiciendis voluptatem enim nihil quod exercitationem architecto quibusdam. Voluptatibus assumenda autem nulla similique deleniti dolore facere inventore.\n\nIllum et atque quia quia recusandae. Nihil numquam eveniet sequi deleniti in. Beatae cumque quis aut quidem suscipit expedita.\n\nSed adipisci rerum voluptatibus quos. Sit officiis error dolore a quidem. Sapiente et necessitatibus facilis dolorem pariatur. Est ut nihil autem sit sint et.', NULL, 744.30, 51, 5, 5, 1, 'animi quis nam repellendus', 'Excepturi laborum tempora qui.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(47, 'aut voluptates veritatis', 'aut-voluptates-veritatis', 'Culpa reiciendis qui aperiam. Iusto omnis architecto ipsum dolore quidem.\n\nSimilique fugit officia voluptatem esse quis eveniet. Minima quae ex sint est. Consequatur aliquid odit excepturi libero voluptatem unde. Iste eveniet laboriosam error harum deleniti. Ipsa at dolores nisi voluptatem perferendis.\n\nPariatur quasi quibusdam odio culpa neque. Officiis sed eum laborum veniam.', NULL, 86.35, 52, 67, 5, 1, 'aut velit unde qui', 'Et sit nihil possimus quia mollitia expedita rerum.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(48, 'est sint tempore', 'est-sint-tempore', 'Est fuga autem earum tempora sunt. Aliquid quo unde enim quos laudantium sint recusandae quia. Pariatur dolores eos ea sunt earum fuga reprehenderit.\n\nRecusandae eos at earum ut omnis est quia. Dolore reiciendis quis recusandae aut enim et commodi numquam. Vero voluptatibus minus totam officiis.\n\nQuae quia tempora harum corrupti. Ex consequatur ipsa molestias facilis nobis vero. Est et omnis quia aut eligendi aut. Consequatur voluptate quisquam rerum voluptate minus maiores rem.', NULL, 691.57, 53, 29, 5, 1, 'explicabo ex qui libero', 'Voluptatem voluptates ducimus autem.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(49, 'neque quis animi', 'neque-quis-animi', 'Ab voluptates veniam saepe ad omnis eaque. Repellendus soluta optio quidem sit fugiat quisquam accusamus. Explicabo sit rerum et exercitationem. Ullam ab eligendi qui.\n\nMinus tenetur dolorum debitis. Facere placeat earum et delectus fugit fuga ratione sit. Quibusdam magnam rerum quod modi ratione molestiae. Itaque laboriosam qui amet voluptatem earum repudiandae reiciendis. Accusamus et dolor rerum voluptatem est ex et.\n\nConsequatur omnis aliquid illo voluptatibus accusantium dicta quia. Doloribus unde quod quia accusantium quo. Ut nam molestiae quaerat qui architecto.', NULL, 399.06, 54, 21, 5, 1, 'maxime animi voluptates asperiores', 'Repudiandae perspiciatis nam reprehenderit tempora quam veniam non.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(50, 'perferendis consequatur minima', 'perferendis-consequatur-minima', 'Atque unde id ea sint non sint tempore. Laudantium expedita quia quam mollitia. Eligendi dolore similique eaque in eos officiis ducimus. Odit labore molestiae illum voluptatem maiores nobis. Fuga aperiam eos et repellat.\n\nEa nemo aut sed odit aspernatur. Quos quia veniam et iure provident aut. Ratione aspernatur fuga pariatur cum ullam. Temporibus qui odit ut et quidem.\n\nQuod harum eos eum odio. Ex doloribus saepe maiores sed ea inventore. Iure et iusto officia eligendi est nesciunt non.', NULL, 90.56, 55, 65, 5, 1, 'temporibus totam quas itaque', 'Laudantium dolores in unde cumque provident voluptatem.', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(51, 'et praesentium eum', 'et-praesentium-eum', 'Perferendis animi est est aut. Cum qui unde qui cum illum vel. Iure iusto libero dolor quis distinctio dignissimos qui. Exercitationem et cum eos ex et laudantium.\n\nVoluptatem doloremque consequatur harum voluptatem adipisci nobis voluptates. Non qui et ipsam dicta qui eum vitae omnis.\n\nAtque consequatur soluta perferendis non facilis facere voluptate. Voluptas enim rerum inventore impedit dolorem. Fuga dolorum amet vel eius debitis. Sunt libero dolore quasi eveniet nulla. Voluptas ut nam tenetur ipsum non laboriosam illum quia.', NULL, 932.21, 56, 63, 5, 1, 'voluptatum tempore facere quasi', 'Ab ut aperiam ut saepe illum eius.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(52, 'animi aperiam quis', 'animi-aperiam-quis', 'Nam nesciunt numquam numquam quas cupiditate. Officia nam nihil reprehenderit. Voluptas sed vero error assumenda debitis.\n\nIllum temporibus sequi accusamus reprehenderit corrupti occaecati. Consectetur ab possimus quod alias eaque. Voluptas ut dolores possimus placeat non enim excepturi.\n\nSed ad et quis exercitationem in. Eaque voluptatem suscipit hic dolorem dicta ut. Aperiam maiores nisi et porro. Repellendus blanditiis non est aut quidem sit dolores debitis.', NULL, 189.84, 57, 83, 5, 1, 'architecto impedit soluta vero', 'Nihil hic est eos necessitatibus error dignissimos.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(53, 'tempore assumenda beatae', 'tempore-assumenda-beatae', 'Laboriosam quos et quos in asperiores aperiam. Ea dolorem sed a dignissimos accusantium. Nihil doloribus deserunt aut ab ab autem autem. Nam aliquid perspiciatis eius molestias aliquam dolorem animi.\n\nAsperiores maiores ut non excepturi nostrum adipisci id. Quisquam cupiditate repellendus optio repudiandae illo. Quod explicabo adipisci officiis ea.\n\nTotam eius rerum consequuntur. Eveniet consequuntur ea tenetur ipsum nobis laboriosam distinctio exercitationem. Dolores ut eos id cum qui. Cum cupiditate inventore voluptatem. Et qui nihil qui expedita voluptas eum quis.', NULL, 12.80, 58, 10, 5, 1, 'mollitia facilis aliquid deleniti', 'Autem recusandae cumque porro sed.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(54, 'id aut eos', 'id-aut-eos', 'Vitae inventore quaerat asperiores et. Reprehenderit quia quo animi minus saepe veritatis nesciunt cumque. Eos odit dolor ducimus omnis.\n\nIpsa qui temporibus ipsum aspernatur esse et. Vel nobis consequatur voluptatum aliquid sed non.\n\nDebitis et quisquam id id aperiam aut. Quia consequatur ex est pariatur temporibus. Qui praesentium atque qui reprehenderit asperiores sunt quidem. Praesentium natus dolore est accusantium quidem.', NULL, 350.26, 59, 96, 5, 1, 'eius fuga ut deserunt', 'Omnis adipisci ut nobis commodi dolorem vitae reprehenderit.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(55, 'quaerat nisi rerum', 'quaerat-nisi-rerum', 'Explicabo omnis veniam quia molestiae est blanditiis. Quo consectetur et adipisci et quia nulla aspernatur. Error fugit aut nemo rerum. Voluptatum odit aliquid consequatur qui.\n\nAut ea hic suscipit accusamus quis. Sequi incidunt quo eos aut perferendis porro.\n\nRerum molestiae asperiores et qui. Non voluptatem qui vitae autem. Voluptatibus provident qui est maxime voluptatem.', NULL, 465.72, 60, 73, 5, 1, 'veritatis non et quia', 'Iste hic repellendus ipsam rerum et.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(56, 'quae vitae architecto', 'quae-vitae-architecto', 'Eum vero quia nihil qui iusto. Non perferendis est et unde alias. Voluptates non et eaque fugit doloremque accusantium illum.\n\nPerspiciatis veritatis et vel autem doloribus voluptatem. Dolores iusto ut aliquid qui repellendus omnis. Molestiae odio est ullam occaecati sequi unde. Suscipit rem enim quo quasi eligendi harum rem quia.\n\nVelit tenetur eum voluptatibus. Et dicta eius non tenetur voluptatibus sint. Ducimus odit ex eum aliquid suscipit. Eos quo et aperiam quae maxime. Corporis eos ea incidunt voluptatem.', NULL, 376.92, 61, 77, 5, 1, 'eum facilis ut neque', 'Mollitia ea et at provident.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(57, 'ad occaecati enim', 'ad-occaecati-enim', 'Deleniti est atque sunt iste. Rem laboriosam alias tenetur neque qui est. Nam repudiandae maiores labore iste laboriosam enim quis. Perferendis dicta fuga ullam qui voluptatem id sed.\n\nVero numquam enim molestiae iure incidunt. Nulla fugit aperiam nihil ut maxime nostrum. Vitae ab dolores voluptatum molestiae doloremque.\n\nQuia quae deserunt quod autem. Eveniet at non dicta et esse. Nam eaque et qui sunt.', NULL, 285.08, 62, 34, 5, 1, 'dolores accusamus eos molestias', 'Aut nostrum qui velit omnis modi magni voluptatem voluptates.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(58, 'nihil consequuntur voluptatem', 'nihil-consequuntur-voluptatem', 'Corporis mollitia labore ex repudiandae. Qui repellat eos perspiciatis corrupti magnam pariatur.\n\nEarum aut eos molestias dolorum iste voluptas. Ipsum eum quam quaerat iusto fuga minima qui. Autem facere facere pariatur qui. Nostrum est eum inventore dolorem.\n\nPraesentium earum sit qui ea qui. Voluptatem numquam autem quis atque et. Nemo beatae et blanditiis necessitatibus.', NULL, 592.33, 63, 86, 5, 1, 'error soluta dolorem mollitia', 'Quia harum repellendus qui temporibus sunt sit.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(59, 'assumenda ut amet', 'assumenda-ut-amet', 'Est rem sit occaecati adipisci. Est quo id dignissimos sint hic est sit pariatur. Sapiente ut fugit vitae autem. Incidunt sunt suscipit accusamus. Vitae voluptatem eum voluptas error commodi.\n\nQuas rerum reprehenderit distinctio iste saepe. Ipsum sint placeat corporis nemo occaecati id soluta. Est impedit quod delectus ipsa fugiat ipsa libero voluptas. Atque aut voluptas dignissimos et laudantium. Eum reprehenderit laudantium itaque quo earum et aut.\n\nDeserunt voluptatem labore nesciunt illum. Est omnis et non adipisci dolorum. Ut vitae a odio pariatur accusamus reprehenderit. Autem aut asperiores dignissimos earum et.', NULL, 498.51, 64, 9, 5, 1, 'voluptas molestiae molestiae voluptatem', 'Dolores ea at maxime et aut rem vitae.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(60, 'voluptatem rerum optio', 'voluptatem-rerum-optio', 'Perferendis rerum qui eos nostrum vero. Labore quod itaque pariatur pariatur.\n\nVeritatis officia tempore dolor magni porro. Illum vel expedita neque expedita deleniti. Rerum soluta et molestias voluptate dolore quia tenetur quo. Quasi non quasi doloribus dignissimos consequuntur.\n\nPraesentium impedit adipisci consequatur molestiae. Quo dignissimos sed unde sit ullam dicta.', NULL, 104.27, 65, 80, 5, 1, 'qui blanditiis exercitationem sit', 'Est dolor aspernatur incidunt voluptas.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(61, 'reprehenderit aut libero', 'reprehenderit-aut-libero', 'Dolorem ut laboriosam doloremque et consequuntur non id. Id laudantium et sit omnis voluptatem. Sit voluptas rerum qui voluptas tempore exercitationem exercitationem aliquam.\n\nTotam aut iste aut culpa perferendis. Aut laudantium unde soluta rem quia ut iusto quasi. Non qui atque voluptatem repellat sit est.\n\nItaque ea et commodi aut. Est quisquam ea ex dicta sed. Non accusantium molestiae dolorem harum molestiae. Quasi voluptatum neque quibusdam ut sit.', NULL, 802.39, 66, 37, 5, 1, 'corrupti aliquid reprehenderit veniam', 'Qui animi ipsa voluptatem facilis ab sint dolorem.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(62, 'omnis beatae exercitationem', 'omnis-beatae-exercitationem', 'Expedita quia doloremque velit velit et consequatur. Ipsum unde officiis quidem aut accusantium voluptatem. Ut doloribus recusandae cupiditate voluptates et.\n\nConsectetur delectus praesentium architecto animi eaque quaerat sit. Ut omnis est ab expedita enim. Hic non mollitia exercitationem nobis. Exercitationem perferendis rerum illum dicta.\n\nDelectus ipsa veritatis et nulla sint magni. Ut sit debitis quo et maxime totam. Adipisci aspernatur repellendus reiciendis explicabo nam quaerat dolorem. Cum unde a ut occaecati veniam in.', NULL, 931.14, 67, 82, 5, 1, 'quos et suscipit architecto', 'Molestiae qui explicabo earum consequatur.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(63, 'ut ut quia', 'ut-ut-quia', 'Aperiam perspiciatis neque optio ipsum ut quia culpa. Vel similique labore minima molestiae rerum nisi laboriosam. Dolores qui et rerum dolores.\n\nLaboriosam error in sint in a recusandae blanditiis. Eveniet sapiente impedit cumque quasi esse quia. Doloremque sed in pariatur laboriosam officia facilis voluptatum.\n\nModi provident consequatur repellendus nobis. Voluptas unde rerum porro accusantium nihil unde. Asperiores aspernatur dolorum neque iure accusantium optio. Qui deserunt quia qui qui perspiciatis est quia nobis. Provident rerum error nam magni esse esse minus.', NULL, 444.08, 68, 61, 5, 1, 'voluptatem sequi repudiandae distinctio', 'Rerum dolorum illum ut quisquam deserunt distinctio.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(64, 'dolor animi aliquid', 'dolor-animi-aliquid', 'Quas velit doloremque est. Accusamus omnis voluptates inventore in provident. Autem molestiae ipsa enim eveniet aliquam similique at expedita.\n\nEt quisquam similique et dolore. Consequatur sunt harum totam dolores qui. Et aut voluptatem ut saepe at non. Ab quia porro consequatur quod quas et tenetur adipisci.\n\nIncidunt explicabo nulla voluptatum quam. Ullam et quia consequuntur temporibus libero. Modi qui enim explicabo modi quibusdam explicabo placeat. Maxime dicta impedit sit quam.', NULL, 562.59, 69, 63, 5, 1, 'consequatur cum exercitationem labore', 'Est doloribus tempore aut nostrum iure doloribus consequatur vero.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(65, 'et et id', 'et-et-id', 'Qui voluptatem autem magnam et. Ut temporibus quam debitis. Id debitis ducimus illo.\n\nAut quia omnis corrupti nihil facere incidunt suscipit rem. Quasi exercitationem eum iste quia. Et quam ea iste rerum.\n\nPariatur provident iste itaque eos. Ex molestiae est exercitationem consequatur. Veritatis quisquam commodi eveniet blanditiis nostrum consequatur magni. Consectetur in aut qui unde.', NULL, 301.94, 70, 48, 5, 1, 'quia quae perspiciatis nobis', 'Et harum vitae dignissimos et nihil libero minima.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(66, 'ipsum voluptatem rem', 'ipsum-voluptatem-rem', 'Aut iusto reprehenderit voluptatem perferendis et. Repellat sit laboriosam nesciunt dolor blanditiis neque. Quo ea impedit tempora accusamus harum accusantium.\n\nNostrum dolorem nobis illo fuga ut omnis optio. Qui et et enim eligendi modi occaecati enim corporis. Et modi culpa amet facere.\n\nOmnis voluptates dolore sed amet. Eius fuga voluptatum rem atque molestiae expedita. Dolores error qui nemo ut quia temporibus quasi. Asperiores quod et nihil dolorem eius nisi veritatis.', NULL, 63.12, 71, 20, 5, 1, 'inventore ut maxime nihil', 'In sit expedita temporibus aperiam dolorem fugit.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(67, 'enim nobis qui', 'enim-nobis-qui', 'Autem reiciendis excepturi natus odio illo omnis hic. Non dolor magnam quo repellat ipsam voluptatum. Odit sit adipisci consequatur quae esse.\n\nEos velit nam sint. Quasi quo laudantium corporis id numquam consectetur nihil. Aut itaque ratione numquam id maiores provident tenetur fuga.\n\nSit porro non aut debitis aperiam laudantium dignissimos. Fugit vel sit cum culpa quisquam. Facilis expedita aut veniam cum deserunt qui. Consequuntur illum qui in dolore.', NULL, 55.81, 72, 91, 5, 1, 'ea sed similique maiores', 'Et voluptatem est eum.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(68, 'eligendi suscipit eius', 'eligendi-suscipit-eius', 'Dolorem similique ex temporibus quia provident suscipit dolores. Laborum eum enim exercitationem enim deleniti. Quisquam deleniti officiis voluptatem enim quia tenetur soluta animi. Similique sit ea voluptatum error eveniet neque blanditiis doloribus.\n\nDolores at ut debitis facere. Omnis corporis commodi a et. Suscipit blanditiis totam vel quos ut exercitationem distinctio.\n\nEa mollitia in sit. Qui aut qui et. Suscipit est et ut accusantium. Adipisci facilis fuga quia vel veniam.', NULL, 345.86, 73, 52, 5, 1, 'eum maiores cum unde', 'Suscipit temporibus ipsam sed consequatur aperiam illo.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(69, 'error debitis ex', 'error-debitis-ex', 'Similique iure quasi velit odio est. Pariatur facilis ipsam sed dolorum dolorum repudiandae. Dolor odit ad odit aut tempore. Molestiae illum temporibus quia dolores mollitia et temporibus.\n\nQuae eveniet dolorem nihil consequatur. Expedita ratione incidunt impedit ipsa. Magni sunt excepturi et occaecati quam ut nam sint.\n\nSit ducimus totam cum dolor. Voluptatem et sint voluptates eum et omnis. Autem velit ut omnis corrupti ut amet voluptatum. Consequatur magni sit quasi facilis culpa cupiditate.', NULL, 558.26, 74, 99, 5, 1, 'esse ipsum aut voluptatum', 'Illo cumque expedita natus.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(70, 'magni perferendis accusantium', 'magni-perferendis-accusantium', 'Deleniti in culpa tempora corporis sint soluta id. Et nesciunt autem quas harum officiis et et. Numquam vitae adipisci est reiciendis voluptatibus nihil.\n\nUt vero quia voluptas natus excepturi. Consequatur voluptatem ut dolor optio laboriosam necessitatibus. Saepe sapiente accusantium veritatis est qui et praesentium.\n\nConsequatur autem doloremque officia omnis veritatis. Perferendis tempora dicta voluptatem itaque dicta. Veniam et sit et aperiam et numquam soluta.', NULL, 277.27, 75, 17, 5, 1, 'repellendus qui perferendis sed', 'Beatae aut ipsa consequatur natus.', NULL, '2025-02-16 10:21:36', '2025-02-16 10:21:36');

-- --------------------------------------------------------

--
-- Structure de la table `product_tag`
--

CREATE TABLE `product_tag` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_tag`
--

INSERT INTO `product_tag` (`product_id`, `tag_id`) VALUES
(51, 3),
(51, 10),
(52, 1),
(52, 2),
(52, 5),
(52, 8),
(52, 10),
(53, 2),
(53, 4),
(53, 7),
(53, 9),
(53, 10),
(54, 6),
(54, 7),
(54, 10),
(55, 1),
(55, 2),
(55, 4),
(55, 6),
(55, 9),
(56, 1),
(56, 3),
(56, 9),
(57, 2),
(57, 10),
(58, 3),
(58, 5),
(58, 7),
(58, 9),
(58, 10),
(59, 1),
(59, 6),
(59, 7),
(59, 9),
(59, 10),
(60, 4),
(60, 7),
(60, 10),
(61, 1),
(61, 2),
(61, 3),
(61, 4),
(61, 6),
(62, 6),
(62, 7),
(62, 8),
(62, 9),
(62, 10),
(63, 2),
(63, 5),
(63, 6),
(63, 7),
(63, 10),
(64, 4),
(64, 9),
(65, 3),
(65, 4),
(65, 7),
(65, 9),
(65, 10),
(66, 2),
(66, 3),
(66, 6),
(66, 9),
(67, 2),
(67, 6),
(68, 2),
(68, 5),
(68, 8),
(69, 3),
(69, 5),
(69, 7),
(69, 9),
(70, 1),
(70, 6),
(70, 8);

-- --------------------------------------------------------

--
-- Structure de la table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `sku` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `size`, `color`, `sku`, `price`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 'M', 'Chartreuse', 'SKU-5528-jctr', 739.15, 50, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(2, 2, 'XS', 'MediumVioletRed', 'SKU-8464-fteu', 186.91, 47, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(3, 3, 'L', 'Pink', 'SKU-3755-mxcc', 73.35, 47, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(4, 4, 'L', 'LightCyan', 'SKU-2177-kjvh', 624.53, 6, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(5, 5, 'XL', 'MediumPurple', 'SKU-1199-eqqg', 544.31, 5, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(6, 6, 'M', 'DimGrey', 'SKU-4760-txlp', 395.86, 23, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(7, 7, 'L', 'Lime', 'SKU-7055-bptv', 691.73, 26, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(8, 8, 'XS', 'Plum', 'SKU-7311-npuf', 321.69, 16, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(9, 9, 'XL', 'PaleGoldenRod', 'SKU-9352-rrhs', 658.77, 5, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(10, 10, 'XL', 'Wheat', 'SKU-5672-budl', 119.04, 30, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(11, 11, 'XL', 'DarkGreen', 'SKU-8931-ceze', 820.94, 46, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(12, 12, 'M', 'DarkGoldenRod', 'SKU-2160-yhav', 853.78, 19, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(13, 13, 'XL', 'Fuchsia', 'SKU-0833-dciz', 416.37, 4, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(14, 14, 'XS', 'DimGray', 'SKU-7817-kssf', 17.93, 15, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(15, 15, 'XL', 'BlueViolet', 'SKU-9021-stuw', 692.16, 5, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(16, 16, 'M', 'MediumAquaMarine', 'SKU-8361-tiox', 175.52, 20, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(17, 17, 'S', 'GhostWhite', 'SKU-4085-xfok', 221.20, 38, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(18, 18, 'M', 'Beige', 'SKU-6661-znui', 716.12, 37, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(19, 19, 'S', 'DodgerBlue', 'SKU-0386-sqqg', 438.89, 29, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(20, 20, 'XL', 'AliceBlue', 'SKU-9544-ttzs', 322.60, 27, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(21, 21, 'XS', 'Wheat', 'SKU-5515-mmtv', 891.58, 7, '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(22, 22, 'L', 'SlateGray', 'SKU-3057-piff', 135.30, 40, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(23, 23, 'L', 'Gold', 'SKU-2783-qvww', 208.70, 12, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(24, 24, 'M', 'SteelBlue', 'SKU-7069-ruec', 160.19, 35, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(25, 25, 'M', 'Gainsboro', 'SKU-4100-kcpx', 450.65, 14, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(26, 26, 'XL', 'Sienna', 'SKU-9769-gbjr', 864.37, 24, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(27, 27, 'XS', 'Chartreuse', 'SKU-6270-itou', 61.62, 32, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(28, 28, 'XL', 'PapayaWhip', 'SKU-2539-kuxt', 970.78, 8, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(29, 29, 'XS', 'Indigo', 'SKU-9837-vvrm', 996.03, 9, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(30, 30, 'XL', 'PaleGreen', 'SKU-2139-hhdu', 16.28, 46, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(31, 31, 'XL', 'Tomato', 'SKU-6820-qnyj', 944.82, 19, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(32, 32, 'XL', 'MediumPurple', 'SKU-2272-obzr', 961.57, 40, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(33, 33, 'XS', 'Tomato', 'SKU-2668-zrbz', 746.02, 37, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(34, 34, 'S', 'FloralWhite', 'SKU-0006-xank', 318.93, 37, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(35, 35, 'L', 'MidnightBlue', 'SKU-9123-emfg', 731.39, 30, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(36, 36, 'M', 'Purple', 'SKU-0355-znus', 437.24, 30, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(37, 37, 'XS', 'Turquoise', 'SKU-4526-dxxf', 156.93, 47, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(38, 38, 'XL', 'Yellow', 'SKU-5176-icrd', 942.71, 30, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(39, 39, 'S', 'LightSteelBlue', 'SKU-9923-oole', 416.96, 19, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(40, 40, 'XL', 'DarkMagenta', 'SKU-5645-nzxx', 758.44, 28, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(41, 41, 'XL', 'Yellow', 'SKU-2992-ctof', 322.53, 44, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(42, 42, 'S', 'GhostWhite', 'SKU-1036-gxgw', 222.59, 40, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(43, 43, 'S', 'Darkorange', 'SKU-5899-kpcc', 574.74, 1, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(44, 44, 'XS', 'LightGreen', 'SKU-9706-xdqj', 835.32, 48, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(45, 45, 'S', 'FireBrick', 'SKU-9702-tgqe', 455.16, 34, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(46, 46, 'M', 'DarkSlateGray', 'SKU-5060-cqaf', 723.51, 49, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(47, 47, 'XS', 'DarkSlateGray', 'SKU-6367-lxri', 701.72, 31, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(48, 48, 'XL', 'SeaShell', 'SKU-2015-nqqy', 386.17, 42, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(49, 49, 'L', 'Coral', 'SKU-6586-uqvm', 663.78, 25, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(50, 50, 'XL', 'Darkorange', 'SKU-0994-mzzq', 254.33, 32, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(51, 51, 'XS', 'DeepSkyBlue', 'SKU-4517-tsgo', 300.76, 17, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(52, 51, 'S', 'PaleGreen', 'SKU-6184-owah', 264.17, 15, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(53, 51, 'M', 'MediumSpringGreen', 'SKU-2603-hcbf', 854.44, 26, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(54, 52, 'XL', 'MediumOrchid', 'SKU-4690-fiuk', 164.62, 3, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(55, 52, 'L', 'SlateGray', 'SKU-5123-qsns', 974.69, 44, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(56, 52, 'S', 'Blue', 'SKU-7280-otlo', 61.11, 2, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(57, 53, 'L', 'LavenderBlush', 'SKU-1614-lvct', 511.58, 6, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(58, 53, 'M', 'SeaGreen', 'SKU-4610-xshr', 914.01, 29, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(59, 53, 'M', 'Lime', 'SKU-3353-vukd', 425.54, 25, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(60, 54, 'S', 'Orchid', 'SKU-1348-dhaw', 601.65, 29, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(61, 54, 'M', 'Bisque', 'SKU-4706-ljwg', 923.79, 27, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(62, 54, 'XL', 'Olive', 'SKU-0162-tddb', 395.87, 16, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(63, 55, 'XL', 'MediumTurquoise', 'SKU-1226-fzbo', 606.38, 37, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(64, 55, 'M', 'MediumTurquoise', 'SKU-2830-dtre', 331.93, 42, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(65, 55, 'S', 'White', 'SKU-0575-icif', 510.81, 2, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(66, 56, 'XL', 'Gray', 'SKU-1131-krmx', 100.66, 24, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(67, 56, 'XS', 'SeaShell', 'SKU-9669-dbtm', 847.40, 1, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(68, 56, 'S', 'LightGreen', 'SKU-5071-ukgp', 877.87, 15, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(69, 57, 'S', 'Moccasin', 'SKU-9537-dryy', 502.06, 41, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(70, 57, 'S', 'SkyBlue', 'SKU-1126-oxfr', 906.22, 49, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(71, 57, 'XL', 'DodgerBlue', 'SKU-1515-zbuw', 443.82, 18, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(72, 58, 'L', 'Chocolate', 'SKU-7978-ofjh', 844.91, 21, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(73, 58, 'XS', 'Lavender', 'SKU-3579-zvtd', 160.14, 15, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(74, 58, 'M', 'OldLace', 'SKU-6904-qodh', 365.66, 26, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(75, 59, 'M', 'DarkMagenta', 'SKU-0103-fnbo', 915.01, 11, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(76, 59, 'XL', 'Indigo', 'SKU-7317-wkbk', 34.04, 31, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(77, 59, 'XS', 'DimGray', 'SKU-8838-twzc', 856.66, 0, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(78, 60, 'XL', 'Blue', 'SKU-9176-mewn', 444.52, 18, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(79, 60, 'XS', 'MediumSpringGreen', 'SKU-9248-bdue', 697.54, 25, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(80, 60, 'M', 'Tan', 'SKU-4483-hjwa', 479.94, 50, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(81, 61, 'XL', 'Red', 'SKU-4745-artj', 136.78, 37, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(82, 61, 'XS', 'DarkViolet', 'SKU-1703-lhdr', 195.22, 14, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(83, 61, 'XS', 'DarkSlateGray', 'SKU-5378-goup', 666.95, 10, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(84, 62, 'XL', 'Tan', 'SKU-4171-etso', 183.34, 1, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(85, 62, 'M', 'Gray', 'SKU-1397-zoad', 537.69, 49, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(86, 62, 'S', 'Ivory', 'SKU-3549-ksdp', 484.30, 3, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(87, 63, 'S', 'HoneyDew', 'SKU-4351-gcaa', 387.00, 5, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(88, 63, 'L', 'BurlyWood', 'SKU-5075-ldze', 36.49, 36, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(89, 63, 'XS', 'LemonChiffon', 'SKU-1275-nqfv', 353.77, 37, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(90, 64, 'XS', 'Moccasin', 'SKU-6707-oosk', 421.60, 17, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(91, 64, 'XS', 'SlateBlue', 'SKU-8270-njej', 651.23, 3, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(92, 64, 'S', 'BlanchedAlmond', 'SKU-4708-mzhi', 683.97, 21, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(93, 65, 'S', 'MediumPurple', 'SKU-4574-qhuf', 202.98, 7, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(94, 65, 'XL', 'Maroon', 'SKU-9387-gbjc', 118.44, 12, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(95, 65, 'S', 'DarkOliveGreen', 'SKU-4944-qlxw', 554.24, 29, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(96, 66, 'XS', 'Crimson', 'SKU-3528-jkkm', 747.52, 6, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(97, 66, 'M', 'FireBrick', 'SKU-0324-jtdu', 497.06, 47, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(98, 66, 'L', 'MidnightBlue', 'SKU-8346-wcro', 679.85, 1, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(99, 67, 'XL', 'SkyBlue', 'SKU-8772-dkce', 839.42, 17, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(100, 67, 'L', 'YellowGreen', 'SKU-1105-hhhi', 358.28, 45, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(101, 67, 'XL', 'OliveDrab', 'SKU-7304-pxqw', 486.15, 8, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(102, 68, 'XL', 'BlueViolet', 'SKU-7010-dhgs', 291.70, 25, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(103, 68, 'XL', 'GreenYellow', 'SKU-7755-ovsv', 752.15, 29, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(104, 68, 'XS', 'PaleGoldenRod', 'SKU-9603-qyux', 998.20, 19, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(105, 69, 'S', 'DarkBlue', 'SKU-7080-ulkc', 637.07, 50, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(106, 69, 'M', 'LightBlue', 'SKU-1146-kgyf', 56.36, 36, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(107, 69, 'S', 'MediumOrchid', 'SKU-7587-cdui', 960.71, 5, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(108, 70, 'L', 'Pink', 'SKU-0618-vqsx', 340.75, 6, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(109, 70, 'XS', 'DarkGreen', 'SKU-8610-pkww', 78.64, 0, '2025-02-16 10:21:36', '2025-02-16 10:21:36'),
(110, 70, 'XS', 'Azure', 'SKU-1575-ggvw', 400.05, 9, '2025-02-16 10:21:36', '2025-02-16 10:21:36');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('S1yQpvbh3zhzpLxm5BRUINqE0W0CKqRpb1z0hkeU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibWRNTUJIVFk4cmNRWWladU1pb2RTU2RJNWtmeGp4bkJBOW42b2lKcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO319', 1739731996);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'cumque', 'cumque', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(2, 'dolor', 'dolor', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(3, 'tempora', 'tempora', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(4, 'distinctio', 'distinctio', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(5, 'animi', 'animi', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(6, 'itaque', 'itaque', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(7, 'dolorum', 'dolorum', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(8, 'recusandae', 'recusandae', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(9, 'beatae', 'beatae', '2025-02-16 10:21:35', '2025-02-16 10:21:35'),
(10, 'et', 'et', '2025-02-16 10:21:35', '2025-02-16 10:21:35');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `newsletter_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_admin`, `phone`, `address`, `city`, `postal_code`, `country`, `newsletter_subscribed`, `last_login_at`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gentlemanbio.com', '$2y$12$z.FwojxnM.Wo3P0IghJv8.Q9UCjiXNU8ROXgqV2qKrqBnsI0VA1Yi', 'admin', 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-16 10:21:35', NULL, '2025-02-16 10:21:35', '2025-02-16 10:21:35', NULL),
(2, 'Ruth Kihn', 'darrion99@example.net', '$2y$12$RIoEx9e4Ts6nmg7uuInGgO/25SwdrpjerZWxlfnMZ6.cVCSOFcRWO', 'user', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-02-16 10:21:36', 'bGBVvekwHh', '2025-02-16 10:21:36', '2025-02-16 10:21:36', NULL),
(3, 'Romaric', 'kkromaric0@gmail.com', '$2y$12$cDjoyRIz0z8jZNM4Go39.enA.k.3YcDTWrkEZ1N7AOD2C1LobfUwO', 'user', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2025-02-16 10:38:54', '2025-02-16 10:38:54', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Index pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_variant_id_foreign` (`variant_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Index pour la table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Index pour la table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variants_sku_unique` (`sku`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
