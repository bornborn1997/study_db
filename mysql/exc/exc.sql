use world;

show tables;

-- 테이블생성

create table member (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table member2 (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table book(
	seq int,
    bookname varchar(100),
    publisher varchar(100),
	author varchar(100),
    price int,
);
    

-- 테이블삭제 

drop table member2;

