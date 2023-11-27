CREATE TABLE `swiggy`.`user` (
  `iduser` INT NULL,
  `user_address` VARCHAR(45) NULL,
  UNIQUE INDEX `iduser_UNIQUE` (`iduser` ASC));


CREATE TABLE `swiggy`.`userl` (
  `username` VARCHAR(40) NOT NULL,
  `pincode` INT NULL,
  PRIMARY KEY (`username`));


CREATE TABLE `swiggy`.`user2` (
  `iduser2` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  UNIQUE INDEX `iduser2_UNIQUE` (`iduser2` ASC) VISIBLE,
  PRIMARY KEY (`iduser2`));


