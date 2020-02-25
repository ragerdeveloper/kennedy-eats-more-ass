-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for essentialmode
CREATE DATABASE IF NOT EXISTS `essentialmode` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `essentialmode`;

-- Dumping structure for table essentialmode.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.addon_account: ~1 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('property_black_money', 'Money Sale Property', 0);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table essentialmode.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.addon_account_data: ~1 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1, 'property_black_money', 0, '164fca2f6f88c4d9d802f211491b91d4b3916c54');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table essentialmode.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.addon_inventory: ~1 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Property', 0);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table essentialmode.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.addon_inventory_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table essentialmode.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.datastore: ~1 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Property', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table essentialmode.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.datastore_data: ~1 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1, 'property', '164fca2f6f88c4d9d802f211491b91d4b3916c54', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table essentialmode.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.items: ~141 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `price`) VALUES
	('100gbag', 'Ziploc Bag[100g]', 20, 0, 1, 0),
	('1gbag', 'Ziploc Bag[1g]', 20, 0, 1, 0),
	('50gbag', 'Ziploc Bag[50g]', 20, 0, 1, 0),
	('5gbag', 'Ziploc Bag[5g]', 20, 0, 1, 0),
	('9mm_rounds', '9mm Rounds', 1, 0, 1, 0),
	('HeavyArmor', 'Heavy Body Armor', 1, 0, 1, 0),
	('MedArmor', 'Medium Body Armor', 1, 0, 1, 0),
	('SmallArmor', 'Light Body Armor', 1, 0, 1, 0),
	('WEAPON_ADVANCEDRIFLE', 'ADVANCEDRIFLE', 1, 1, 1, 0),
	('WEAPON_APPISTOL', 'APPISTOL', 1, 1, 1, 0),
	('WEAPON_ASSAULTMG', 'ASSAULTMG', 1, 1, 1, 0),
	('WEAPON_ASSAULTRIFLE', 'ASSAULTRIFLE', 1, 1, 1, 0),
	('WEAPON_ASSAULTRIFLE_MK2', 'ASSAULTRIFLE_MK2', 1, 1, 1, 0),
	('WEAPON_ASSAULTSHOTGUN', 'ASSAULTSHOTGUN', 1, 1, 1, 0),
	('WEAPON_BALL', 'BALL', 1, 1, 1, 0),
	('WEAPON_BAT', 'BAT', 1, 1, 1, 0),
	('WEAPON_BOTTLE', 'BOTTLE', 1, 1, 1, 0),
	('WEAPON_BULLPUPRIFLE', 'BULLPUPRIFLE', 1, 1, 1, 0),
	('WEAPON_BULLPUPSHOTGUN', 'BULLPUPSHOTGUN', 1, 1, 1, 0),
	('WEAPON_BZGAS', 'BZGAS', 1, 1, 1, 0),
	('WEAPON_CARBINERIFLE', 'CARBINERIFLE', 1, 1, 1, 0),
	('WEAPON_CARBINERIFLE_MK2', 'CARBINERIFLE_MK2', 1, 1, 1, 0),
	('WEAPON_COMBATMG', 'COMBATMG', 1, 1, 1, 0),
	('WEAPON_COMBATMG_MK2', 'COMBATMG_MK2', 1, 1, 1, 0),
	('WEAPON_COMBATPDW', 'COMBATPDW', 1, 1, 1, 0),
	('WEAPON_COMBATPISTOL', 'COMBATPISTOL', 1, 1, 1, 0),
	('WEAPON_COMPACTLAUNCHER', 'COMPACTLAUNCHER', 1, 1, 1, 0),
	('WEAPON_COMPACTRIFLE', 'COMPACTRIFLE', 1, 1, 1, 0),
	('WEAPON_CROWBAR', 'CROWBAR', 1, 1, 1, 0),
	('WEAPON_DAGGER', 'DAGGER', 1, 1, 1, 0),
	('WEAPON_DBSHOTGUN', 'DBSHOTGUN', 1, 1, 1, 0),
	('WEAPON_DIGISCANNER', 'DIGISCANNER', 1, 1, 1, 0),
	('WEAPON_DOUBLEACTION', 'DOUBLEACTION', 1, 1, 1, 0),
	('WEAPON_FIREEXTINGUISHER', 'FIREEXTINGUISHER', 1, 1, 1, 0),
	('WEAPON_FIREWORK', 'FIREWORK', 1, 1, 1, 0),
	('WEAPON_FLARE', 'FLARE', 1, 1, 1, 0),
	('WEAPON_FLAREGUN', 'FLAREGUN', 1, 1, 1, 0),
	('WEAPON_FLASHLIGHT', 'FLASHLIGHT', 1, 1, 1, 0),
	('WEAPON_GOLFCLUB', 'GOLFCLUB', 1, 1, 1, 0),
	('WEAPON_GRENADE', 'GRENADE', 1, 1, 1, 0),
	('WEAPON_GRENADELAUNCHER', 'GRENADELAUNCHER', 1, 1, 1, 0),
	('WEAPON_GRENADELAUNCHER_SMOKE', 'GRENADELAUNCHER_SMOKE', 1, 1, 1, 0),
	('WEAPON_GUSENBERG', 'GUSENBERG', 1, 1, 1, 0),
	('WEAPON_HAMMER', 'HAMMER', 1, 1, 1, 0),
	('WEAPON_HATCHET', 'HATCHET', 1, 1, 1, 0),
	('WEAPON_HEAVYPISTOL', 'HEAVYPISTOL', 1, 1, 1, 0),
	('WEAPON_HEAVYSHOTGUN', 'HEAVYSHOTGUN', 1, 1, 1, 0),
	('WEAPON_HEAVYSNIPER', 'HEAVYSNIPER', 1, 1, 1, 0),
	('WEAPON_HEAVYSNIPER_MK2', 'HEAVYSNIPER_MK2', 1, 1, 1, 0),
	('WEAPON_HOMINGLAUNCHER', 'HOMINGLAUNCHER', 1, 1, 1, 0),
	('WEAPON_KNIFE', 'KNIFE', 1, 1, 1, 0),
	('WEAPON_KNUCKLE', 'KNUCKLE', 1, 1, 1, 0),
	('WEAPON_MACHETE', 'MACHETE', 1, 1, 1, 0),
	('WEAPON_MACHINEPISTOL', 'MACHINEPISTOL', 1, 1, 1, 0),
	('WEAPON_MARKSMANPISTOL', 'MARKSMANPISTOL', 1, 1, 1, 0),
	('WEAPON_MARKSMANRIFLE', 'MARKSMANRIFLE', 1, 1, 1, 0),
	('WEAPON_MARKSMANRIFLE_MK2', 'MARKSMANRIFLE_MK2', 1, 1, 1, 0),
	('WEAPON_MG', 'MG', 1, 1, 1, 0),
	('WEAPON_MICROSMG', 'MICROSMG', 1, 1, 1, 0),
	('WEAPON_MINIGUN', 'MINIGUN', 1, 1, 1, 0),
	('WEAPON_MINISMG', 'MINISMG', 1, 1, 1, 0),
	('WEAPON_MOLOTOV', 'MOLOTOV', 1, 1, 1, 0),
	('WEAPON_MUSKET', 'MUSKET', 1, 1, 1, 0),
	('WEAPON_NIGHTSTICK', 'NIGHTSTICK', 1, 1, 1, 0),
	('WEAPON_PETROLCAN', 'PETROLCAN', 1, 1, 1, 0),
	('WEAPON_PIPEWRENCH', 'PIPEWRENCH', 1, 1, 1, 0),
	('WEAPON_PISTOL', 'PISTOL', 1, 1, 1, 0),
	('WEAPON_PISTOL50', 'PISTOL50', 1, 1, 1, 0),
	('WEAPON_PISTOL_MK2', 'PISTOL_MK2', 1, 1, 1, 0),
	('WEAPON_POOLCUE', 'POOLCUE', 1, 1, 1, 0),
	('WEAPON_PROXMINE', 'PROXMINE', 1, 1, 1, 0),
	('WEAPON_PUMPSHOTGUN', 'PUMPSHOTGUN', 1, 1, 1, 0),
	('WEAPON_PUMPSHOTGUN_MK2', 'PUMPSHOTGUN_MK2', 1, 1, 1, 0),
	('WEAPON_RAILGUN', 'RAILGUN', 1, 1, 1, 0),
	('WEAPON_RAYCARBINE', 'RAYCARBINE', 1, 1, 1, 0),
	('WEAPON_RAYMINIGUN', 'RAYMINIGUN', 1, 1, 1, 0),
	('WEAPON_RAYPISTOL', 'RAYPISTOL', 1, 1, 1, 0),
	('WEAPON_REVOLVER', 'REVOLVER', 1, 1, 1, 0),
	('WEAPON_REVOLVER_MK2', 'REVOLVER_MK2', 1, 1, 1, 0),
	('WEAPON_RPG', 'RPG', 1, 1, 1, 0),
	('WEAPON_SAWNOFFSHOTGUN', 'SAWNOFFSHOTGUN', 1, 1, 1, 0),
	('WEAPON_SMG', 'SMG', 1, 1, 1, 0),
	('WEAPON_SMG_MK2', 'SMG_MK2', 1, 1, 1, 0),
	('WEAPON_SMOKEGRENADE', 'SMOKEGRENADE', 1, 1, 1, 0),
	('WEAPON_SNIPERRIFLE', 'SNIPERRIFLE', 1, 1, 1, 0),
	('WEAPON_SNOWBALL', 'SNOWBALL', 1, 1, 1, 0),
	('WEAPON_SNSPISTOL', 'SNSPISTOL', 1, 1, 1, 0),
	('WEAPON_SNSPISTOL_MK2', 'SNSPISTOL_MK2', 1, 1, 1, 0),
	('WEAPON_SPECIALCARBINE', 'SPECIALCARBINE', 1, 1, 1, 0),
	('WEAPON_SPECIALCARBINE_MK2', 'SPECIALCARBINE_MK2', 1, 1, 1, 0),
	('WEAPON_STICKYBOMB', 'STICKYBOMB', 1, 1, 1, 0),
	('WEAPON_STUNGUN', 'STUNGUN', 1, 1, 1, 0),
	('WEAPON_SWEEPERSHOTGUN', 'SWEEPERSHOTGUN', 1, 1, 1, 0),
	('WEAPON_SWITCHBLADE', 'SWITCHBLADE', 1, 1, 1, 0),
	('WEAPON_VINTAGEPISTOL', 'VINTAGEPISTOL', 1, 1, 1, 0),
	('beer', 'Beer', 20, 0, 1, 0),
	('binocular', 'Binoculars', 20, 0, 1, 0),
	('blowtorch', 'Blowtorch', 20, 0, 1, 0),
	('bread', 'bread', 1, 0, 1, 0),
	('burger', 'Bacon Burgare', 1, 0, 1, 0),
	('cashew', 'Cashew', 20, 0, 1, 0),
	('cheesebows', 'OLW Ostbågar', 1, 0, 1, 0),
	('chips', 'OLW 3xLök Chips', 1, 0, 1, 0),
	('chocolate', 'Chocolate', 20, 0, 1, 0),
	('cigarett', 'Cigarett', 1, 0, 1, 0),
	('cocacola', 'Coca Cola', 1, 0, 1, 0),
	('cupcake', 'Cupcake', 20, 0, 1, 0),
	('drill', 'Drill', 20, 0, 1, 0),
	('drpepper', 'Dr Pepper', 20, 0, 1, 0),
	('drugscales', 'Scales', 20, 0, 1, 0),
	('energy', 'Energy Drink', 20, 0, 1, 0),
	('fanta', 'Fanta Exotic', 1, 0, 1, 0),
	('fixkit', 'Fix Kit', 20, 0, 1, 0),
	('gps', 'GPS', 20, 0, 1, 0),
	('grand_cru', 'Champagne', 20, 0, 1, 0),
	('hamburger', 'Hamburger', 20, 0, 1, 0),
	('highgradefert', 'Fertilizer [high]', 20, 0, 1, 0),
	('icetea', 'Ice-Tea', 20, 0, 1, 0),
	('lemonade', 'Lemonade', 20, 0, 1, 0),
	('lighter', 'Tändare', 1, 0, 1, 0),
	('lockpick', 'Lockpick', 20, 0, 1, 0),
	('loka', 'Loka Crush', 1, 0, 1, 0),
	('lotteryticket', 'Trisslott', 1, 0, 1, 0),
	('lowgradefert', 'Fertilizer [low]', 20, 0, 1, 0),
	('macka', 'Skinkmacka', 1, 0, 1, 0),
	('marabou', 'Marabou Mjölkchoklad', 1, 0, 1, 0),
	('pastacarbonara', 'Pasta Carbonara', 1, 0, 1, 0),
	('phone', 'Phone', 20, 0, 1, 0),
	('pistachio', 'Pistachio', 20, 0, 1, 0),
	('pizza', 'Kebab Pizza', 1, 0, 1, 0),
	('plantpot', 'Plant Pot', 20, 0, 1, 0),
	('repairkit', 'Repairkit', 1, 0, 1, 0),
	('rollingpaper', 'Rolling Paper', 20, 0, 1, 0),
	('sandwich', 'Sandwich', 20, 0, 1, 0),
	('scubagear', 'Scuba Gear', 20, 0, 1, 0),
	('sprite', 'Sprite', 1, 0, 1, 0),
	('tequila', 'Tequila', 20, 0, 1, 0),
	('vodka', 'Vodka', 20, 0, 1, 0),
	('water', 'water', 1, 0, 1, 0),
	('whisky', 'Whisky', 20, 0, 1, 0),
	('wine', 'Wine', 20, 0, 1, 0);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table essentialmode.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.jobs: ~1 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`) VALUES
	('unemployed', 'Unemployed');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table essentialmode.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.job_grades: ~1 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table essentialmode.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.licenses: ~1 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('weapon', 'Weapon license');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table essentialmode.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.owned_properties: ~1 rows (approximately)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1, 'LowEndApartment', 562500, 0, '164fca2f6f88c4d9d802f211491b91d4b3916c54');
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Dumping structure for table essentialmode.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.properties: ~42 rows (approximately)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907},', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000),
	(7, 'LowEndApartment', 'Basic apartment', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Modern Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000),
	(14, 'Modern2Apartment', 'Modern Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000),
	(15, 'Modern3Apartment', 'Modern Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000),
	(16, 'Mody1Apartment', 'Mody Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000),
	(17, 'Mody2Apartment', 'Mody Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000),
	(18, 'Mody3Apartment', 'Mody Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000),
	(19, 'Vibrant1Apartment', 'Vibrant Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000),
	(20, 'Vibrant2Apartment', 'Vibrant Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000),
	(21, 'Vibrant3Apartment', 'Vibrant Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000),
	(22, 'Sharp1Apartment', 'Sharp Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000),
	(23, 'Sharp2Apartment', 'Sharp Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000),
	(24, 'Sharp3Apartment', 'Sharp Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000),
	(25, 'Monochrome1Apartment', 'Monochrome Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000),
	(26, 'Monochrome2Apartment', 'Monochrome Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000),
	(27, 'Monochrome3Apartment', 'Monochrome Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000),
	(28, 'Seductive1Apartment', 'Seductive Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000),
	(29, 'Seductive2Apartment', 'Seductive Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000),
	(30, 'Seductive3Apartment', 'Seductive Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000),
	(31, 'Regal1Apartment', 'Regal Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000),
	(32, 'Regal2Apartment', 'Regal Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000),
	(33, 'Regal3Apartment', 'Regal Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000),
	(34, 'Aqua1Apartment', 'Aqua Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000),
	(35, 'Aqua2Apartment', 'Aqua Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000),
	(36, 'Aqua3Apartment', 'Aqua Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000),
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000),
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000),
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000),
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumping structure for table essentialmode.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT 'user',
  `job` varchar(20) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(53) COLLATE utf8mb4_bin DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`identifier`, `group`, `job`, `job_grade`, `inventory`, `loadout`, `position`, `status`, `skin`, `last_property`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
	('164fca2f6f88c4d9d802f211491b91d4b3916c54', 'superadmin', 'unemployed', 0, '{"water":16,"cocacola":1,"bread":14}', '[{"name":"WEAPON_PISTOL","label":"Pistol","tintIndex":0,"ammo":90,"components":["clip_default"]},{"name":"WEAPON_MICROSMG","label":"Micro SMG","tintIndex":0,"ammo":38,"components":["clip_default"]}]', '{"heading":238.3,"x":21.7,"y":-1107.1,"z":29.8}', '[{"percent":57.5575,"val":575575,"name":"hunger"},{"percent":57.26,"val":572600,"name":"thirst"}]', '{"bracelets_1":-1,"hair_color_1":0,"tshirt_1":0,"watches_2":0,"moles_2":0,"helmet_2":0,"torso_2":0,"makeup_1":0,"beard_1":0,"beard_2":0,"ears_2":0,"ears_1":-1,"pants_1":0,"chest_1":0,"blemishes_1":0,"shoes_2":0,"complexion_2":0,"blush_3":0,"mask_2":0,"bproof_2":0,"bproof_1":0,"age_2":0,"helmet_1":-1,"makeup_3":0,"bags_1":0,"lipstick_1":0,"decals_1":0,"arms_2":0,"bags_2":0,"makeup_2":0,"bodyb_1":0,"blush_2":0,"tshirt_2":0,"sun_1":0,"bracelets_2":0,"lipstick_2":0,"chest_2":0,"decals_2":0,"makeup_4":0,"blemishes_2":0,"glasses_2":0,"complexion_1":0,"hair_2":0,"eyebrows_4":0,"age_1":0,"glasses_1":0,"chain_1":0,"beard_3":0,"eyebrows_3":0,"sun_2":0,"blush_1":0,"lipstick_4":0,"watches_1":-1,"eyebrows_2":0,"face":1,"skin":4,"moles_1":0,"hair_1":1,"pants_2":0,"chest_3":0,"eyebrows_1":0,"shoes_1":0,"arms":0,"torso_1":0,"hair_color_2":0,"bodyb_2":0,"chain_2":0,"mask_1":0,"beard_4":0,"lipstick_3":0,"eye_color":0,"sex":0}', NULL, '', '', '', '', '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.user_accounts: ~3 rows (approximately)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
	(1, '164fca2f6f88c4d9d802f211491b91d4b3916c54', 'black_money', 0),
	(2, '164fca2f6f88c4d9d802f211491b91d4b3916c54', 'money', 1439719),
	(3, '164fca2f6f88c4d9d802f211491b91d4b3916c54', 'bank', 3600);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
