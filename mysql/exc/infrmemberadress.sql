CREATE TABLE IF NOT EXISTS `nct`.`infrMemberAdress` (
  `ifmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmaDefaultNy` TINYINT NOT NULL,
  `ifmaTypeCd` BIGINT NULL,
  `ifmaAddress1` VARCHAR(100) NULL,
  `ifmaAddress2` VARCHAR(100) NULL,
  `ifmaZipcode` VARCHAR(50) NULL,
  `ifmaDelNy` TINYINT NOT NULL,
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
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmaSeq`),
  INDEX `fk_infrMemberEmail_copy1_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_copy1_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO `nct`.`infrmemberadress`
(
`ifmaDefaultNy`,
`ifmaTypeCd`,
`ifmaAddress1`,
`ifmaAddress2`,
`ifmaZipcode`,
`ifmaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
1,
"인천광역시 연수구",
"동아금호아파트 109동",
"10000",
1,
now(),
now(),
now(),
now(),
1);
