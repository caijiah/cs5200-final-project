CREATE TABLE `funrz2y57jktomq4`.`animals` (
  `animal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`animal`));
  
INSERT INTO `funrz2y57jktomq4`.`animals` (`animal`) VALUES ('CAT');
INSERT INTO `funrz2y57jktomq4`.`animals` (`animal`) VALUES ('DOG');
INSERT INTO `funrz2y57jktomq4`.`animals` (`animal`) VALUES ('FISH');
INSERT INTO `funrz2y57jktomq4`.`animals` (`animal`) VALUES ('BIRD');

CREATE TABLE `funrz2y57jktomq4`.`product_categories` (
  `category` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`category`));

INSERT INTO `funrz2y57jktomq4`.`product_categories` (`category`) VALUES ('FOOD');
INSERT INTO `funrz2y57jktomq4`.`product_categories` (`category`) VALUES ('TOY');
INSERT INTO `funrz2y57jktomq4`.`product_categories` (`category`) VALUES ('TREAT');
INSERT INTO `funrz2y57jktomq4`.`product_categories` (`category`) VALUES ('MEDICINE');
