CREATE TABLE IF NOT EXISTS `nct`.`infrAuth` (
  `ifatSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifatAdminNy` TINYINT NULL,
  `ifatName` VARCHAR(50) NOT NULL,
  `ifatNameEng` VARCHAR(50) NULL,
  `ifatUseNy` TINYINT NULL,
  `ifatOrder` TINYINT NULL,
  `ifatDesc` VARCHAR(255) NULL,
  `ifatDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifatSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO `nct`.`infrauth`
(
`ifatAdminNy`,
`ifatName`,
`ifatUseNy`,
`ifatOrder`,
`ifatDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1,
"회원관리자",
1,
3,
0,
now(),
now(),
now(),
now());
