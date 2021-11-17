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

CREATE TABLE `funrz2y57jktomq4`.`roles` (
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`role`));

INSERT INTO `funrz2y57jktomq4`.`roles` (`role`) VALUES ('CUSTOMER');
INSERT INTO `funrz2y57jktomq4`.`roles` (`role`) VALUES ('SUPPLIER');

CREATE TABLE `funrz2y57jktomq4`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `dob` DATETIME NULL,
  `email` VARCHAR(45) NULL,
  `created` DATETIME NULL,
  `updated` VARCHAR(45) NULL,
  `role` VARCHAR(45) NULL,
  `refered_by` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_role_idx` (`role` ASC) VISIBLE,
  CONSTRAINT `user_role`
    FOREIGN KEY (`role`)
    REFERENCES `funrz2y57jktomq4`.`roles` (`role`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `funrz2y57jktomq4`.`users` 
ADD INDEX `users_to_users_idx` (`refered_by` ASC) VISIBLE;
;
ALTER TABLE `funrz2y57jktomq4`.`users` 
ADD CONSTRAINT `users_refer_users`
  FOREIGN KEY (`refered_by`)
  REFERENCES `funrz2y57jktomq4`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


