CREATE TABLE IF NOT EXISTS `nct`.`infrMemberNationality` (
  `ifmnSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `ifnaSeq` BIGINT UNSIGNED NOT NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmnSeq`),
  INDEX `fk_infrMemberNationality_infrNationality1_idx` (`ifnaSeq` ASC) VISIBLE,
  INDEX `fk_infrMemberNationality_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberNationality_infrNationality1`
    FOREIGN KEY (`ifnaSeq`)
    REFERENCES `nct`.`infrNationality` (`ifnaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrMemberNationality_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO `nct`.`infrmembernationality`
(
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifnaSeq`,
`ifmmSeq`)
VALUES
(
1,
now(),
now(),
now(),
now(),
1,
1);
