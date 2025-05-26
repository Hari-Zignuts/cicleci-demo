-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: rubato
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `account_id` varchar(36) NOT NULL DEFAULT '',
  `secret_key` varchar(36) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bi_user_dashboard`
--
SET GLOBAL sql_mode = 'NO_ENGINE_SUBSTITUTION';

DROP TABLE IF EXISTS `bi_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bi_user_dashboard` (
  `index` bigint DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_group` text,
  `email` text,
  `songs_with_data` double DEFAULT NULL,
  `all_songs` double DEFAULT NULL,
  `does_have_model` double DEFAULT NULL,
  `delta_stress` double DEFAULT NULL,
  `delta_hr` double DEFAULT NULL,
  `percent_of_recommendations` double DEFAULT NULL,
  `garmin_last_date` text,
  `spotify_last_date` text,
  `hours_listened` double DEFAULT NULL,
  `hours_listened_with_data` double DEFAULT NULL,
  `favorite_genre` text,
  KEY `ix_bi_user_dashboard_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bi_user_data`
--

DROP TABLE IF EXISTS `bi_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bi_user_data` (
  `level_0` bigint DEFAULT NULL,
  `index` bigint DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `track_id` text,
  `user_track_id` bigint DEFAULT NULL,
  `date_started` datetime DEFAULT NULL,
  `date_ended` datetime DEFAULT NULL,
  `delta_stress` double DEFAULT NULL,
  `stress_previous` double DEFAULT NULL,
  `stress_next` double DEFAULT NULL,
  `delta_hr` double DEFAULT NULL,
  `hr_previous` double DEFAULT NULL,
  `hr_next` double DEFAULT NULL,
  `hr_trend` double DEFAULT NULL,
  `acousticness` double DEFAULT NULL,
  `danceability` double DEFAULT NULL,
  `energy` double DEFAULT NULL,
  `instrumentalness` double DEFAULT NULL,
  `key` text,
  `liveness` double DEFAULT NULL,
  `loudness` double DEFAULT NULL,
  `mode` text,
  `speechiness` double DEFAULT NULL,
  `tempo` double DEFAULT NULL,
  `time_signature` text,
  `valence` double DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `artistName` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `spotifyUrl` text,
  `albumImageUrl` text,
  `status` bigint DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `minSpent` double DEFAULT NULL,
  `hourSpent` double DEFAULT NULL,
  `valence_scaled` double DEFAULT NULL,
  `energy_scaled` double DEFAULT NULL,
  `timebetween` text,
  `session` text,
  `song` text,
  KEY `ix_bi_user_data_level_0` (`level_0`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bi_user_data_full`
--

DROP TABLE IF EXISTS `bi_user_data_full`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bi_user_data_full` (
  `level_0` bigint DEFAULT NULL,
  `index` datetime DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `track_id` text,
  `user_track_id` bigint DEFAULT NULL,
  `date_started` datetime DEFAULT NULL,
  `date_ended` datetime DEFAULT NULL,
  `acousticness` double DEFAULT NULL,
  `danceability` double DEFAULT NULL,
  `energy` double DEFAULT NULL,
  `instrumentalness` double DEFAULT NULL,
  `key` double DEFAULT NULL,
  `liveness` double DEFAULT NULL,
  `loudness` double DEFAULT NULL,
  `mode` double DEFAULT NULL,
  `speechiness` double DEFAULT NULL,
  `tempo` double DEFAULT NULL,
  `time_signature` double DEFAULT NULL,
  `valence` double DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `artistName` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `spotifyUrl` text,
  `albumImageUrl` text,
  `status` bigint DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `minSpent` double DEFAULT NULL,
  `hourSpent` double DEFAULT NULL,
  KEY `ix_bi_user_data_full_level_0` (`level_0`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bi_user_explainability`
--

DROP TABLE IF EXISTS `bi_user_explainability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bi_user_explainability` (
  `index` bigint DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `variable` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` float DEFAULT NULL,
  KEY `ix_bi_user_explainability_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bi_user_groups`
--

DROP TABLE IF EXISTS `bi_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bi_user_groups` (
  `index` bigint DEFAULT NULL,
  `user_id` text,
  `user_group` text,
  KEY `ix_bi_user_groups_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `biostrap_point`
--

DROP TABLE IF EXISTS `biostrap_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biostrap_point` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `entry_type` varchar(36) NOT NULL DEFAULT '',
  `value` double NOT NULL,
  `date_point` datetime NOT NULL,
  `date_point_local` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_point_date` (`user_id`,`entry_type`,`date_point`),
  KEY `date_point` (`date_point`),
  KEY `date_point_type` (`date_point`,`entry_type`),
  KEY `date_point_type_value` (`date_point`,`entry_type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `biostrap_user`
--

DROP TABLE IF EXISTS `biostrap_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biostrap_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `access_token` varchar(256) NOT NULL DEFAULT '',
  `refresh_token` varchar(256) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `biostrap_user_data`
--

DROP TABLE IF EXISTS `biostrap_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biostrap_user_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `biostrap_user_id` varchar(36) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '',
  `birthday` varchar(36) NOT NULL DEFAULT '',
  `gender` varchar(36) NOT NULL DEFAULT '',
  `height` int NOT NULL,
  `weight` int NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cardiomood_user`
--

DROP TABLE IF EXISTS `cardiomood_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardiomood_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `cardiomood_id` varchar(36) NOT NULL DEFAULT '',
  `user_access_token` varchar(2048) NOT NULL DEFAULT '',
  `refresh_token` varchar(2048) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cardiomood_user_id` (`cardiomood_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_pixel_tracking`
--

DROP TABLE IF EXISTS `email_pixel_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_pixel_tracking` (
  `email_id` varchar(128) NOT NULL DEFAULT '',
  `token` varchar(128) NOT NULL DEFAULT '',
  `user_token` varchar(128) NOT NULL DEFAULT '',
  `ip_address` varchar(128) NOT NULL DEFAULT '',
  `dp` varchar(128) NOT NULL DEFAULT '',
  `times` int unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`email_id`,`token`,`user_token`,`ip_address`),
  KEY `date_updated` (`date_updated`),
  KEY `email_id` (`email_id`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `chain_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `max_seats` int DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `pcc_fac_uuid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facility_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facility_admin`
--

DROP TABLE IF EXISTS `facility_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_admin` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int unsigned NOT NULL,
  `admin_id` varchar(36) NOT NULL DEFAULT '',
  `is_centralized_admin` int NOT NULL DEFAULT '0',
  `garmin_realtime` int NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facility_admin_facility_id_admin_id_uindex` (`facility_id`,`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facility_chain`
--

DROP TABLE IF EXISTS `facility_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_chain` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `pcc_org_uuid` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `facility_chain_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garmin_point`
--

DROP TABLE IF EXISTS `garmin_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garmin_point` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `entry_type` varchar(36) NOT NULL DEFAULT '',
  `value` int NOT NULL,
  `date_point` datetime NOT NULL,
  `date_point_local` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  `provider` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_point_date` (`user_id`,`entry_type`,`date_point`),
  KEY `date_point` (`date_point`),
  KEY `date_point_type` (`date_point`,`entry_type`),
  KEY `date_point_type_value` (`date_point`,`entry_type`,`value`),
  KEY `entry_type_value` (`entry_type`,`value`),
  KEY `garmin_point_user_id_date_point_entry_type_index` (`user_id`,`date_point`,`entry_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garmin_point_server`
--

DROP TABLE IF EXISTS `garmin_point_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garmin_point_server` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `entry_type` varchar(36) NOT NULL DEFAULT '',
  `value` int NOT NULL,
  `date_point` datetime NOT NULL,
  `date_point_local` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  `provider` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_point_date` (`user_id`,`entry_type`,`date_point`),
  KEY `date_point` (`date_point`),
  KEY `date_point_type` (`date_point`,`entry_type`),
  KEY `date_point_type_value` (`date_point`,`entry_type`,`value`),
  KEY `entry_type_value` (`entry_type`,`value`),
  KEY `garmin_point_user_id_date_point_entry_type_index` (`user_id`,`date_point`,`entry_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garmin_realtime_hr_point`
--

DROP TABLE IF EXISTS `garmin_realtime_hr_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garmin_realtime_hr_point` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `value` int NOT NULL,
  `date_point_local` datetime(3) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_point_date` (`user_id`,`date_point_local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garmin_realtime_hrv_point`
--

DROP TABLE IF EXISTS `garmin_realtime_hrv_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garmin_realtime_hrv_point` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `value` int NOT NULL,
  `date_point_local` datetime(3) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_point_date` (`user_id`,`date_point_local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garmin_realtime_rmssd_point`
--

DROP TABLE IF EXISTS `garmin_realtime_rmssd_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garmin_realtime_rmssd_point` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `value` int NOT NULL,
  `date_point_local` datetime(3) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_point_date` (`user_id`,`date_point_local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garmin_realtime_stress_point`
--

DROP TABLE IF EXISTS `garmin_realtime_stress_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garmin_realtime_stress_point` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `value` int NOT NULL,
  `date_point_local` datetime(3) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_point_date` (`user_id`,`date_point_local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garmin_sleep_point`
--

DROP TABLE IF EXISTS `garmin_sleep_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garmin_sleep_point` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `entry_type` varchar(36) NOT NULL DEFAULT '',
  `value` varchar(36) NOT NULL DEFAULT '',
  `start_date_point` datetime NOT NULL,
  `start_date_point_local` datetime NOT NULL,
  `end_date_point` datetime NOT NULL,
  `end_date_point_local` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_point_date` (`user_id`,`entry_type`,`start_date_point`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garmin_user`
--

DROP TABLE IF EXISTS `garmin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garmin_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `garmin_id` varchar(36) NOT NULL DEFAULT '',
  `user_access_token` varchar(36) NOT NULL DEFAULT '',
  `device_id` varchar(128) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `garmin_user_id` (`garmin_id`,`user_id`),
  KEY `garmin_user_user_access_token_index` (`user_access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `index` bigint DEFAULT NULL,
  `script_name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `date_started` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `date_ended` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  KEY `ix_logs_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `model_history`
--

DROP TABLE IF EXISTS `model_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_history` (
  `index` bigint DEFAULT NULL,
  `user_id` text,
  `training_time` text,
  `training_size` bigint DEFAULT NULL,
  KEY `ix_model_history_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `musical_clusters_by_genre_year`
--

DROP TABLE IF EXISTS `musical_clusters_by_genre_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musical_clusters_by_genre_year` (
  `index` bigint DEFAULT NULL,
  `track_id` text,
  `release_decade` int DEFAULT NULL,
  `genre` text,
  `musical_cluster` int DEFAULT NULL,
  KEY `idx_musical_clusters_by_genre_year` (`musical_cluster`),
  KEY `ix_musical_clusters_by_genre_year_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `musical_clusters_by_genre_year_lang`
--

DROP TABLE IF EXISTS `musical_clusters_by_genre_year_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musical_clusters_by_genre_year_lang` (
  `index` bigint DEFAULT NULL,
  `track_id` text,
  `release_decade` int DEFAULT NULL,
  `genre` text,
  `lang` text,
  `musical_cluster` int DEFAULT NULL,
  KEY `idx_musical_clusters` (`musical_cluster`),
  KEY `idx_musical_clusters_filter` (`musical_cluster`,`release_decade`,`genre`(64),`lang`(32)),
  KEY `idx_musical_clusters_filter_two` (`release_decade`,`genre`(64),`lang`(32),`track_id`(36)),
  KEY `ix_musical_clusters_by_genre_year_lang_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oura_user`
--

DROP TABLE IF EXISTS `oura_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oura_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `access_token` varchar(256) NOT NULL DEFAULT '',
  `refresh_token` varchar(256) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patientId` int NOT NULL,
  `rubatoUserId` int DEFAULT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dateOfBirth` date NOT NULL,
  `maidenName` varchar(100) DEFAULT NULL,
  `maritalStatus` varchar(50) DEFAULT NULL,
  `medicAidNumber` varchar(100) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admissionDate` date NOT NULL,
  `admissionDateTime` datetime NOT NULL,
  `bedDesc` varchar(100) DEFAULT NULL,
  `bedId` int DEFAULT NULL,
  `birthPlace` varchar(100) DEFAULT NULL,
  `cellPhone` varchar(20) DEFAULT NULL,
  `citizenship` varchar(100) DEFAULT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `deathDateTime` datetime DEFAULT NULL,
  `deceased` tinyint(1) DEFAULT '0',
  `dischargeDate` date NOT NULL,
  `dischargeDateTime` datetime NOT NULL,
  `ethnicityDesc` varchar(100) DEFAULT NULL,
  `floorDesc` varchar(100) DEFAULT NULL,
  `floorId` int DEFAULT NULL,
  `hasPhoto` tinyint(1) DEFAULT '0',
  `homePhone` varchar(20) DEFAULT NULL,
  `ituPhone` varchar(20) DEFAULT NULL,
  `languageCode` varchar(10) DEFAULT NULL,
  `languageDesc` varchar(100) DEFAULT NULL,
  `medicalRecordNumber` varchar(100) NOT NULL,
  `medicareBeneficiaryIdentifier` varchar(100) DEFAULT NULL,
  `medicareNumber` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `ompId` int NOT NULL,
  `orgUuid` char(36) NOT NULL,
  `outpatient` tinyint(1) DEFAULT '0',
  `patientExternalId` varchar(100) NOT NULL,
  `patientStatus` varchar(50) NOT NULL,
  `phoneNumberType` varchar(50) DEFAULT NULL,
  `preferredName` varchar(100) DEFAULT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `revisionBy` varchar(100) DEFAULT NULL,
  `revisionDate` datetime DEFAULT NULL,
  `roomDesc` varchar(100) DEFAULT NULL,
  `roomId` int DEFAULT NULL,
  `smokingStatusCode` varchar(50) DEFAULT NULL,
  `smokingStatusDesc` varchar(100) DEFAULT NULL,
  `socialBeneficiaryIdentifier` varchar(100) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `unitDesc` varchar(100) DEFAULT NULL,
  `unitId` int DEFAULT NULL,
  `waitingList` tinyint(1) DEFAULT '0',
  `facId` int NOT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcc_users`
--

DROP TABLE IF EXISTS `pcc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcc_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fac_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `rubato_user_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `maiden_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medic_aid_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` date NOT NULL,
  `admission_date_time` datetime NOT NULL,
  `discharge_date` date NOT NULL,
  `discharge_date_time` datetime NOT NULL,
  `bed_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed_id` int DEFAULT NULL,
  `birth_place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `death_date_time` datetime DEFAULT NULL,
  `deceased` tinyint(1) DEFAULT '0',
  `ethnicity_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_id` int DEFAULT NULL,
  `has_photo` tinyint(1) DEFAULT '0',
  `home_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itu_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_record_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicare_beneficiary_identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicare_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `omp_id` int NOT NULL,
  `org_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_patient` tinyint(1) DEFAULT '0',
  `patient_external_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision_date` datetime DEFAULT NULL,
  `room_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `smoking_status_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smoking_status_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_beneficiary_identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suffix` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `waiting_list` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phase`
--

DROP TABLE IF EXISTS `phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phase` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` int unsigned NOT NULL DEFAULT '0',
  `phase_id` int unsigned NOT NULL DEFAULT '0',
  `type` int unsigned NOT NULL DEFAULT '0',
  `playlist_id` varchar(128) NOT NULL DEFAULT '',
  `next_phase_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(256) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phase_id` (`collection_id`,`phase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommendation`
--

DROP TABLE IF EXISTS `recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendation` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `type` varchar(36) NOT NULL DEFAULT '',
  `sub_type` varchar(36) NOT NULL DEFAULT '',
  `playlist_id` varchar(36) NOT NULL DEFAULT '',
  `is_user_generated` int NOT NULL DEFAULT '0',
  `algo` int NOT NULL DEFAULT '0',
  `is_failed` int NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_recommendation_user` (`user_id`,`is_user_generated`,`algo`,`type`,`sub_type`,`is_failed`,`date_created` DESC),
  KEY `user_id_date` (`user_id`,`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommendation_track`
--

DROP TABLE IF EXISTS `recommendation_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendation_track` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `recommendation_id` varchar(36) NOT NULL,
  `user_track_id` int NOT NULL DEFAULT '0',
  `track_id` varchar(36) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `score` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_recommendation_track` (`recommendation_id`,`track_id`),
  KEY `recommendation_id_date` (`recommendation_id`,`date_created`),
  KEY `recommendation_track_recommendation_id_index` (`recommendation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spotify_track`
--

DROP TABLE IF EXISTS `spotify_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spotify_track` (
  `track_id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `artistName` varchar(128) NOT NULL DEFAULT '',
  `release_date` date DEFAULT '1900-01-01',
  `spotifyUrl` varchar(512) NOT NULL DEFAULT '',
  `albumImageUrl` varchar(512) NOT NULL DEFAULT '',
  `status` int NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spotify_track_generes`
--

DROP TABLE IF EXISTS `spotify_track_generes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spotify_track_generes` (
  `track_id` varchar(36) NOT NULL,
  `genre` varchar(128) NOT NULL DEFAULT '',
  UNIQUE KEY `track_id_genre` (`track_id`,`genre`),
  KEY `track_id` (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spotify_track_genres`
--

DROP TABLE IF EXISTS `spotify_track_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spotify_track_genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `track_id` varchar(36) NOT NULL,
  `genre` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `track_id_genre` (`track_id`,`genre`),
  KEY `track_id` (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spotify_user`
--

DROP TABLE IF EXISTS `spotify_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spotify_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `access_token` varchar(512) NOT NULL DEFAULT '',
  `refresh_token` varchar(512) NOT NULL DEFAULT '',
  `device_id` varchar(128) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `account_id` varchar(36) NOT NULL DEFAULT '',
  `track_id` varchar(36) NOT NULL DEFAULT '',
  `date_started` datetime NOT NULL,
  `date_ended` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `track_id_date_started` (`track_id`,`user_id`,`account_id`,`date_started`),
  KEY `date_started` (`date_started`),
  KEY `date_started_ended` (`date_started`,`date_ended`),
  KEY `idx_user_id` (`user_id`),
  KEY `track_track_id_date_started_index` (`track_id`,`date_started`),
  KEY `track_user_id_date_created_index` (`user_id`,`date_created`),
  KEY `user_id_date_started` (`user_id`,`date_started`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `track_attribute`
--

DROP TABLE IF EXISTS `track_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track_attribute` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `track_id` varchar(36) NOT NULL DEFAULT '',
  `attribute_type` varchar(36) NOT NULL DEFAULT '',
  `value` varchar(256) NOT NULL DEFAULT '',
  `quantifier` double NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `track_attribute_type_id` (`track_id`,`attribute_type`),
  KEY `idx_track_attribute_filter` (`attribute_type`,`value`,`track_id`),
  KEY `track_attribute_attribute_type_value_index` (`attribute_type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `account_id` varchar(36) NOT NULL DEFAULT '',
  `photo_url` varchar(256) NOT NULL DEFAULT '',
  `display_name` varchar(256) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `token` varchar(256) DEFAULT '',
  `allow_notifications` int NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `profile_type` int NOT NULL DEFAULT '0',
  `collection_id` int NOT NULL DEFAULT '4',
  `status` int NOT NULL DEFAULT '1',
  `manager_emails` varchar(256) DEFAULT '',
  `to_display_name` varchar(256) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_user_id` (`account_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_attributes`
--

DROP TABLE IF EXISTS `user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `account_id` varchar(36) NOT NULL DEFAULT '',
  `gender` int NOT NULL DEFAULT '0',
  `prefer_lang` varchar(16) NOT NULL DEFAULT '',
  `day_of_birth` date NOT NULL,
  `height_metric` int DEFAULT '0',
  `weight_metric` int DEFAULT '0',
  `is_metric` int DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_user_id` (`account_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `manager_id` varchar(36) NOT NULL DEFAULT '',
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `display_name` varchar(128) DEFAULT '',
  `role` int DEFAULT '0',
  `code` varchar(256) NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT '1',
  `collection_id` int NOT NULL DEFAULT '0',
  `garmin_realtime` int DEFAULT '0',
  `send_realtime_to_server` int DEFAULT '0',
  `is_centralized` int DEFAULT '0',
  `is_playback_enabled` int NOT NULL DEFAULT '0',
  `lang` varchar(32) DEFAULT '',
  `genre` varchar(256) DEFAULT '',
  `release_decade` varchar(256) DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `pcc_patient_id` int DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `researcher_id_user_id_code` (`manager_id`,`user_id`,`code`),
  UNIQUE KEY `user_group_user_id_uindex` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_kv`
--

DROP TABLE IF EXISTS `user_kv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_kv` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `account_id` varchar(36) NOT NULL DEFAULT '',
  `k_attr` varchar(36) NOT NULL DEFAULT '',
  `v_attr` varchar(36) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_user_id_k_attr` (`account_id`,`user_id`,`k_attr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_phase`
--

DROP TABLE IF EXISTS `user_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_phase` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `collection_id` int unsigned NOT NULL DEFAULT '0',
  `phase_id` int unsigned NOT NULL DEFAULT '0',
  `playlist_id` varchar(128) NOT NULL DEFAULT '',
  `status` int unsigned NOT NULL DEFAULT '0',
  `position` int unsigned NOT NULL DEFAULT '0',
  `total` int NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_phase_collection_id_user_id_index` (`collection_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_prediction_accuracy`
--

DROP TABLE IF EXISTS `user_prediction_accuracy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_prediction_accuracy` (
  `index` bigint DEFAULT NULL,
  `user_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `accuracy_type` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `accuracy_value` double DEFAULT NULL,
  KEY `ix_user_prediction_accuracy_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_rmssd_threshold`
--

DROP TABLE IF EXISTS `user_rmssd_threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_rmssd_threshold` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `value` int NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_value` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_sequence`
--

DROP TABLE IF EXISTS `user_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_sequence` (
  `user_id` text,
  `track_id` text,
  `user_track_id` bigint DEFAULT NULL,
  `sequence_id` text,
  `is_recommendation` double DEFAULT NULL,
  `num_songs_seq` bigint DEFAULT NULL,
  `num_songs_rec` bigint DEFAULT NULL,
  `start_stress_seq` double DEFAULT NULL,
  `end_stress_seq` double DEFAULT NULL,
  `start_hr_seq` double DEFAULT NULL,
  `end_hr_seq` double DEFAULT NULL,
  `start_date_seq` datetime DEFAULT NULL,
  `end_date_seq` datetime DEFAULT NULL,
  `started_hour` datetime DEFAULT NULL,
  `stress_diff_seq` double DEFAULT NULL,
  `end_calmness_seq` double DEFAULT NULL,
  `start_calmness_seq` double DEFAULT NULL,
  `calmness_diff_seq` double DEFAULT NULL,
  `stress_diff_seq_pct` double DEFAULT NULL,
  `calmness_diff_seq_pct` double DEFAULT NULL,
  `hr_diff_seq` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_sequence_v2`
--

DROP TABLE IF EXISTS `user_sequence_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_sequence_v2` (
  `user_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `track_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `user_track_id` bigint DEFAULT NULL,
  `sequence_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `is_recommendation` double DEFAULT NULL,
  `num_songs_seq` bigint DEFAULT NULL,
  `num_songs_rec` bigint DEFAULT NULL,
  `start_stress_seq` double DEFAULT NULL,
  `end_stress_seq` double DEFAULT NULL,
  `start_hr_seq` double DEFAULT NULL,
  `end_hr_seq` double DEFAULT NULL,
  `start_date_seq` datetime DEFAULT NULL,
  `end_date_seq` datetime DEFAULT NULL,
  `stress_diff_seq` double DEFAULT NULL,
  `end_calmness_seq` double DEFAULT NULL,
  `start_calmness_seq` double DEFAULT NULL,
  `calmness_diff_seq` double DEFAULT NULL,
  `stress_diff_seq_pct` double DEFAULT NULL,
  `calmness_diff_seq_pct` double DEFAULT NULL,
  `hr_diff_seq` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_stress_threshold`
--

DROP TABLE IF EXISTS `user_stress_threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_stress_threshold` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `value` int NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_tag`
--

DROP TABLE IF EXISTS `user_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tag` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL DEFAULT '',
  `object_id` varchar(36) NOT NULL,
  `tag` varchar(36) NOT NULL DEFAULT '',
  `type` int NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_tag_type` (`user_id`,`object_id`,`tag`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_track_processed`
--

DROP TABLE IF EXISTS `user_track_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_track_processed` (
  `index` datetime DEFAULT NULL,
  `user_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `track_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `user_track_id` bigint DEFAULT NULL,
  `date_started` datetime DEFAULT NULL,
  `date_ended` datetime DEFAULT NULL,
  `delta_stress` double DEFAULT NULL,
  `stress_previous` double DEFAULT NULL,
  `stress_next` double DEFAULT NULL,
  `delta_hr` double DEFAULT NULL,
  `hr_previous` double DEFAULT NULL,
  `hr_next` double DEFAULT NULL,
  `hr_trend` double DEFAULT NULL,
  KEY `ix_user_track_processed_index` (`index`),
  KEY `user_id` (`user_id`(36))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_track_processed_biostrap`
--

DROP TABLE IF EXISTS `user_track_processed_biostrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_track_processed_biostrap` (
  `index` bigint DEFAULT NULL,
  `user_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `track_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `user_track_id` bigint DEFAULT NULL,
  `date_started` datetime DEFAULT NULL,
  `date_ended` datetime DEFAULT NULL,
  `delta_stress` double DEFAULT NULL,
  `stress_previous` double DEFAULT NULL,
  `stress_next` double DEFAULT NULL,
  `delta_hr` double DEFAULT NULL,
  `hr_previous` double DEFAULT NULL,
  `hr_next` double DEFAULT NULL,
  `hr_trend` double DEFAULT NULL,
  KEY `ix_user_track_processed_biostrap_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_track_target_predictions`
--

DROP TABLE IF EXISTS `user_track_target_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_track_target_predictions` (
  `index` bigint DEFAULT NULL,
  `user_id` varchar(36) NOT NULL,
  `track_id` varchar(36) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `calmness` double DEFAULT NULL,
  `user_track_id` bigint DEFAULT NULL,
  `did_listen` double DEFAULT NULL,
  `did_listen_rec` double DEFAULT NULL,
  KEY `ix_user_track_target_predictions_temp_index` (`index`),
  KEY `user_track_target_predictions_track_id_index` (`track_id`),
  KEY `user_track_target_predictions_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_track_target_predictions_biostrap`
--

DROP TABLE IF EXISTS `user_track_target_predictions_biostrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_track_target_predictions_biostrap` (
  `index` bigint DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `track_id` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `calmness` double DEFAULT NULL,
  `user_track_id` bigint DEFAULT NULL,
  `did_listen` double DEFAULT NULL,
  `did_listen_rec` double DEFAULT NULL,
  KEY `ix_user_track_target_predictions_biostrap_index` (`index`),
  KEY `user_track_target_predictions_track_id_index` (`track_id`),
  KEY `user_track_target_predictions_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_track_target_predictions_temp`
--

DROP TABLE IF EXISTS `user_track_target_predictions_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_track_target_predictions_temp` (
  `index` bigint DEFAULT NULL,
  `user_id` varchar(36) NOT NULL,
  `track_id` varchar(36) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `calmness` double DEFAULT NULL,
  `user_track_id` bigint DEFAULT NULL,
  `did_listen` double DEFAULT NULL,
  `did_listen_rec` double DEFAULT NULL,
  KEY `ix_user_track_target_predictions_temp_index` (`index`),
  KEY `user_track_target_predictions_track_id_index` (`track_id`),
  KEY `user_track_target_predictions_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_track_target_predictions_v2`
--

DROP TABLE IF EXISTS `user_track_target_predictions_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_track_target_predictions_v2` (
  `index` bigint DEFAULT NULL,
  `user_id` varchar(36) NOT NULL,
  `track_id` varchar(36) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `calmness` double DEFAULT NULL,
  `user_track_id` bigint DEFAULT NULL,
  `did_listen` double DEFAULT NULL,
  `did_listen_rec` double DEFAULT NULL,
  KEY `ix_user_track_target_predictions_v2_index` (`index`),
  KEY `user_track_target_predictions_track_id_index` (`track_id`),
  KEY `user_track_target_predictions_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-22 15:45:18
