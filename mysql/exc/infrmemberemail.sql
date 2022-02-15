use nct;

CREATE TABLE IF NOT EXISTS `nct`.`infrMemberEmail` (
  `ifmeSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmeDefaultNy` TINYINT NOT NULL,
  `ifmeTypeCd` BIGINT NULL,
  `ifmeEmailFull` VARCHAR(100) NULL,
  `ifmeEmailAccount` VARCHAR(100) NULL,
  `ifmeEmailDomain` VARCHAR(100) NULL,
  `ifmeEmailDomainCd` TINYINT NULL,
  `ifmeDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifmeSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO `nct`.`infrmemberemail`
(
`ifmeDefaultNy`,
`ifmeTypeCd`,
`ifmeEmailFull`,
`ifmeEmailAccount`,
`ifmeEmailDomain`,
`ifmeEmailDomainCd`,
`ifmeDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
1,
"bornborn1997@naver.com",
"bornborn1997",
"naver.com",
1,
1,
now(),
now(),
now(),
now(),
1
);


