ALTER TABLE `emr`.`visit_details` 
ADD COLUMN `visitpercentage` FLOAT NULL AFTER `visitdiscount`;


ALTER TABLE `emr`.`visit_services` 
ADD COLUMN `servicediscountinpercentage` FLOAT NULL AFTER `servicediscount`;

INSERT INTO `emr`.`taskactions`
(`taskid`,
`screencode`,
`screenname`,
`actionname`,
`actioncode`,
`status`,
`created_by`,
`created_on`,
`edited_by`,
`edited_on`,
`defultoption`)
VALUES
(12,
"DRUG_MASTER",
"Drug Master",
"Drug Master screen view",
"DRUG_MASTER_SCREEN_VIEW",
1,
1,
null,
null,
null,
1);
