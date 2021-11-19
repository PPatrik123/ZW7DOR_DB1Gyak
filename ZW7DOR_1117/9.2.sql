CREATE DATABASE ZW7DOR;
USE ZW7DOR;
CREATE TABLE TANFOLYAM(tkód INT, ár INT check(ÁR>0), tipus CHAR(30), megnevezés CHAR(30), PRIMARY KEY(tkód));
CREATE TABLE RESZTVEVO(tajszám INT, név CHAR(30) not null, lakcím CHAR(40), PRIMARY KEY(tajszám));
CREATE TABLE BEFIZETES(tanfolyamok INT REFERENCES TANFOLYAM, resztvevok INT REFERENCES RESZTVEVO, befizetes INT);

insert into tanfolyam values(0,211110,"egyetem","programozás alapjai");
insert into tanfolyam values(1,43000,"középiskola","földrajz");
insert into tanfolyam values(2,30000,"általános","természettan");
insert into tanfolyam values(3,120000,"egyetem","szoftvertechnologiák");

insert into resztvevo values(111222333, "Ravasz Támbor", "Miskolc");
insert into resztvevo values(222333444, "Rejtő Jenő", NULL);
insert into resztvevo values(000111222, "Porosz József", "Dunaújváros");
insert into resztvevo values(010102020, "Táncsics Mihály", NULL);

insert into befizetes values(0,111222333,10000); 
insert into befizetes values(1,111222333,2500); 
insert into befizetes values(0,222333444,10000); 
insert into befizetes values(3,000111222,15000); 
insert into befizetes values(2,010102020,2500); 

SELECT tipus, AVG(ár), MAX(ár) - MIN(ár) FROM tanfolyam GROUP BY tipus;
SELECT megnevezés, CASE WHEN ár > 100000 THEN "drága" ELSE "olcsó" END arkategoria FROM tanfolyam;
CREATE VIEW tdb AS SELECT MAX(t.megnevezés) név, COUNT(*) db FROM tanfolyam t INNER JOIN befizetes b ON b.tanfolyamok = t.tkód GROUP BY t.tkód;
SELECT név, CASE WHEN db > 10 THEN "népszerű" ELSE "nem népszerű" END résztvevők FROM tdb;