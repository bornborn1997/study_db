CREATE TABLE IF NOT EXISTS `nct`.`infrMenu` (
  `ifmuSeq` BIGINT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmuAdminNy` TINYINT(1) NULL,
  `ifmuName` VARCHAR(50) NULL,
  `ifmuNameEng` VARCHAR(50) NULL,
  `ifmuUrl` VARCHAR(100) NULL,
  `ifmuParents` BIGINT(11) NULL,
  `ifmuDepth` TINYINT(1) NULL,
  `ifmuUseNy` TINYINT(1) NULL,
  `ifmuOrder` VARCHAR(45) NULL,
  `ifmuDesc` VARCHAR(255) NULL,
  `ifmuDelNy` TINYINT(1) NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifmuSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO `nct`.`infrmenu`
(
`ifmuAdminNy`,
`ifmuName`,
`ifmuParents`,
`ifmuDepth`,
`ifmuUseNy`,
`ifmuOrder`,
`ifmuDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1,
"테스트관리",
3,
2,
1,
5,
0,
now(),
now(),
now(),
now());
