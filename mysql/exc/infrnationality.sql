CREATE TABLE IF NOT EXISTS `nct`.`infrNationality` (
  `ifnaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifnaName` VARCHAR(50) NULL,
  `ifnaNameKor` VARCHAR(50) NULL,
  `ifnaNameEng` VARCHAR(50) NOT NULL,
  `ifnaCode2Char` CHAR(2) NULL,
  `ifnaCode3Char` CHAR(3) NULL,
  `ifnaUseNy` TINYINT NULL,
  `ifnaOrder` TINYINT NULL,
  `ifnaDesc` VARCHAR(255) NULL,
  `ifnaDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifnaSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaNameKor`,
`ifnaNameEng`,
`ifnaCode2Char`,
`ifnaCode3Char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
"대한민국",
"대한민국",
"korea",
"kr",
"kor",
1,
1,
1,
now(),
now(),
now(),
now());
select * from infrnationality;
