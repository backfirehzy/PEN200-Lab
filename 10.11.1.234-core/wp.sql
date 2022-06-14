-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: wp
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://10.11.1.234','yes'),(2,'blogname','Business Statistics','yes'),(3,'blogdescription','New Server for Thinc&#039;s Business Statistics','yes'),(4,'users_can_register','0','yes'),(5,'admin_email','core@thinc.local','yes'),(6,'start_of_week','1','yes'),(7,'use_balanceTags','0','yes'),(8,'use_smilies','1','yes'),(9,'require_name_email','','yes'),(10,'comments_notify','','yes'),(11,'posts_per_rss','10','yes'),(12,'rss_use_excerpt','0','yes'),(13,'mailserver_url','mail.example.com','yes'),(14,'mailserver_login','login@example.com','yes'),(15,'mailserver_pass','password','yes'),(16,'mailserver_port','110','yes'),(17,'default_category','1','yes'),(18,'default_comment_status','closed','yes'),(19,'default_ping_status','closed','yes'),(20,'default_pingback_flag','','yes'),(21,'posts_per_page','10','yes'),(22,'date_format','F j, Y','yes'),(23,'time_format','g:i a','yes'),(24,'links_updated_date_format','F j, Y g:i a','yes'),(25,'links_recently_updated_prepend','<em>','yes'),(26,'links_recently_updated_append','</em>','yes'),(27,'links_recently_updated_time','120','yes'),(28,'comment_moderation','','yes'),(29,'moderation_notify','','yes'),(30,'permalink_structure','','yes'),(31,'gzipcompression','0','yes'),(32,'hack_file','0','yes'),(33,'blog_charset','UTF-8','yes'),(34,'moderation_keys','','no'),(35,'active_plugins','a:0:{}','yes'),(36,'home','http://10.11.1.234','yes'),(37,'category_base','','yes'),(38,'ping_sites','http://rpc.pingomatic.com/','yes'),(39,'advanced_edit','0','yes'),(40,'comment_max_links','2','yes'),(41,'gmt_offset','0','yes'),(42,'default_email_category','1','yes'),(43,'recently_edited','','no'),(44,'template','twentytwelve','yes'),(45,'stylesheet','twentytwelve','yes'),(46,'comment_whitelist','','yes'),(47,'blacklist_keys','','no'),(48,'comment_registration','','yes'),(49,'html_type','text/html','yes'),(50,'use_trackback','0','yes'),(51,'default_role','subscriber','yes'),(52,'db_version','22441','yes'),(53,'uploads_use_yearmonth_folders','1','yes'),(54,'upload_path','','yes'),(55,'blog_public','0','yes'),(56,'default_link_category','2','yes'),(57,'show_on_front','posts','yes'),(58,'tag_base','','yes'),(59,'show_avatars','','yes'),(60,'avatar_rating','G','yes'),(61,'upload_url_path','','yes'),(62,'thumbnail_size_w','150','yes'),(63,'thumbnail_size_h','150','yes'),(64,'thumbnail_crop','1','yes'),(65,'medium_size_w','300','yes'),(66,'medium_size_h','300','yes'),(67,'avatar_default','mystery','yes'),(68,'large_size_w','1024','yes'),(69,'large_size_h','1024','yes'),(70,'image_default_link_type','file','yes'),(71,'image_default_size','','yes'),(72,'image_default_align','','yes'),(73,'close_comments_for_old_posts','','yes'),(74,'close_comments_days_old','14','yes'),(75,'thread_comments','','yes'),(76,'thread_comments_depth','5','yes'),(77,'page_comments','','yes'),(78,'comments_per_page','50','yes'),(79,'default_comments_page','newest','yes'),(80,'comment_order','asc','yes'),(81,'sticky_posts','a:0:{}','yes'),(82,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(83,'widget_text','a:0:{}','yes'),(84,'widget_rss','a:0:{}','yes'),(85,'uninstall_plugins','a:0:{}','no'),(86,'timezone_string','','yes'),(87,'page_for_posts','0','yes'),(88,'page_on_front','0','yes'),(89,'default_post_format','0','yes'),(90,'link_manager_enabled','0','yes'),(91,'initial_db_version','22441','yes'),(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(98,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(99,'cron','a:4:{i:1452073082;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1452073096;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1452134724;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(101,'_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"3.5.1\";s:12:\"last_checked\";i:1452048202;}','yes'),(102,'_site_transient_update_plugins','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1452048282;}','yes'),(162,'_site_transient_timeout_theme_roots','1452050162','yes'),(163,'_site_transient_theme_roots','a:2:{s:12:\"twentyeleven\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}','yes'),(105,'_site_transient_update_themes','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1452048463;}','yes'),(106,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:18:\"http://10.11.1.234\";s:4:\"link\";s:94:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://10.11.1.234/\";s:3:\"url\";s:127:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://10.11.1.234/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:26:\"http://wordpress.org/news/\";s:3:\"url\";s:31:\"http://wordpress.org/news/feed/\";s:5:\"title\";s:14:\"WordPress Blog\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:20:\"Other WordPress News\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes'),(110,'can_compress_scripts','0','yes'),(166,'_site_transient_timeout_wporg_theme_feature_list','1452059343','yes'),(167,'_site_transient_wporg_theme_feature_list','a:0:{}','yes'),(150,'_transient_timeout_plugin_slugs','1388393402','no'),(151,'_transient_plugin_slugs','a:0:{}','no'),(138,'recently_activated','a:0:{}','yes'),(139,'_transient_plugins_delete_result_1','1','yes'),(164,'_transient_random_seed','3302986cf561ed6d2d029908ada0fd66','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (4,1,'_edit_lock','1452048532:1'),(5,1,'_edit_last','1'),(10,11,'_edit_last','1'),(11,11,'_edit_lock','1452048338:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2015-12-23 09:37:58','2015-12-23 09:37:58','We are currently working on developing this server to serve as our statistics server. Test it out and let me know if you find anything missing or wrong.\r\n\r\n<!--more-->\r\n\r\nNOTE: The website is still under development [=. <strong>Statistics are nearly ready</strong>! In the mean time Nina, you will need to use the old server still....\r\n\r\nP.S.: Robert will keep checking back here to check on the progress.','Statistics Test','','publish','closed','closed','','hello-world','','','2016-01-06 02:50:38','2016-01-06 02:50:38','',0,'http://10.11.1.234/?p=1',0,'post','',0),(9,1,'2015-12-28 01:49:54','2015-12-28 01:49:54','We are currently working on developing this server to serve as our statistics server. Test it out and let me know if you find anything missing or wrong.\r\n\r\n&nbsp;\r\n\r\nNOTE: The website is still under development :) statistics are not yet here, use the old one for that.','Statistics Test','','inherit','closed','closed','','1-revision-4','','','2015-12-28 01:49:54','2015-12-28 01:49:54','',1,'http://10.11.1.234/?p=9',0,'revision','',0),(11,1,'2099-01-06 02:46:13','1970-01-01 00:00:00','We are behind moving servers. Sorry folks.\r\n\r\nOur star, David, it working very hard to fix the problems','Problem','','private','closed','closed','','problem','','','2016-01-06 02:47:29','2016-01-06 02:47:29','',0,'http://10.11.1.234/?p=11',0,'post','',0),(5,1,'2015-12-23 09:37:58','2015-12-23 09:37:58','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','inherit','closed','closed','','1-revision','','','2015-12-23 09:37:58','2015-12-23 09:37:58','',1,'http://10.11.1.234/?p=5',0,'revision','',0),(6,1,'2016-01-06 02:50:21','2016-01-06 02:50:21','We are currently working on developing this server to serve as our statistics server. Test it out and let me know if you find anything missing or wrong.\n\n<!--more-->\n\nNOTE: The website is still under development [=. Statistics are nearly ready! In the mean time Nina, you will need to use the old server still....\n\nP.S.: Robert will keep checking back here to check on the progress.','Statistics Test','','inherit','closed','closed','','1-autosave','','','2016-01-06 02:50:21','2016-01-06 02:50:21','',1,'http://10.11.1.234/?p=6',0,'revision','',0),(7,1,'2015-12-28 00:49:27','2015-12-28 00:49:27','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','inherit','closed','closed','','1-revision-2','','','2015-12-28 00:49:27','2015-12-28 00:49:27','',1,'http://10.11.1.234/?p=7',0,'revision','',0),(8,1,'2015-12-28 00:50:41','2015-12-28 00:50:41','We are currently working on developing this server to serve as our statistics server. Test it out and let me know if you find anything missing or wrong.','Statistics Test','','inherit','closed','closed','','1-revision-3','','','2015-12-28 00:50:41','2015-12-28 00:50:41','',1,'http://10.11.1.234/?p=8',0,'revision','',0),(10,1,'2016-01-06 02:45:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-01-06 02:45:24','0000-00-00 00:00:00','',0,'http://10.11.1.234/?p=10',0,'post','',0),(12,1,'2016-01-06 02:47:14','2016-01-06 02:47:14','We are behind moving servers. Sorry folks.\n\nOur star, David, it working very hard to fix the problems','Problem','','inherit','closed','closed','','11-revision','','','2016-01-06 02:47:14','2016-01-06 02:47:14','',11,'http://10.11.1.234/?p=12',0,'revision','',0),(13,1,'2016-01-06 02:47:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-01-06 02:47:33','0000-00-00 00:00:00','',0,'http://10.11.1.234/?p=13',0,'post','',0),(14,1,'2016-01-06 02:47:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-01-06 02:47:34','0000-00-00 00:00:00','',0,'http://10.11.1.234/?p=14',0,'post','',0),(15,1,'2015-12-29 08:51:52','2015-12-29 08:51:52','We are currently working on developing this server to serve as our statistics server. Test it out and let me know if you find anything missing or wrong.\r\n\r\n&nbsp;\r\n\r\nNOTE: The website is still under development :) statistics are not yet here, so nina you will need to use the old one still.\r\n\r\nP.S.: Robert will look at this new web server very often to check on the progress.','Statistics Test','','inherit','closed','closed','','1-revision-5','','','2015-12-29 08:51:52','2015-12-29 08:51:52','',1,'http://10.11.1.234/?p=15',0,'revision','',0),(16,1,'2016-01-06 02:48:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-01-06 02:48:42','0000-00-00 00:00:00','',0,'http://10.11.1.234/?p=16',0,'post','',0),(17,1,'2016-01-06 02:48:19','2016-01-06 02:48:19','We are currently working on developing this server to serve as our statistics server. Test it out and let me know if you find anything missing or wrong.\r\n\r\n<!--more-->\r\n\r\nNOTE: The website is still under development :) statistics are not yet here, so nina you will need to use the old one still.\r\n\r\nP.S.: Robert will look at this new web server very often to check on the progress.','Statistics Test','','inherit','closed','closed','','1-revision-6','','','2016-01-06 02:48:19','2016-01-06 02:48:19','',1,'http://10.11.1.234/?p=17',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(11,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name',''),(2,1,'last_name',''),(3,1,'nickname','Core'),(4,1,'description','I run this place because I\'m the perfect princess!'),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),(13,1,'show_welcome_panel','1'),(14,1,'wp_dashboard_quick_press_last_post_id','16'),(15,1,'aim',''),(16,1,'yim',''),(17,1,'jabber',''),(18,1,'wp_user-settings','editor=tinymce'),(19,1,'wp_user-settings-time','1452048494'),(20,2,'first_name',''),(21,2,'last_name',''),(22,2,'nickname','backup'),(23,2,'description',''),(24,2,'rich_editing','true'),(25,2,'comment_shortcuts','false'),(26,2,'admin_color','fresh'),(27,2,'use_ssl','0'),(28,2,'show_admin_bar_front','true'),(29,2,'wp_capabilities','a:1:{s:6:\"editor\";b:1;}'),(30,2,'wp_user_level','7'),(31,2,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BFtLvmyncK9gciO7uC9.OnnjCoA.M8/','admin','core@thinc.local','','2015-12-23 09:37:58','',0,'Core'),(2,'backup','$P$BhpDbXROGLJpRJtep6Lky4UuCsvp0K0','backup','core+1@thinc.local','','2016-01-06 02:52:44','',0,'backup');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-06  1:47:48
