use test;
drop table if exists hibernate_sequence;
drop table if exists part;
create table hibernate_sequence (next_val bigint) engine=MyISAM;
insert into hibernate_sequence values ( 1 );
create table part (
  id bigint not null AUTO_INCREMENT,
  amount integer not null,
  name varchar(255),
  requirement bit not null,
  primary key (id))
  engine=MyISAM
  DEFAULT CHARACTER SET = utf8;
INSERT INTO part(amount,name,requirement)VALUES(9,'GPU',true);
INSERT INTO part(amount,name,requirement)VALUES(7,'CPU',true);
INSERT INTO part(amount,name,requirement)VALUES(15,'Motherboard',true);
INSERT INTO part(amount,name,requirement)VALUES(14,'Box cooler',true);
INSERT INTO part(amount,name,requirement)VALUES(12,'Power Supply',true);
INSERT INTO part(amount,name,requirement)VALUES(10,'SSD',true);
INSERT INTO part(amount,name,requirement)VALUES(8,'HDD',false);
INSERT INTO part(amount,name,requirement)VALUES(13,'Pack of coolers',true);
INSERT INTO part(amount,name,requirement)VALUES(9,'System case',true);
INSERT INTO part(amount,name,requirement)VALUES(55,'SATA wire',false);
INSERT INTO part(amount,name,requirement)VALUES(10,'8-pin wire',false);
INSERT INTO part(amount,name,requirement)VALUES(2,'16-pin wire',false);
INSERT INTO part(amount,name,requirement)VALUES(30,'Sound card',false);
INSERT INTO part(amount,name,requirement)VALUES(10,'Micro',false);
INSERT INTO part(amount,name,requirement)VALUES(12,'Headphones',false);
INSERT INTO part(amount,name,requirement)VALUES(7,'Case lights',false);
INSERT INTO part(amount,name,requirement)VALUES(5,'HDMI wire',false);
INSERT INTO part(amount,name,requirement)VALUES(3,'Audio system',false);
INSERT INTO part(amount,name,requirement)VALUES(12,'Water cooling',false);
INSERT INTO part(amount,name,requirement)VALUES(11,'Monitor',false);
INSERT INTO part(amount,name,requirement)VALUES(28,'Keyboard',false);
INSERT INTO part(amount,name,requirement)VALUES(21,'Mouse',false);
