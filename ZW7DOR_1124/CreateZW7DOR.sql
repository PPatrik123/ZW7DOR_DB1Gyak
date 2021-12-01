CREATE DATABASE ZW7DOR;
USE ZW7DOR;
CREATE TABLE Oktató (neptunkód CHAR(7) PRIMARY KEY, név CHAR(30), tanszék CHAR(30));
CREATE TABLE Hallgató (neptunkód CHAR(7) PRIMARY KEY,név CHAR(30),tankör CHAR(30),szuld DATE,életkor INT DEFAULT NULL,irszám INT,város CHAR(30),utca CHAR(30),hsz CHAR(10));
CREATE TABLE Tárgy (kód CHAR(10) PRIMARY KEY,kredit INT, megnevezés CHAR(30));
CREATE TABLE oktat (neptunkód CHAR(7),kód CHAR(10), FOREIGN KEY(neptunkód) REFERENCES Oktató(neptunkód),FOREIGN KEY(kód) REFERENCES Tárgy(kód));
CREATE TABLE hallgat (félév INT, vizsgajegy INT, kód CHAR(10), neptunkód CHAR(7), FOREIGN KEY(kód) REFERENCES Tárgy(kód), FOREIGN KEY(neptunkód) REFERENCES Hallgató(neptunkód));



