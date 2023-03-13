-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema gardendb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `gardendb` ;

-- -----------------------------------------------------
-- Schema gardendb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gardendb` DEFAULT CHARACTER SET utf8 ;
USE `gardendb` ;

-- -----------------------------------------------------
-- Table `plant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `plant` ;

CREATE TABLE IF NOT EXISTS `plant` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `scientific_name` VARCHAR(45) NULL,
  `type` ENUM('Fruit', 'Vegitable', 'Herb/Spice', 'Floral') NULL,
  `known_pests` VARCHAR(200) NULL,
  `planted_from_seed` TINYINT NULL,
  `germination_period_days` INT NULL,
  `date_planted` DATETIME(6) NULL,
  `date_harvested` DATETIME(6) NULL,
  `lbs_yield` DOUBLE NULL,
  `notes` TEXT(2000) NULL,
  `plant_image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS user@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'user'@'localhost';
SET SQL_MODE = '';
DROP USER IF EXISTS admin;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'admin' IDENTIFIED BY 'admin';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'admin';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `plant`
-- -----------------------------------------------------
START TRANSACTION;
USE `gardendb`;
INSERT INTO `plant` (`id`, `name`, `scientific_name`, `type`, `known_pests`, `planted_from_seed`, `germination_period_days`, `date_planted`, `date_harvested`, `lbs_yield`, `notes`, `plant_image_url`) VALUES (1, 'Cucumber', 'Cucumis sativus', 'Fruit', 'Caterpiller', 1, 10, '2023-03-02', NULL, NULL, NULL, 'https://ipm.missouri.edu/meg/2014/3/Cucumber-A-Brief-History/Cucumber_SupremoHybrid1-Burpee.jpg');
INSERT INTO `plant` (`id`, `name`, `scientific_name`, `type`, `known_pests`, `planted_from_seed`, `germination_period_days`, `date_planted`, `date_harvested`, `lbs_yield`, `notes`, `plant_image_url`) VALUES (2, 'Roma Tomato', 'Solanum lycopersicum ', 'Fruit', 'Aphids', 1, 8, '2023-03-02', NULL, NULL, NULL, NULL);
INSERT INTO `plant` (`id`, `name`, `scientific_name`, `type`, `known_pests`, `planted_from_seed`, `germination_period_days`, `date_planted`, `date_harvested`, `lbs_yield`, `notes`, `plant_image_url`) VALUES (3, 'Carrots', 'Daucus carota', 'Vegitable', 'Aphids, Spider Mite', 1, 21, '2023-02-28', NULL, NULL, NULL, NULL);
INSERT INTO `plant` (`id`, `name`, `scientific_name`, `type`, `known_pests`, `planted_from_seed`, `germination_period_days`, `date_planted`, `date_harvested`, `lbs_yield`, `notes`, `plant_image_url`) VALUES (4, 'Green Beans', 'Phaseolus vulgaris', 'Vegitable', 'Caterpillar', 1, 10, '2023-03-02', NULL, NULL, NULL, NULL);

COMMIT;

