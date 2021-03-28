CREATE DATABASE IF NOT EXISTS pucsdStudent;

USE pucsdStudent;

CREATE USER IF NOT EXISTS 'pucsd'@'localhost' IDENTIFIED BY 'pucsd';

GRANT ALL PRIVILEGES ON * . * TO 'pucsd'@'localhost';

CREATE TABLE IF NOT EXISTS studentData
(
Name char(20),
Roll_no int,
Address varchar(50),
Mobile varchar(10),
PAN_Number varchar(10)
);

INSERT INTO studentData VALUES('Onkar Bagal',19111005,'Pimpale','7028376265','DBJPB7330F');
INSERT INTO studentData VALUES('Omkar Wable',19111048,'Karkhel','7397984038','HENAO8501G');
INSERT INTO studentData VALUES('Sagar Waghmare',19111047,'Karmala','9852631450','DHNKP7523G');
