CREATE SCHEMA app_db;

use app_db;

CREATE DATABASE app_db;

drop schema app_db; use app_db;

CREATE TABLE user ( email varchar(40) NOT NULL, name varchar(40) NOT NULL, password varchar(200) NOT NULL, PRIMARY KEY (email)

)ENGINE=InnoDB;

CREATE TABLE role( name varchar(40) NOT NULL,

PRIMARY KEY (name)

) ENGINE=InnoDB;

drop table user_role;

use app_db;

CREATE TABLE user_role(

user_email varchar(40) NOT NULL, role_name varchar(40) NOT NULL,

primary key(user_email,role_name),

CONSTRAINT FK_USER_1 FOREIGN KEY (user_email) REFERENCES user (email) ,

CONSTRAINT FK_ROLE_2 FOREIGN KEY (role_name) REFERENCES role (name)

)ENGINE=InnoDB;

select * from user;
use app_db;
drop table `Sumo`;
CREATE TABLE `Sumo` (

  `id` int(50) NOT NULL AUTO_INCREMENT,
`Datee`  varchar(40) DEFAULT NULL,
  `Fromm`  varchar(45) DEFAULT NULL,
  `Too` varchar(45) DEFAULT NULL,
  `Vacancy` varchar(45) DEFAULT 0,
  `Seat1` Varchar(100) DEFAULT 0,
  `Seat2` Varchar(100) DEFAULT 0,
  `Seat3` Varchar(100) DEFAULT 0,
  `Seat4` Varchar(100) DEFAULT 0,
  `Seat5` Varchar(100) DEFAULT 0,
  `Seat6` Varchar(100) DEFAULT 0,
  `Seat7` Varchar(100) DEFAULT 0,
  `Seat8` Varchar(100) DEFAULT 0,
  `Rate` varchar(200) default 0,

    PRIMARY KEY (id)

)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE District;
create table District (

`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(100) ,

primary key(id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


insert into District(name) values("AIZAWL");
insert into District(name) values("LUNGLEI");
insert into District(name) values("CHAMPHAI");
insert into District(name) values("KOLASIB");



use app_db;

drop table Booking;
  CREATE TABLE `Booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
`Name`  varchar(45) DEFAULT NULL,
  `Address`  varchar(45) DEFAULT NULL,
  `Seat` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
    PRIMARY KEY (id)

)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


insert into `Sumo`(`Date`,`From`,`To`,`Vacancy`,`Seat1`,`Seat2`,`Seat3`,`Seat4`,`Seat5`,`Seat6`,`Seat7`,`Seat8`) values("2019-05-19","CHAMPHAI","KOLASIB",8,0,0,0,0,0,0,0,0)