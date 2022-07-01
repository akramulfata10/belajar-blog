CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'programmer','web-progremming','2022-06-05 01:15:26','2022-06-05 01:15:26'),(2,'Web Design','web-design','2022-06-05 01:15:26','2022-06-05 01:15:26'),(3,'Personal','personal','2022-06-05 01:15:27','2022-06-05 01:15:27');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_05_14_082218_create_posts_table',1),(6,'2022_05_14_142307_create_categories_table',1),(7,'2022_06_18_133728_add_is_admin_to_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Autem mollitia unde.',2,2,'fugiat-dolorum-optio-earum-explicabo-voluptatem',NULL,'Nihil est cupiditate tempore qui. Et exercitationem repellat beatae sint molestiae perspiciatis. Magni magnam assumenda perspiciatis. Dolore nobis tenetur explicabo deserunt eius nobis atque.','<p>Dolores eius quia iusto vel placeat. Ipsa similique rem modi eligendi nesciunt laboriosam. Maiores delectus rerum omnis eveniet.</p><p>Numquam omnis recusandae ducimus aperiam ut quo vero. Accusamus aliquid voluptatem tempore.</p><p>Reiciendis ab autem pariatur. Aliquam voluptatem amet sequi atque. Exercitationem quo et aut dolorem. Quia rerum dolor eos enim.</p><p>Praesentium qui laudantium delectus eos. Commodi quia in dolor provident voluptas ad minus sit. Provident aut sit officia et ea ipsum.</p><p>Esse asperiores distinctio quia quis corrupti. Aliquid animi et harum velit est. Et debitis ea vel nihil tempore. Illum voluptatem deleniti non cumque itaque nisi exercitationem.</p><p>Dolor qui eligendi laborum beatae facilis. Aliquam nulla eum sit ea eum atque sunt. Rerum veniam qui quia. Hic nisi nihil harum quis et consectetur et.</p><p>A molestiae iusto omnis dolores itaque dignissimos non. Occaecati iusto et sed tempora omnis possimus laudantium. Autem iste qui voluptates aut.</p><p>Qui quae modi omnis eveniet qui. Placeat fugit qui corporis autem deserunt omnis placeat. Aliquam molestiae dolorum occaecati eum eligendi sint voluptatem. Sit non cupiditate dolores omnis doloribus ea. Delectus non est omnis amet.</p>',NULL,'2022-06-05 01:15:24','2022-06-05 01:15:24'),(2,'Beatae velit voluptatibus et id consequatur aut vero esse laboriosam officiis.',2,1,'maxime-quibusdam-et-nisi','gambar/Z3c1JB97DrxZp24lCzCqdiP9PFIccLGLDSbPOH5x.jpg','Laboriosam nam consequatur temporibus porro sunt voluptatem. Et maiores possimus et. Deleniti tempora dolores dolores dicta similique.Excepturi beatae voluptas reprehenderit qui sapiente. Saepe occaec...','<div>Laboriosam nam consequatur temporibus porro sunt voluptatem. Et maiores possimus et. Deleniti tempora dolores dolores dicta similique.<br><br></div><div>Excepturi beatae voluptas reprehenderit qui sapiente. Saepe occaecati optio impedit. Aut eveniet aut in reiciendis at ut ducimus. Perferendis voluptatem enim reprehenderit iusto cumque quis aperiam.<br><br></div><div>Possimus ut non est nam impedit est consequuntur placeat. Sequi nulla rerum consequatur voluptas recusandae ut at ab.<br><br></div><div>Voluptate velit tempora omnis sit dolor quisquam praesentium. Id id laborum delectus porro culpa et modi. Odit eos quo corrupti dolorum voluptate enim earum quisquam. Velit quos necessitatibus est quas. Aut quo nihil et cumque assumenda earum omnis sed.<br><br></div><div>Voluptatibus autem et pariatur quae quas odio repellendus. Ut atque dolor est possimus et. Officia quo minima consequatur sit sed. Necessitatibus placeat exercitationem repellendus eum in temporibus.<br><br></div><div>Consequuntur dolorem doloremque est rerum deserunt et. Quia harum voluptate qui et. Quam nemo cumque nihil architecto in maiores.<br><br></div><div>Ut ut consequuntur consequatur quisquam qui nobis nisi. Rem fugiat ullam et accusamus. Numquam excepturi perferendis et ut neque debitis.<br><br></div><div>Aperiam consectetur excepturi similique ex placeat. Ea rerum eos id ad dolor. Qui distinctio quaerat nobis nihil.<br><br></div><div>Aut sequi non et cupiditate. Soluta est quod odio non et. Ratione eius accusantium et praesentium. Non fuga ad unde molestiae explicabo animi.<br><br></div><div>Hic veritatis eos deleniti voluptatem. Laborum hic consequatur earum tempore itaque. Accusamus quia soluta quo sequi voluptatem.<br><br></div>',NULL,'2022-06-05 01:15:24','2022-06-23 01:12:03'),(3,'Sunt in quas velit et.',2,3,'hic-qui-consequuntur-voluptatem-asperiores',NULL,'Nihil aspernatur earum nemo corrupti dolores perspiciatis magni. Exercitationem non quibusdam blanditiis consequatur laboriosam. Quos quidem necessitatibus quis commodi. Soluta a voluptates labore dolore.','<p>Iusto quaerat est qui aliquid provident dolor amet. Accusamus minima voluptatem dolores assumenda maiores. Quidem nihil alias rerum. Dolorem est architecto dolores vero omnis dicta.</p><p>Dolor soluta debitis consectetur itaque. Ea est aut sint et consequuntur porro tempore. Consequatur laboriosam enim ducimus sed ratione. Deserunt rerum labore facilis.</p><p>Nobis et odio aspernatur iusto dignissimos modi nulla. Inventore tempore incidunt atque eius amet ipsam alias. Culpa rem ullam et eum sunt amet velit. Sunt et molestiae perspiciatis deleniti deserunt.</p><p>Omnis odio est harum ut ea commodi temporibus. Aliquid quod alias qui excepturi nihil dicta. Labore autem quas et mollitia.</p><p>Reiciendis enim enim veritatis iste dicta. Et tempore velit placeat voluptatem quo tempora.</p><p>Et ut facilis veritatis facere recusandae cumque hic. Unde eos maiores velit aliquam illo eum. Libero nihil vel eum culpa. Iste dolores ut eos dolore nesciunt nemo dolore.</p>',NULL,'2022-06-05 01:15:24','2022-06-05 01:15:24'),(4,'Neque et molestiae perspiciatis tenetur quasi ex debitis.',1,1,'maxime-rem-odio-est-eos-quia-laborum','gambar/Gxf89OfsRAe5bq2X5Ho2e6XPGbT1mg63WlqP3AAW.png','Dolores dignissimos aut est ipsum modi praesentium non. Quis recusandae in officiis ducimus. Eos sunt debitis placeat non ex aspernatur quis tenetur.Consequuntur sit ad quia ut. Placeat laboriosam lab...','<div>Dolores dignissimos aut est ipsum modi praesentium non. Quis recusandae in officiis ducimus. Eos sunt debitis placeat non ex aspernatur quis tenetur.<br><br></div><div>Consequuntur sit ad quia ut. Placeat laboriosam laboriosam rerum ea quam voluptates omnis. Aliquam nihil consectetur aperiam qui aspernatur velit dolor.<br><br></div><div>Maiores est sunt minus ex est. Sit aspernatur et corrupti voluptatem. Est explicabo fugit soluta et voluptate. Rerum repellendus id neque et at expedita culpa.<br><br></div><div>Consequatur voluptatum accusamus quas animi qui sint. Modi ut dignissimos corporis eaque consequatur omnis libero.<br><br></div><div>Exercitationem ut et dolores ullam animi optio. Modi autem ut quaerat. Sequi iste amet rerum minus. Nobis qui quos nisi aliquam.<br><br></div><div>Earum beatae veritatis iste qui ab. Voluptatibus sit aperiam laudantium facere cum inventore et. Eaque voluptatibus qui voluptas nulla eius quos non.<br><br></div>',NULL,'2022-06-05 01:15:24','2022-06-23 01:13:34'),(5,'Blanditiis quia et rem sequi iste.',1,2,'maiores-earum-necessitatibus-mollitia-esse-iusto',NULL,'Dolor non quaerat qui est eos consectetur. Vero mollitia voluptatum voluptatem ut a molestiae. Aperiam modi qui consequatur illo quo voluptatem. Quo qui eum ea dolorum voluptatem nulla.','<p>Similique eligendi sed qui et. Quas dolorem ut vitae maiores deserunt. Maiores dolores deleniti accusamus sunt cumque et molestias. Aperiam dicta veritatis natus dolores illum ipsum.</p><p>Qui harum temporibus alias. Voluptates ut aspernatur ut ratione ut harum. Repellat deleniti alias accusamus aliquid. Accusamus earum ut voluptatem incidunt ut iure. Repellat mollitia dolorem eveniet saepe nihil et non est.</p><p>Minima totam earum ipsa natus. Sit ipsum a asperiores. Est quis in aut et tenetur ut minima. Aut odit laboriosam libero dolorem ut itaque.</p><p>Repudiandae labore occaecati quia blanditiis reiciendis sed. Quia dolorem velit hic deleniti est magni. Consequatur libero ad praesentium odio vitae nulla. Temporibus cumque voluptate similique nemo earum voluptate qui. Veniam repellat sit repellendus magnam rerum fugit deleniti.</p><p>Asperiores quam voluptates tenetur nihil. Vero voluptas molestiae quis dignissimos. Quidem rerum ea voluptas recusandae labore architecto magni.</p><p>Consequuntur omnis consequatur enim adipisci. Incidunt nihil consectetur deserunt voluptatem illum. Earum rem at aut sed provident. Nihil possimus ea voluptate quaerat.</p>',NULL,'2022-06-05 01:15:24','2022-06-05 01:15:24'),(6,'Sit rerum eligendi ullam sint.',1,1,'molestiae-iste-dolor-voluptatem-quo-laudantium-excepturi','gambar/NfzSxFRHbXwhDVAxtYgPSZcosoOmRXt6PM2Ia41T.png','Tenetur debitis hic qui exercitationem. Culpa cupiditate a ea nostrum perferendis. Unde quo officia aut nulla recusandae excepturi aut.Repudiandae nemo qui qui odio consectetur minus. Ipsa rerum nobis...','<div>Tenetur debitis hic qui exercitationem. Culpa cupiditate a ea nostrum perferendis. Unde quo officia aut nulla recusandae excepturi aut.<br><br></div><div>Repudiandae nemo qui qui odio consectetur minus. Ipsa rerum nobis ea vel porro consequuntur suscipit sint.<br><br></div><div>Sit itaque architecto autem aut temporibus dolores rem. Facere similique magni architecto autem corporis perspiciatis impedit. Numquam sed ut dicta sed labore quia suscipit.<br><br></div><div>Molestias nihil voluptatem et rem est. Dolor ratione a fugit tempora corrupti. Quibusdam voluptas deleniti delectus placeat deserunt sit.<br><br></div><div>Sunt nesciunt sed sunt sed voluptatem ea. Velit corrupti est incidunt molestiae. Sed alias velit amet eos rerum sit sed.<br><br></div>',NULL,'2022-06-05 01:15:24','2022-06-23 01:14:09'),(7,'Laborum reprehenderit ut reiciendis omnis tempora.',2,3,'qui-officiis-doloremque-quis',NULL,'Ex fuga harum ea in reprehenderit fuga. Fuga ut qui ut iusto similique. Est impedit deleniti odio commodi totam aliquid perspiciatis. Expedita officiis quaerat vel ut quo temporibus aut ipsam.','<p>Neque quos expedita deserunt itaque. Quia qui architecto quod et. Quos inventore eaque delectus exercitationem.</p><p>Sit voluptas est sint voluptates. Vel distinctio repellendus facilis quos consequatur ratione ad aut. Voluptas fugit sit vel cupiditate ea veritatis modi eveniet.</p><p>Nisi aspernatur eveniet consequuntur sed laboriosam sunt. Possimus iusto nihil assumenda deserunt quos. Aut ab sint fuga aut quo cupiditate ad rerum.</p><p>Repellat recusandae sint recusandae iste dolore. Ut quos repudiandae eos sit. Dolores accusantium facilis cumque praesentium.</p><p>Cupiditate neque qui dignissimos ut. Nostrum itaque a mollitia exercitationem nostrum officia est. Sit veniam earum nemo qui aut non esse. Adipisci aliquid perferendis eos velit et fugit aut quo.</p><p>Similique odit fugiat tenetur nihil est cupiditate. Deserunt odio similique commodi corporis.</p>',NULL,'2022-06-05 01:15:25','2022-06-05 01:15:25'),(8,'Voluptatibus molestiae harum provident praesentium non.',2,2,'nobis-dolorem-vel-totam-voluptatum-quia-natus-maxime',NULL,'Nisi qui ex maxime. Suscipit et sit ut sit. Aut consequatur architecto asperiores quidem. Libero ut quam suscipit officiis fuga voluptatibus alias quae.','<p>Dicta quia velit quis sint quos est iusto. Velit voluptates voluptates itaque mollitia. Ea tempore deleniti et deleniti.</p><p>Debitis ea alias provident ut quidem non rerum. Fugiat et veniam itaque exercitationem unde. Laborum nemo aliquam est eum rerum officiis. Praesentium soluta ut culpa sit incidunt officia deserunt.</p><p>Occaecati cumque consequatur soluta recusandae quo. Est consectetur suscipit totam voluptatem omnis fuga accusantium vel. Et mollitia tempore et non odit alias.</p><p>Hic consequatur possimus labore eos. Quod temporibus quis repellat ad magnam expedita ad placeat.</p><p>Itaque officia commodi sit eos. Eum dolorem laborum ea velit deleniti voluptas qui amet. Nulla natus consequatur sint voluptatibus.</p>',NULL,'2022-06-05 01:15:25','2022-06-05 01:15:25'),(9,'Omnis ut voluptas est.',1,1,'rerum-enim-esse-vero-provident-quis-dolorum-dicta',NULL,'Vel assumenda velit odio illum excepturi natus non. Accusamus qui est et. Eos ut neque voluptate et. Magni quisquam debitis sint ut ad exercitationem.','<p>Neque at labore est omnis quis natus. Ut rem et ad quis enim ducimus qui. Ut optio sed sed quo nihil dolore impedit eius. Ut hic laudantium nulla a.</p><p>Aut qui voluptatem et ullam explicabo. Pariatur temporibus et odit in. Facilis in asperiores quis esse.</p><p>Adipisci ipsum labore dolore autem recusandae. Nihil ipsum odio quibusdam rem placeat amet. Ipsa dolores est voluptas eum qui repellat suscipit rerum. Reiciendis nisi eveniet dolores esse ratione laborum.</p><p>Explicabo incidunt possimus earum sit qui perspiciatis. Esse deserunt nisi rem iste rem. Iste est consequatur animi saepe excepturi ut natus. Quas ut corporis porro aut non voluptas nemo accusantium. Doloremque quia excepturi eum.</p><p>Beatae qui nihil repellat blanditiis dolorem. Et tempore a facere sint veritatis non quia est. Provident minus sunt vero magnam ut quod.</p><p>Nobis modi quos aut maiores. Rem reiciendis architecto minima qui earum. A aperiam placeat repellendus quia.</p><p>Natus autem ad non. Non et harum maiores ducimus voluptatem dignissimos qui. Aut repudiandae dolorem voluptatem modi qui distinctio porro. Ducimus accusantium quia consequatur repellendus.</p><p>Repellendus repellendus magnam libero praesentium. Sint sit odio ducimus laborum et. Quidem ea molestiae a odit. Veniam occaecati esse commodi dignissimos officiis.</p><p>Quae quas tenetur voluptatem perspiciatis sint. Ab sequi quasi rerum est et. Optio esse magnam nulla corporis et. Eum labore vel eius et consectetur provident et.</p>',NULL,'2022-06-05 01:15:25','2022-06-05 01:15:25'),(10,'Dolore consequatur dignissimos quisquam.',1,3,'adipisci-minima-omnis-soluta',NULL,'Officia id omnis a eaque. Doloremque enim est est veniam.','<p>Molestias dolores optio eos qui. Cum expedita asperiores et vero modi nihil quod. Et rerum sed qui omnis quam sit minima.</p><p>Laboriosam totam repellendus enim est illo ut nesciunt. Quia molestiae in autem numquam voluptas non repellendus. Dolor delectus sequi ea nesciunt rerum.</p><p>Rem architecto sed vitae corporis et ex. Odio sint praesentium neque rerum. Ut quaerat eum suscipit iste nihil totam ea. Voluptatum aut quia hic ea eius molestiae natus.</p><p>Voluptate voluptatem quisquam aut placeat est. Sit sed facere dolor fugit ipsam beatae. Inventore maxime officiis voluptas quia asperiores culpa.</p><p>Vero recusandae ipsum ratione. Similique eos alias earum est qui illum. Minima fugiat fugiat quis non labore nisi quo.</p><p>Molestiae consequatur rerum quis molestias ratione aut earum. Dignissimos saepe iusto at animi recusandae dolorem. Consequatur ipsam beatae odio animi.</p><p>Provident laborum omnis voluptas temporibus. Ut dolor voluptate iusto. Et aut eos maxime minima officia veritatis non beatae. Iste est occaecati quo eos. Totam nihil numquam aspernatur odio nostrum.</p><p>Qui ducimus aspernatur accusamus illum. In perferendis minima et. Beatae sunt aspernatur repellat nam eum quae ut. Sunt ratione soluta totam dolor voluptate. Et quia harum doloremque vel.</p>',NULL,'2022-06-05 01:15:25','2022-06-05 01:15:25'),(11,'Quo illum et recusandae qui sit odio.',2,1,'quas-corrupti-fuga-temporibus-et-accusamus-amet-nam-quia','gambar/CSmVSmfjTME77xvYgyCGvoFnbC04mnSoZQmNldkK.png','Officiis voluptatem quia officia omnis eveniet. Voluptatem praesentium dolor molestiae nostrum fuga laboriosam aperiam. Tenetur qui tempora ea recusandae.Nam est ut et reiciendis eos. Aliquam ad sunt...','<div>Officiis voluptatem quia officia omnis eveniet. Voluptatem praesentium dolor molestiae nostrum fuga laboriosam aperiam. Tenetur qui tempora ea recusandae.<br><br></div><div>Nam est ut et reiciendis eos. Aliquam ad sunt expedita excepturi mollitia et voluptate ducimus. Perspiciatis deleniti ab id assumenda. Est ullam maxime perspiciatis dolore.<br><br></div><div>Consequatur molestias cupiditate possimus qui. Necessitatibus architecto et iure perferendis libero. Vitae consequuntur alias assumenda ut. Dolores aut consectetur nihil et est rem aut.<br><br></div><div>Quod necessitatibus voluptatibus voluptatem et repudiandae reiciendis. Recusandae aut vel aliquam rerum nihil. Voluptas nulla sed ipsum dolorem corporis.<br><br></div><div>Ab perferendis quis nam nisi rem. Voluptas ut alias sapiente error voluptatem est.<br><br></div><div>Voluptatem sit et aut id. Repudiandae dolor vitae in est. Cumque aut nam esse. Aut vero blanditiis voluptate voluptatem quasi.<br><br></div><div>Molestiae provident voluptas minima quam porro eos officiis. Eveniet consequatur minus enim qui. Odit nesciunt reprehenderit sed in. Fugit harum consequatur qui quis distinctio. Dolores aut iure adipisci omnis voluptas dolores neque.<br><br></div><div>Id aut dolore laborum libero. Sint voluptates aut similique id id beatae. Accusantium rerum et officiis quas enim voluptatem eum.<br><br></div><div>Ullam doloribus atque nihil omnis. Ut aut soluta magnam id fugit assumenda quam. Consequuntur dolore velit magnam ea.<br><br></div><div>Id ut placeat ea perspiciatis. Impedit architecto et et laboriosam aut nulla nulla ipsam. Est sit sed enim atque.<br><br></div>',NULL,'2022-06-05 01:15:25','2022-06-23 01:14:25'),(12,'Voluptas rerum quaerat sunt explicabo quia.',1,3,'a-delectus-animi-suscipit-sit-fugiat-vero-porro',NULL,'Dolor laboriosam et architecto et et. Nostrum quaerat veritatis sed accusantium fugit pariatur. Exercitationem nisi iure distinctio exercitationem rerum quia. Tempore iusto rerum minima natus.','<p>Et nulla dolores et omnis in. At eligendi nobis deleniti fugit ut possimus. Modi vero odio beatae vel dolor quae. Qui autem voluptatem maxime aut.</p><p>Enim soluta est ut. Sit consectetur explicabo omnis ad illo ut facilis. Et incidunt eligendi consequuntur.</p><p>Optio aut vero pariatur voluptas. Ipsa dignissimos reiciendis tempore dolor minus corporis. Ut quam cum veniam voluptatem est. Perspiciatis iste sed aliquid laudantium minus.</p><p>Est consequatur consequatur quo iusto voluptates. Hic repellat corporis alias sit consequuntur. Rerum sunt qui sint ad natus dolore. Iste non aliquam et nobis sed ipsum aspernatur.</p><p>Soluta iusto ut eius necessitatibus corporis voluptatibus omnis. Nobis veritatis eum vitae sit minima exercitationem. Ipsum voluptatem aperiam soluta sequi id eaque. Eaque natus eveniet quaerat quisquam explicabo facere.</p><p>Molestiae distinctio qui fugiat occaecati. Quos doloribus magni est corporis illum ut.</p><p>Accusantium quia ea quis harum non. Et dolorem qui quo illum. Reprehenderit corrupti dolores praesentium facere soluta velit repellat laboriosam. Illum corporis quae commodi esse et expedita atque.</p>',NULL,'2022-06-05 01:15:25','2022-06-05 01:15:25'),(13,'Enim quis soluta quos et atque mollitia voluptatum at est voluptas autem.',1,1,'dolorem-aliquid-possimus-eos-rerum-at-quaerat-aut','gambar/2yDWmrhtYbEt43p562ITIqr54M4FufcF0fbOsFNt.png','Nemo dolor qui nulla rerum itaque. Veniam totam sed impedit alias est sit et. Eum aspernatur velit voluptatibus quia nisi error.Iure maxime quia animi beatae modi animi quia. Eos totam rerum tempore t...','<div>Nemo dolor qui nulla rerum itaque. Veniam totam sed impedit alias est sit et. Eum aspernatur velit voluptatibus quia nisi error.<br><br></div><div>Iure maxime quia animi beatae modi animi quia. Eos totam rerum tempore tenetur rerum et. Nemo repudiandae voluptatum numquam aliquam.<br><br></div><div>Blanditiis quas asperiores praesentium consequatur eligendi. Dolores qui et sed. Quas aut quis itaque deleniti non. Dolorum facilis id exercitationem rerum vel temporibus nisi culpa. Odio vel ipsum eveniet laudantium exercitationem quo.<br><br></div><div>Possimus est blanditiis nihil repellendus quia consequatur. Sint qui amet aut consequatur similique. Earum magnam expedita repellat molestiae fugit magnam. Recusandae est fuga ut necessitatibus mollitia.<br><br></div><div>Qui optio incidunt culpa qui aut aut quo. Dolores deserunt ea voluptatibus itaque qui odit ipsum omnis. Numquam optio id maiores quis iure nostrum debitis. Sit eaque tempora deleniti enim sed maxime corporis dolore.<br><br></div><div>Totam enim ad hic laboriosam et est quo rerum. Consequatur quia maiores ipsam ut consequatur. Unde pariatur sint tempore natus optio est. Commodi deleniti et natus velit.<br><br></div><div>Blanditiis accusamus sunt quidem debitis nobis. Ut possimus consequatur sed veniam. Assumenda odit quidem accusamus iusto qui perferendis autem. Facilis est saepe aliquid quibusdam in.<br><br></div><div>Sint architecto occaecati eum iusto minus. Ea ratione ut vel mollitia ut. Reprehenderit necessitatibus laborum accusamus et quas aspernatur. Aliquid id nesciunt incidunt ut quibusdam repellendus ducimus.<br><br></div><div>Ut nulla error similique minima odio a. Consectetur optio ea voluptates itaque sunt vero et. Quo facilis quas pariatur magni.<br><br></div>',NULL,'2022-06-05 01:15:25','2022-06-23 01:14:42'),(14,'Doloremque quia voluptas vel natus accusantium corporis.',2,3,'vel-adipisci-illum-facere-quam-perspiciatis-doloremque-aut-ipsam',NULL,'Consequuntur libero molestias quia sunt ut necessitatibus provident. Perferendis aut tempora enim minima similique est rerum. Impedit iure iusto ea facilis repudiandae. Omnis reprehenderit enim incidunt cumque commodi quisquam.','<p>Voluptatem ut sunt in iste molestias voluptatem cumque. Quis nihil nihil aperiam rem ut aliquid. Nihil culpa eum sequi recusandae in voluptatum.</p><p>Quidem perferendis atque aspernatur quia. Occaecati accusamus commodi cumque. Enim perferendis neque voluptas dolores. Eveniet nihil in voluptate consectetur laborum.</p><p>Porro perspiciatis accusamus minima nihil eius voluptatem harum dolorum. Quod aut quisquam id illo quisquam quia. Ab fugit dolor praesentium sit.</p><p>Deleniti repellendus velit odit assumenda repellat. Animi maxime molestiae quis. Quisquam facilis voluptatum quisquam pariatur. Asperiores rerum ut qui optio velit.</p><p>Officia aliquam qui explicabo perferendis illum. Non culpa asperiores sit in voluptatibus soluta doloribus. Repellat aspernatur aspernatur aperiam veritatis non repellendus.</p><p>Temporibus dolor numquam consequatur culpa sed maiores. Iure sapiente ut laudantium sunt qui quia id est.</p><p>Ab consectetur corrupti quia distinctio error doloremque eveniet. Beatae et eligendi expedita autem nihil doloribus. Ut commodi dolor tenetur eius et earum. Beatae aut quo recusandae excepturi blanditiis at.</p><p>Cupiditate nihil commodi autem laborum quia cumque et. Voluptatem illo voluptas et dolore facere. Autem cumque ea veniam vel voluptas veniam.</p><p>Corporis deserunt mollitia voluptatem ab qui magni itaque. Quos consequatur dolore ad doloremque. Fugiat animi amet nam necessitatibus quo. Error velit enim saepe consequatur.</p>',NULL,'2022-06-05 01:15:25','2022-06-05 01:15:25'),(15,'Officia est aut fugiat hic dolorem qui quibusdam.',1,2,'molestias-animi-quisquam-laudantium-aut-velit-eius-est',NULL,'Excepturi facere ipsum doloremque ut eius consequuntur repellendus. Odit est cupiditate nihil maiores doloremque consequatur incidunt. Hic labore quam dignissimos eaque qui nostrum dolores vero. Magni nihil consequuntur quae laudantium dolores.','<p>Nam autem architecto fugit aspernatur molestias. Dolores recusandae nulla nam aperiam. Quam saepe quam similique facere.</p><p>Illo accusantium qui et animi placeat voluptate. Natus et occaecati suscipit aperiam. In voluptatibus quisquam vel. Nisi rerum voluptas et.</p><p>Facere quod dignissimos ea totam. Est cupiditate consequatur fugit facilis est dolores. Autem natus sed laborum distinctio.</p><p>Labore sed et asperiores nihil enim. Voluptatem maiores itaque tempora hic quas. Ut vero libero assumenda quo quis et assumenda.</p><p>Ex quam sed commodi vitae saepe deleniti. Maxime cum labore et. Voluptate molestiae quasi aspernatur ea culpa et incidunt.</p><p>Quae quae vel officiis nam eaque dignissimos. Consequatur nisi enim quia neque sed excepturi. Est eius eos consequatur.</p><p>Eligendi omnis aut doloremque voluptates suscipit similique earum. Alias tempore odio et omnis quaerat repellendus minima. Dolor nostrum explicabo exercitationem quisquam nesciunt.</p><p>Enim totam ipsam eaque eaque. Molestias quaerat omnis ut fugiat. Qui id qui repudiandae non non fuga.</p>',NULL,'2022-06-05 01:15:25','2022-06-05 01:15:25'),(16,'Quo aut aliquid ut.',2,2,'ut-fugiat-nostrum-alias-eius',NULL,'Expedita itaque voluptatem quis qui quis eligendi deserunt. Nisi provident doloremque eius in fuga. Perspiciatis dolor reiciendis voluptas sequi omnis.','<p>Sunt quas in esse voluptatem fugiat. In a debitis sit perspiciatis sunt quia totam eum. Nihil saepe voluptatibus debitis vel sunt. Voluptatem eos nihil sunt animi qui magni cum.</p><p>Sint impedit consequatur qui id quod iste quasi. Vel deserunt veritatis necessitatibus quam voluptas harum. Voluptatum dignissimos dolorem autem praesentium dicta recusandae.</p><p>Natus quisquam ipsam temporibus. Dolor esse nam labore. Dolorem et aut sit sunt. Est enim blanditiis quasi odit quibusdam expedita.</p><p>Eaque ducimus dolorem voluptas officia. Praesentium dolore quae et eveniet possimus natus nihil. Voluptas in voluptatibus suscipit dolorum cupiditate sit. Et temporibus ut veniam ullam enim inventore eos consequatur.</p><p>Delectus eos est et et excepturi adipisci nisi. Ab rerum facere voluptas velit autem eligendi qui ea. Est dolore eius aut accusamus earum autem quo dolor. At illo eius provident. Fugiat explicabo laudantium necessitatibus nobis.</p>',NULL,'2022-06-05 01:15:26','2022-06-05 01:15:26'),(17,'Eveniet ut recusandae quae ullam voluptatum tempora sint quo mollitia.',2,1,'inventore-quod-cumque-veniam-non-et-non','gambar/cj8CG0vI2rrWwlAtG2CUvOjOiuUlnzkzAzw8NI6I.png','Reprehenderit eum odit est error aut quam. Voluptatibus aut quod doloribus dicta est amet et.Cumque quas omnis et et quia. Est ratione animi laborum. Vel eius dolores ea. Dolor ea ut sunt tempore cons...','<div>Reprehenderit eum odit est error aut quam. Voluptatibus aut quod doloribus dicta est amet et.<br><br></div><div>Cumque quas omnis et et quia. Est ratione animi laborum. Vel eius dolores ea. Dolor ea ut sunt tempore consectetur unde quia.<br><br></div><div>Iure ipsam quam hic consequatur dolor suscipit. Magni rerum ratione veniam voluptate. Asperiores eos quis vel natus est. Nam nobis dolor sed accusantium doloremque voluptates voluptatem.<br><br></div><div>Sed deleniti exercitationem et consequatur. Voluptas voluptatibus voluptatem eum est aut nulla sunt. Quisquam autem quisquam perferendis. Sapiente quam commodi dolore maxime expedita.<br><br></div><div>Mollitia eum ipsa vero voluptate quam veritatis sit. Et et similique consequatur et ut rerum. Ut explicabo ut consequatur rerum dolores.<br><br></div><div>Laborum sunt adipisci est sed non quam. Eveniet dolore ut dolorem ut reprehenderit laboriosam aperiam. Voluptatibus fuga temporibus aut reiciendis saepe quod numquam. Ea quo doloribus architecto quo excepturi recusandae.<br><br></div><div>Amet ea saepe neque vel ut. Est perferendis voluptate consequatur quisquam non vitae. Aut non et doloremque magni praesentium.<br><br></div><div>Omnis rem architecto temporibus voluptatem nihil maiores et. Ducimus et reiciendis vero. Quia consequatur deserunt libero dicta dignissimos.<br><br></div><div>Necessitatibus veniam est sint. Sint deserunt exercitationem eos. Fuga qui at delectus quae vitae.<br><br></div><div>Non recusandae voluptatum est alias. Amet et aut quis vel at qui. Distinctio fuga voluptas eveniet provident esse iste.<br><br></div>',NULL,'2022-06-05 01:15:26','2022-06-23 01:15:02'),(18,'Enim nulla numquam quasi officia ut sed id.',1,3,'quidem-exercitationem-doloremque-consequatur-velit',NULL,'Voluptas animi ut aut molestias omnis. Sint pariatur quo reiciendis placeat in deleniti. Molestias voluptatem consequatur minima nemo. Qui quisquam dicta optio.','<p>Quae velit et officiis esse quos unde officiis odit. Ea eos est a corporis. Laboriosam qui architecto iure quo sit quia.</p><p>Accusamus et suscipit quo assumenda sint. Distinctio aut autem iure ut totam. Neque et fuga qui.</p><p>Dolorum quas qui tempore culpa quisquam atque beatae vel. Ullam non consectetur et voluptatem. Explicabo et hic dolor in eos est sint. Eius deserunt debitis a vel deserunt eum.</p><p>Ducimus ipsa deserunt ut ullam earum sint. Est tempora aut necessitatibus est qui.</p><p>Quia accusantium incidunt sunt inventore. Vero officiis blanditiis voluptate accusamus quia. Qui consequuntur laudantium itaque sed placeat. Laborum incidunt modi blanditiis sed enim distinctio.</p><p>Blanditiis suscipit qui laudantium quidem est autem quidem. Vitae dolores veniam dolorem sit in. Saepe debitis est iure mollitia dolores perferendis numquam.</p><p>Aspernatur veritatis nam iure quia. Corporis molestias magni totam doloremque. Voluptates voluptatum officia consequatur. Non sint et et tenetur maiores possimus porro.</p><p>Dolorum laborum voluptatem consequatur in nesciunt veritatis. Et ut quo commodi molestiae nisi officia dolores quaerat. Rerum aliquam blanditiis et soluta eos quia.</p>',NULL,'2022-06-05 01:15:26','2022-06-05 01:15:26'),(19,'Libero possimus quia voluptatem.',1,3,'pariatur-eum-hic-perspiciatis-optio',NULL,'Omnis sapiente iure voluptate voluptatem sequi autem. Quis vel commodi nobis rerum. Numquam ipsum id ipsa provident voluptatem quia laudantium.','<p>Maxime excepturi unde ut totam. At architecto dolores magni quo rem cumque. Et possimus qui facilis accusantium esse modi blanditiis. Quo qui dolorem nobis corrupti placeat et ad.</p><p>Quam quisquam dignissimos impedit veritatis non autem. Nemo tempore voluptatem eos hic quisquam assumenda. Inventore fuga omnis ea qui.</p><p>Voluptatem ut est qui hic non. Sunt ratione aliquid aut earum ut. Et et sapiente dolores vero ut adipisci rem. Labore nam corporis et quis blanditiis.</p><p>Quia rerum aperiam expedita. Odio laboriosam qui commodi iste. Voluptatem amet culpa accusantium tempore impedit placeat expedita. Aut cupiditate quo facilis natus sit ut.</p><p>Id est dolor consectetur ratione quod deleniti sint. Eum quia odio enim. Facilis quae nesciunt unde doloremque.</p><p>Beatae hic possimus maxime mollitia ut. Qui cumque pariatur minus temporibus. Dolorum et quidem sunt quae.</p><p>Et illum facere non vitae. In vero culpa expedita. Eaque et earum molestiae quaerat.</p><p>Amet omnis quisquam illum incidunt eius qui. Velit voluptatem dolor et aut nam accusantium molestiae. Incidunt assumenda omnis dolor reprehenderit iure quo voluptate.</p>',NULL,'2022-06-05 01:15:26','2022-06-05 01:15:26'),(20,'Rem suscipit.',1,2,'nobis-repellat-aliquid-excepturi-quos-illum-aut-quia',NULL,'Et accusamus blanditiis repellendus sed provident a. Et et quibusdam ut quis quod eum asperiores. Et voluptas qui expedita est nisi quo. Magnam suscipit impedit maxime.','<p>Maxime qui hic perspiciatis dolore quisquam omnis labore. Sunt et fugit rerum pariatur officia facilis. Eveniet amet tenetur ut non omnis et.</p><p>Rerum ut perferendis exercitationem maiores molestiae vitae. Molestias aperiam veritatis incidunt et omnis. Et ut est nulla facere. Voluptatibus adipisci dolorem molestiae.</p><p>Commodi eum eaque distinctio quis. Et accusantium consequatur deserunt mollitia. Officia asperiores praesentium voluptas beatae minus.</p><p>Non quia et maxime aut. Expedita sint odit possimus in. Molestiae molestiae excepturi impedit recusandae tenetur id molestias animi.</p><p>Et aut quae veritatis culpa ut. Reprehenderit consequatur expedita quis id accusamus occaecati. Officiis magni excepturi blanditiis a rem veniam.</p><p>Sit ab voluptatum sunt voluptatibus odit. A rerum alias qui eveniet cupiditate esse neque. Minima fugiat eos porro non autem sit.</p><p>Quam officia porro qui dolorem esse fuga. Ad non nisi consequatur in nesciunt nulla recusandae. Explicabo neque enim debitis quis neque sint ducimus.</p>',NULL,'2022-06-05 01:15:26','2022-06-05 01:15:26');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'akramulfata','akramulfata','akramulfata10@gmail.com',NULL,'$2y$10$uQG3LmHMCdLffpJKQMw3P.6xKAFypCnmAHC5mcaEMIzNEFTh7qWBm',NULL,'2022-06-05 01:15:19','2022-06-05 01:15:19',1),(2,'pakamir','garang69','pakamir@gmail.com','2022-06-05 01:15:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','k93KJWlT9ZQPJBSvSzH48pP52XVWgMT2ydJo7MYYEed1Fsv2OXsD61WwRsB3','2022-06-05 01:15:23','2022-06-05 01:15:23',1),(3,'pakamir1','syahrini.laksmiwati','pakamir1@gmail.com','2022-06-05 01:15:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','uPyFv6KjuyjduY9uzwm8bcgVRkxYzfn7TIEEiAhC5d61wCm0Q2D3iMTnbqSb','2022-06-05 01:15:23','2022-06-05 01:15:23',0),(4,'Wage Suwarno','habibi.ade','gading85@example.net','2022-06-05 01:15:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Yv8L3Q9OeY','2022-06-05 01:15:24','2022-06-05 01:15:24',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-01 15:32:17
