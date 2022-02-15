CREATE TABLE IF NOT EXISTS `nct`.`infrAuthMember` (
  `ifamSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifamUseNy` TINYINT NULL,
  `ifamOrder` TINYINT NULL,
  `ifamDesc` VARCHAR(255) NULL,
  `ifamDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifamSeq`),
  INDEX `fk_infrAuthMember_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthMember_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrAuthMember_infrAuth1`
    FOREIGN KEY (`ifatSeq`)
    REFERENCES `nct`.`infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthMember_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;
INSERT INTO `nct`.`infrauthmember`
(
`ifamUseNy`,
`ifamOrder`,
`ifamDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`ifatSeq`,
`ifmmSeq`)
VALUES
(
1,
1,
1,
now(),
now(),
now(),
1,
1);

select 
	a.ifatseq
    ,(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifatName
    ,a.ifmuseq
    ,(select ifmuName from infrMenu where ifmuseq = a.ifmuseq)as ifmuName
    ,a.ifauRoleCd
    ,(select ifcdName from infrCode where ifcdseq = a.ifauRoleCd) as ifauRoleName
    from infrAuthMenu as a
		where 1=1
			
