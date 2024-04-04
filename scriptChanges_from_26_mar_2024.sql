INSERT INTO `emr`.`lookup`
(`lookupid`,
`lookupcode`,
`lookuptype`,
`lookupvalue`)
VALUES
(17,
"DRUG",
"ALLERGY_TYPE",
"Drug");



INSERT INTO `emr`.`lookup`
(`lookupid`,
`lookupcode`,
`lookuptype`,
`lookupvalue`)
VALUES
(18,
"ENVIRONMENT",
"ALLERGY_TYPE",
"Environment");



INSERT INTO `emr`.`lookup`
(`lookupid`,
`lookupcode`,
`lookuptype`,
`lookupvalue`)
VALUES
(19,
"FOOD",
"ALLERGY_TYPE",
"Food");


CREATE TABLE `emr`.`allergiesmaster` (
  `allergyid` DOUBLE NOT NULL,
  `allergyname` VARCHAR(100) NULL,
  `allergycode` VARCHAR(45) NULL,
  `status` INT NULL,
  `allergytype` DOUBLE NULL,
  PRIMARY KEY (`allergyid`));


