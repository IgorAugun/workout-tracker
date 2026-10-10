-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Upper Body','body_part'),(2,'Lower Body','body_part'),(3,'Core','body_part'),(4,'Back','body_part'),(5,'Chest','body_part'),(6,'Legs','body_part'),(7,'Arms','body_part'),(8,'Shoulders','body_part'),(9,'Glutes','body_part'),(11,'Compound','movement'),(12,'Isolation','movement'),(21,'Push','pattern'),(22,'Pull','pattern'),(23,'Squat','pattern'),(24,'Hinge','pattern'),(25,'Lunge','pattern'),(26,'Carry','pattern'),(27,'Rotation','pattern'),(31,'Bodyweight','training'),(32,'Weighted','training'),(33,'Explosive','training');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Barbell'),(2,'Dumbbell'),(3,'Machine'),(4,'Kettlebell'),(5,'Bodyweight'),(6,'Cable'),(7,'Smith Machine'),(8,'Resistance Band'),(9,'Medicine Ball'),(10,'Box');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `exercise_categories`
--

LOCK TABLES `exercise_categories` WRITE;
/*!40000 ALTER TABLE `exercise_categories` DISABLE KEYS */;
INSERT INTO `exercise_categories` VALUES (58,1),(59,1),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(61,3),(64,3),(65,3),(66,3),(7,4),(8,4),(9,4),(10,4),(11,4),(63,4),(68,4),(78,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(79,5),(29,6),(30,6),(31,6),(32,6),(33,6),(34,6),(35,6),(36,6),(37,6),(38,6),(39,6),(40,6),(41,6),(42,6),(43,6),(44,6),(47,6),(60,6),(69,6),(72,6),(73,6),(20,7),(21,7),(22,7),(23,7),(24,7),(25,7),(26,7),(27,7),(28,7),(75,7),(76,7),(77,7),(12,8),(13,8),(14,8),(15,8),(16,8),(17,8),(18,8),(19,8),(62,8),(67,8),(45,9),(46,9),(57,9),(1,11),(2,11),(3,11),(6,11),(7,11),(8,11),(9,11),(11,11),(14,11),(15,11),(19,11),(27,11),(28,11),(29,11),(30,11),(31,11),(32,11),(33,11),(34,11),(35,11),(36,11),(37,11),(38,11),(39,11),(40,11),(41,11),(42,11),(45,11),(46,11),(57,11),(58,11),(59,11),(60,11),(62,11),(63,11),(68,11),(78,11),(79,11),(4,12),(5,12),(10,12),(12,12),(13,12),(16,12),(17,12),(18,12),(20,12),(21,12),(22,12),(23,12),(24,12),(25,12),(26,12),(43,12),(44,12),(47,12),(48,12),(49,12),(50,12),(51,12),(52,12),(53,12),(54,12),(55,12),(56,12),(61,12),(64,12),(65,12),(66,12),(67,12),(69,12),(72,12),(73,12),(75,12),(76,12),(77,12),(1,21),(2,21),(3,21),(4,21),(5,21),(6,21),(14,21),(15,21),(16,21),(17,21),(24,21),(25,21),(26,21),(27,21),(28,21),(47,21),(48,21),(49,21),(50,21),(51,21),(56,21),(59,21),(61,21),(62,21),(64,21),(72,21),(73,21),(76,21),(79,21),(7,22),(8,22),(9,22),(10,22),(11,22),(12,22),(13,22),(18,22),(19,22),(20,22),(21,22),(22,22),(23,22),(52,22),(53,22),(63,22),(66,22),(67,22),(68,22),(75,22),(77,22),(78,22),(29,23),(30,23),(31,23),(32,23),(42,23),(43,23),(60,23),(69,23),(33,24),(34,24),(35,24),(36,24),(44,24),(45,24),(46,24),(57,24),(37,25),(38,25),(39,25),(40,25),(41,25),(58,26),(54,27),(55,27),(65,27),(6,31),(7,31),(8,31),(28,31),(46,31),(48,31),(49,31),(50,31),(52,31),(53,31),(54,31),(55,31),(56,31),(61,31),(64,31),(66,31),(69,31),(1,32),(2,32),(3,32),(4,32),(5,32),(9,32),(10,32),(11,32),(12,32),(13,32),(14,32),(15,32),(16,32),(17,32),(18,32),(19,32),(20,32),(21,32),(22,32),(23,32),(24,32),(25,32),(26,32),(27,32),(29,32),(30,32),(31,32),(32,32),(33,32),(34,32),(35,32),(36,32),(37,32),(38,32),(39,32),(40,32),(41,32),(42,32),(43,32),(44,32),(45,32),(47,32),(51,32),(57,32),(58,32),(62,32),(63,32),(65,32),(67,32),(68,32),(72,32),(73,32),(75,32),(76,32),(77,32),(78,32),(79,32),(59,33),(60,33);
/*!40000 ALTER TABLE `exercise_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (56,'Ab Wheel Rollout'),(61,'Abdominal Crunch'),(72,'Abductor'),(73,'Adductor'),(63,'Arms Pulldown'),(15,'Arnold Press'),(77,'Barbell Curl'),(1,'Bench Press'),(67,'Bent Over Reverse Fly'),(20,'Bicep Curl'),(75,'Biceps Pulldown'),(55,'Bicycle Crunch'),(69,'Bike'),(60,'Box Jump'),(40,'Bulgarian Split Squat'),(59,'Burpee'),(51,'Cable Crunch'),(5,'Cable Fly'),(47,'Calf Raise'),(4,'Chest Fly'),(78,'Chest Supported Row'),(8,'Chin-Up'),(27,'Close-Grip Bench Press'),(23,'Concentration Curl'),(50,'Crunch'),(64,'Dead Bug'),(33,'Deadlift'),(3,'Decline Bench Press'),(28,'Dips'),(12,'Face Pull'),(58,'Farmer\'s Walk'),(17,'Front Raise'),(30,'Front Squat'),(46,'Glute Bridge'),(32,'Goblet Squat'),(31,'Hack Squat'),(21,'Hammer Curl'),(66,'Hanging Knee Raises'),(52,'Hanging Leg Raises'),(45,'Hip Thrust'),(2,'Incline Bench Press'),(57,'Kettlebell Swing'),(9,'Lat Pulldown'),(16,'Lateral Raise'),(44,'Leg Curl'),(43,'Leg Extension'),(42,'Leg Press'),(37,'Lunge'),(53,'Lying Leg Raises'),(68,'Machine Row'),(14,'Overhead Press'),(25,'Overhead Tricep Extension'),(65,'Pallof Press'),(48,'Plank'),(22,'Preacher Curl'),(7,'Pull-Up'),(6,'Push-Up'),(18,'Rear Delt Fly'),(39,'Reverse Lunge'),(34,'Romanian Deadlift'),(11,'Row'),(54,'Russian Twist'),(62,'Shoulder Press'),(13,'Shrug'),(49,'Side Plank'),(26,'Skull Crusher'),(29,'Squat'),(41,'Step-Up'),(35,'Stiff-Leg Deadlift'),(10,'Straight Arm Pulldown'),(36,'Sumo Deadlift'),(24,'Tricep Pushdown'),(76,'Triceps Pulldown'),(19,'Upright Row'),(38,'Walking Lunge'),(79,'Wide Chest Press');
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-10 14:49:10
