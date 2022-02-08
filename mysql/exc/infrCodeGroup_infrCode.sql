INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

select * from infrCodeGroup;

update infrCodeGroup 
set ifcgDelNy = 1 
where ifcgSeq > 10;

INSERT INTO `nct`.`infrcode`
(
`ifcdSeq`,
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`infrCodeGroup_ifcgSeq`)
VALUES
(
16,
"회원전화 통신사",
1,
1,
0,
now(),
now(),
now(),
now(),
9
);

update infrCode
set ifcdName = '조회'
where ifcdSeq = 2;

select * from infrCode;

select a.ifcgSeq, a.ifcgName,
b.ifcdSeq, b.ifcdName, b.ifcdOrder
from infrCodeGroup a
left join infrCode b on b.infrCodeGroup_ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder;



delete from infrCode
where ifcdSeq = 6;


