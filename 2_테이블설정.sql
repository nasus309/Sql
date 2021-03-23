#날짜 : 2021/03/23
#이름 : 김나현
#내용 : 테이블 설정 실습하기

#실습하기 3-1
CREATE TABLE `USER2` (
	`uid`   VARCHAR(20) PRIMARY KEY,
	`name`  VARCHAR(20),	 
	`hp`    CHAR(13),
	`age`   TINYINT
);

INSERT INTO `USER2` VALUES ('A101','김유신','010-1234-1111',23);
INSERT INTO `USER2` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `USER2` VALUES ('A103','장보고','010-1234-3333',23);
INSERT INTO `USER2` VALUES ('A104','강감찬','010-1234-1111',27);

#실습하기 3-2
CREATE TABLE `USER3`(
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp`		CHAR(13) UNIQUE,
	`age`		TINYINT
);

INSERT INTO `USER3` VALUES ('A101','김유신','010-1234-1111',23);
INSERT INTO `USER3` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `USER3` VALUES ('A103','장보고','010-1234-3333',23);
INSERT INTO `USER3` VALUES ('A104','강감찬','010-1234-1111',27); #hp가 UNIQUE라서 안들어가짐.
 # PRIMARY KEY는 NOT NULL, UNIQUE는 NULL 가능.
INSERT INTO `USER3` (`uid`,`name`,`age`) 
				 VALUES ('A105','이순신',27);


#실습하기 3-3
# PK 할만한 것 없을 때...AUTO INCREMENT...
CREATE TABLE `USER4`(
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`name`	VARCHAR(10),
	`gender`	TINYINT,
	`age`		TINYINT,
	`addr`	VARCHAR(255)
);

INSERT INTO `USER4` (`name`, `gender`, `age`, `addr`)
				 VALUES ('김유신', 1, 25, '김해시');

DELETE FROM `USER4` WHERE `seq`=3;

#실습하기 3-4
# SELECT : 데이터 복사.  조건은 복사 안함.
CREATE TABLE `USER5` SELECT * FROM `USER4`;
SELECT * FROM `USER5`;


#실습하기 3-5
# LIKE : TABLE의 구조를 전부 복사
CREATE TABLE `USER6` LIKE `USER4`;

#실습하기 3-6
INSERT INTO `USER6` SELECT * FROM `USER4`;

INSERT INTO `USER6` (`name`, `gender`, `age`, `addr`)
SELECT `name`, `gender`, `age`, `addr` FROM `USER4`;	

SELECT * FROM `USER6`;

