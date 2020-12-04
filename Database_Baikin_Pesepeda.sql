CREATE DATABASE IF NOT EXISTS `baikin_pesepeda`;

USE `baikin_pesepeda` ;

CREATE TABLE IF NOT EXISTS `User` (
  `idUser` INT NOT NULL,
  `Username` VARCHAR(20) NULL,
  `password` VARCHAR(20) NULL,
  PRIMARY KEY (`idUser`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Admin` (
  `idAdmin` INT NOT NULL,
  `Username` VARCHAR(20) NULL,
  `Password` VARCHAR(20) NULL,
  PRIMARY KEY (`idAdmin`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Officer` (
  `idOfficer` INT NOT NULL,
  `Username` VARCHAR(20) NULL,
  `Password` VARCHAR(20) NULL,
  PRIMARY KEY (`idOfficer`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Post` (
  `id_post` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `content` VARCHAR(45) NULL,
  `date_post` DATETIME NULL,
  `Author` INT NULL,
  PRIMARY KEY (`id_post`),
  INDEX `PU_idx` (`Author` ASC),
  CONSTRAINT `PU`
    FOREIGN KEY (`Author`)
    REFERENCES `User` (`idUser`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `comment` (
  `id_comment` INT NOT NULL,
  `comment` VARCHAR(100) NOT NULL,
  `id_post` INT NULL,
  PRIMARY KEY (`id_comment`),
  INDEX `fk_comment_idx` (`id_post` ASC),
  CONSTRAINT `fk_comment`
    FOREIGN KEY (`id_post`)
    REFERENCES `Post` (`id_post`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
