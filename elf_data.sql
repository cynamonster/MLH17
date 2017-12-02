-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dt13f
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dt13f
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dt13f` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `dt13f` ;

-- -----------------------------------------------------
-- Table `dt13f`.`elf`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dt13f`.`elf` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `dt13f`.`elf` (
  `elf_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `elf_phone` BIGINT UNSIGNED NOT NULL,
  `elf_fname` VARCHAR(20) NOT NULL,
  `elf_lname` VARCHAR(30) NOT NULL,
  `elf_list` VARCHAR(255) NOT NULL,
  `elf_child` ENUM('y', 'n') NOT NULL,
  `elf_coal` BIGINT NULL,
  PRIMARY KEY (`elf_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `dt13f`.`elf_match`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dt13f`.`elf_match` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `dt13f`.`elf_match` (
  `elf_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mth_phone` BIGINT UNSIGNED NULL,
  `mth_fname` VARCHAR(20) NULL,
  `mth_lname` VARCHAR(30) NULL,
  `mth_list` VARCHAR(45) NULL,
  `mth_child` ENUM('y', 'n') NULL,
  CONSTRAINT `fk_elf_match_elf`
    FOREIGN KEY (`elf_id`)
    REFERENCES `dt13f`.`elf` (`elf_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dt13f`.`elf`
-- -----------------------------------------------------
START TRANSACTION;
USE `dt13f`;
INSERT INTO `dt13f`.`elf` (`elf_id`, `elf_phone`, `elf_fname`, `elf_lname`, `elf_list`, `elf_child`, `elf_coal`) VALUES (DEFAULT, 8505551234, 'John', 'Doe', 'Bike, Coffee Pot, Fire truck', 'n', NULL);
INSERT INTO `dt13f`.`elf` (`elf_id`, `elf_phone`, `elf_fname`, `elf_lname`, `elf_list`, `elf_child`, `elf_coal`) VALUES (DEFAULT, 8135554321, 'Jane', 'Smith', 'Blender, Headphones', 'y', NULL);
INSERT INTO `dt13f`.`elf` (`elf_id`, `elf_phone`, `elf_fname`, `elf_lname`, `elf_list`, `elf_child`, `elf_coal`) VALUES (DEFAULT, 7275554896, 'Thomas', 'Brumley', 'Nintendo Switch', 'n', NULL);
INSERT INTO `dt13f`.`elf` (`elf_id`, `elf_phone`, `elf_fname`, `elf_lname`, `elf_list`, `elf_child`, `elf_coal`) VALUES (DEFAULT, 3215557979, 'Christian', 'Summersill', 'Car', 'n', 3215556636);
INSERT INTO `dt13f`.`elf` (`elf_id`, `elf_phone`, `elf_fname`, `elf_lname`, `elf_list`, `elf_child`, `elf_coal`) VALUES (DEFAULT, 3215556636, 'Esther', 'Summersill', 'Coffee Mug, Dog', 'n', 3215557979);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dt13f`.`elf_match`
-- -----------------------------------------------------
START TRANSACTION;
USE `dt13f`;
INSERT INTO `dt13f`.`elf_match` (`elf_id`, `mth_phone`, `mth_fname`, `mth_lname`, `mth_list`, `mth_child`) VALUES (DEFAULT, NULL, NULL, NULL, NULL, NULL);

COMMIT;

