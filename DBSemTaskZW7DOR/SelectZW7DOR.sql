USE ZW7DOR;

SELECT count(Teljes_ar) FROM etel WHERE Teljes_ar > 1500;
SELECT Nev, Telefonszam FROM Vevo;
SELECT etel_neve FROM etel WHERE Teljes_ar>(SELECT avg(Teljes_ar) FROM etel);
SELECT Kartyaszam, Lejarati_datum FROM Bankkartya INNER JOIN Vevo ON Bankkartya.VevoIDFK=Vevo.VevoID WHERE Hazszam=21;
SELECT etteremID,nev FROM etterem WHERE Nyitvatartas="8tól 22ig";
SELECT * FROM etel
WHERE teljes_ar BETWEEN 1500 AND 3000;
SELECT Telefonszam from etterem;
SELECT Telefonszam from Futar;
SELECT * FROM etel WHERE Teljes_ar<3000;
SELECT nev from vevo where varos = "Miskolc";
SELECT etelidfk from hozzavalok where hozzavalok = "hagyma";