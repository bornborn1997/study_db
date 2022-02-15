CREATE TABLE IF NOT EXISTS `nct`.`infrMemberPhone` (
  `ifmpSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmpDefaultNy` TINYINT NOT NULL,
  `ifmpTypeCd` BIGINT NULL,
  `ifmpDeviceCd` BIGINT NULL,
  `ifmpTelecomCd` TINYINT NULL,
  `ifmpNumber` VARCHAR(50) NULL,
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
  PRIMARY KEY (`ifmpSeq`),
  INDEX `fk_infrMemberPhone_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberPhone_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO `nct`.`infrmemberphone`
(
`ifmpDefaultNy`,
`ifmpTypeCd`,
`ifmpDeviceCd`,
`ifmpTelecomCd`,
`ifmpNumber`,
`ifmeDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
<{ifmpDefaultNy: }>,
<{ifmpTypeCd: }>,
<{ifmpDeviceCd: }>,
<{ifmpTelecomCd: }>,
<{ifmpNumber: }>,
<{ifmeDelNy: }>,
<{regDateTime: }>,
<{regDateTimeSvr: }>,
<{modDateTime: }>,
<{modDateTimeSvr: }>,
<{ifmmSeq: }>
);




