--Select * from projekat;
--Insert into projekat Values (601,'darko',21521);
--Insert into projekat Values (602,'Djekic',02091984),(603,'VW',5);
--Select * from projekat Where imeproj = 'darko';
--Select * from radnik Where ime = 'Savo';
--Select posao from radnik ;
--Select imeproj,sredstva FROM projekat Where sredstva >= 3000000;
--SELECT idbr,ime,kvalifikacija,broj_odeljenja FROM radnik WHERE broj_odeljenja != 10;
--UPDATE projekat SET sredstva = 600000 WHERE broj_projekta = 600 ;
--UPDATE projekat SET imeproj = 'DARKO',sredstva = 02091984 WHERE broj_projekta = 601 ;
--SELECT sredstva FROM projekat;
--UPDATE projekat SET sredstva = 500000 WHERE broj_projekta >=500;
--DELETE FROM projekat WHERE broj_projekta = 600;
--SELECT * FROM projekat WHERE broj_projekta = 200;
--SELECT ime,plata FROM radnik WHERE plata > 2000;
--SELECT kvalifikacija,plata,ime FROM radnik WHERE broj_odeljenja = 30;
--SELECT ime,plata FROM radnik WHERE plata >=2000;
--SELECT kvalifikacija,plata,ime FROM radnik WHERE broj_odeljenja != 30 ;
--SELECT ime,posao,kvalifikacija FROM radnik WHERE datum_zaposlenja = '1990-02-17' ;
--SELECT ime,datum,plata,premija FROM radnik WHERE posao = 'savetnik';
--SELECT idbr FROM radnik WHERE broj_odeljenja = 100;
--SELECT * FROM projekat;

--SELECT imeproj,sredstva FROM projekat WHERE sredstva <= 3000000;
--SELECT ime,posao FROM radnik WHERE NOT posao = 'vozac' OR posao = 'prodavac';
--SELECT * FROM radnik WHERE plata BETWEEN 1000 AND 1200;
--SELECT ime,plata FROM radnik ORDER BY ime ASC;
--SELECT ime,posao FROM radnik WHERE posao IN ('analiticar' ,'savetnik');
--SELECT ime FROM radnik WHERE broj_odeljenja = 20 AND posao = 'vozac';
--SELECT ime,posao,broj_odeljenja FROM radnik WHERE posao = 'upravnik' OR posao = 'direktor';
--SELECT ime,datum_zaposlenja,plata,premija,broj_odeljenja FROM radnik WHERE plata BETWEEN 1000 AND 2000;
--SELECT ime,kvalifikacija,posao,plata,premija FROM radnik WHERE broj_odeljenja = 10 ORDER BY ime ASC ;
--SELECT imeproj FROM projekat WHERE imeproj LIKE '%a' ;
--SELECT * FROM radnik ;
--SELECT ime,posao FROM radnik WHERE broj_odeljenja = 10 AND posao = 'analiticar' OR posao = 'upravnik';
--SELECT ime,plata,premija FROM radnik WHERE posao = 'vozac' ORDER BY premija DESC ; 
--INSERT INTO projekat(broj_projekta,imeproj,sredstva) VALUES (604,'Djex',35000) ;
--INSERT INTO projekat (broj_projekta,imeproj,sredstva ) VALUES (600,'ITBootcamp',500000);
--Update projekat SET imeproj = 'dom. trz' WHERE broj_projekta = 300; 
--UPDATE projekat SET imeproj = 'ino trziste' WHERE broj_projekta = 400;
--UPDATE projekat SET imeproj = 'fra' WHERE broj_projekta = 500;
--DELETE FROM projekat WHERE broj_projekta = 700;
--UPDATE projekat SET imeproj = 'ITBootcamp' WHERE broj_projekta = 604;
--SELECT imeproj AS "imena" FROM projekat ; 
--SELECT DISTINCT posao FROM radnik ;
--SELECT ime,posao FROM radnik WHERE plata > 500 OR kvalifikacija > 'KV' ;  
--SELECT broj_odeljenja, ime_odeljenja, mesto FROM odeljenje WHERE mesto LIKE 'P%' OR mesto LIKE 'D%';
--SELECT idbr,ime,broj_odeljenja,plata + COALESCE (premija,1200) AS "ukupna primanja" FROM radnik ;
--SELECT broj_odeljenja , ROUND(AVG(plata),5)
--FROM radnik 
--WHERE posao NOT IN ('analiticar','upravnik')
--GROUP BY broj_odeljenja
--ORDER BY 2 ASC ;
--SELECT kvalifikacija, MIN(premija) AS "MIN premija",MAX(premija) AS "MAX premija",MIN (plata) AS "MIN plata",MAX(plata) AS "MAX plata"
--FROM radnik
--GROUP BY 1
--HAVING MIN(plata)>1000;
--SELECT COUNT (ime) FROM radnik WHERE broj_odeljenja = 40;
--SELECT AVG (plata) FROM radnik GROUP BY posao = 'analiticar' ;
--SELECT SUM (plata)FROM radnik GROUP BY (posao); 

--SELECT ime,kvalifikacija,plata,premija FROM radnik WHERE premija > 0;
--SELECT ROUND(AVG(plata),2) FROM radnik ;
--SELECT COUNT(idbr) AS "broj radnika",MIN(plata) AS "minimalna plata",MAX(plata) AS "maximalna plata ",AVG(plata) AS "prosecna plata" FROM radnik ;
--SELECT COUNT(idbr) AS "broj radnika", ROUND(MIN(plata),2) AS "minimalna plata",ROUND(MAX(plata),2) AS "maximalna plata ",ROUND(AVG(plata),2) AS "prosecna plata" FROM radnik WHERE broj_odeljenja IN(30);
--SELECT * FROM radnik;
--SELECT MIN(plata),MAX(plata),kvalifikacija FROM radnik WHERE broj_odeljenja IN(10,20) GROUP BY kvalifikacija ; 
--SELECT broj_odeljenja,AVG(plata) FROM radnik GROUP BY broj_odeljenja,plata HAVING AVG(plata) > 2000 ORDER BY broj_odeljenja ASC;
--SELECT ime,MAX(plata) FROM radnik GROUP BY ime,plata ORDER BY plata DESC LIMIT 1;


--INSERT INTO radnik VALUES (23,'Djexo','QA','VSS',5786,'2023-07-01',3300,1200,20) ;
--SELECT * FROM projekat ;
--SELECT ime,kvalifikacija,plata FROM radnik ;
--UPDATE radnik SET kvalifikacija = 'VS', plata = 1300 WHERE ime  = ‘DARKO’;
--SELECT imeproj,sredstva FROM projekat WHERE sredstva <=3000000;

--VEZBA--

--SELECT ime,kvalifikacija,plata,premija FROM radnik WHERE premija > 0 ;
--SELECT ROUND(AVG(plata),2) FROM radnik; 
--SELECT MIN(plata),MAX(plata),AVG(plata),COUNT(idbr) FROM radnik ;
--SELECT ROUND(MIN(plata),2),ROUND(MAX(plata),2),ROUND(AVG(plata),2),COUNT(idbr) FROM radnik WHERE broj_odeljenja = 30  ;
--SELECT kvalifikacija,MIN(plata),MAX(plata) FROM radnik  WHERE broj_odeljenja = 10 OR broj_odeljenja = 20 GROUP BY kvalifikacija;
--SELECT broj_odeljenja , AVG(plata) FROM radnik GROUP BY broj_odeljenja ,plata HAVING AVG(plata)>2000 ; 
--SELECT ime FROM radnik ORDER BY plata DESC LIMIT 1;
--SELECT ime,posao,plata FROM radnik WHERE posao NOT IN('upravnik','direktor','rukovodilac')GROUP BY ime,posao,plata HAVING plata>1000;
--SELECT broj_odeljenja , AVG(plata) FROM radnik GROUP BY broj_odeljenja ;
--SELECT ime,plata FROM radnik WHERE datum_zaposlenja < '2021-01-01' AND premija > 1000;
--SELECT posao,idbr FROM radnik ORDER BY idbr DESC;
--SELECT MIN(premija),MAX(premija),AVG(premija) FROM radnik WHERE posao = 'vozac';
--SELECT idbr,broj_odeljenja FROM radnik ORDER BY idbr DESC ;

--SELECT AVG(plata) FROM radnik WHERE broj_odeljenja = 20 AND kvalifikacija = 'KV' ;
--SELECT broj_odeljenja,ime_odeljenja,mesto FROM odeljenje WHERE (ime_odeljenja iLIKE 'p%' OR ime_odeljenja iLIKE 'd%');

--PODupiti--
--SELECT * FROM odeljenje WHERE mesto = 'Dorcol';
--SELECT ime FROM radnik WHERE broj_odeljenja = 20;
--resenje--SELECT ime FROM radnik WHERE broj_odeljenja = (SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Dorcol');

--SELECT ime,kvalifikacija ,posao FROM radnik WHERE ime = 'Marko';
--resenje--SELECT ime,posao,kvalifikacija FROM radnik WHERE kvalifikacija = (SELECT kvalifikacija FROM radnik WHERE ime = 'Marko');
--SELECT plata FROM radnik WHERE kvalifikacija = 'KV';
--resenje--SELECT idbr,ime,plata,kvalifikacija FROM radnik WHERE plata > (SELECT MAX(plata) FROM radnik WHERE kvalifikacija = 'KV');
--SELECT * FROM odeljenje ; 

--SELECT ime,posao,plata ,COALESCE(premija,0) FROM radnik WHERE broj_odeljenja = (SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Novi Beograd' ) AND posao NOT IN('prodavac','upravnik') ORDER BY premija DESC ; 
--SELECT * FROM projekat ;
--SELECT * FROM radnik ;
--SELECT * FROM odeljenje;
--SELECT * FROM ucesce ;
--SELECT ime , datum_zaposlenja 
--FROM radnik 
--WHERE idbr IN(SELECT idbr FROM ucesce GROUP BY idbr IN (SELECT ime,datum_zaposlenja,plata + COALESCE(premija,0) FROM radnik WHERE idbr IN( SELECT idbr FROM ucesce GROUP BY idbr HAVING COUNT(idbr)>1)
--ORDER BY datum_zaposlenja DESC; 

--resenje--SELECT ime,datum_zaposlenja,plata + COALESCE(premija,0)FROM radnik WHERE idbr IN(SELECT idbr FROM ucesce GROUP BY idbr HAVING COUNT (idbr)>1)ORDER BY broj_odeljenja DESC;
--SELECT r.ime,r.posao,r.idbr FROM radnik r LEFT JOIN ucesce u ON r.idbr = u.idbr ;
--SELECT * FROM radnik;



--SELECT ime,posao FROM radnik WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Novi Beograd' );
--SELECT ime, kvalifikacija 
--FROM radnik
--WHERE idbr IN (SELECT idbr FROM ucesce WHERE broj_projekta 
			   --IN (SELECT broj_projekta FROM ucesce WHERE idbr 
				   --IN (SELECT idbr FROM radnik WHERE ime = 'Marko')));

--SELECT * FROM radnik WHERE idbr NOT IN(SELECT idbr FROM ucesce );
--SELECT ime FROM radnik WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM odeljenje WHERE ime_odeljenja = 'Komercijala');
--sa JOIN--SELECT radnik.ime FROM radnik JOIN odeljenje ON radnik.broj_odeljenja = odeljenje.broj_odeljenja WHERE ime_odeljenja ='Komercijala';
--SELECT r.ime,r.plata,o.mesto FROM radnik r JOIN odeljenje o ON r.broj_odeljenja = o.broj_odeljenja WHERE plata BETWEEN 1500 AND 2500 AND ime NOT iLIKE '%e%' ORDER BY plata DESC,ime ASC ; 
--SELECT * FROM radnik WHERE broj_odeljenja = 20 ;

--Agregatna funk.--resenje--SELECT ime,MAX(plata) FROM radnik GROUP BY ime LIMIT 1;
--PODupit--resenje 1 zadatka--SELECT ime FROM radnik WHERE plata IN(SELECT MAX(plata) FROM radnik );
--SELECT r.ime,r.plata FROM radnik r LEFT JOIN radnik ON r.plata=r.plata WHERE  ;
--resenje 2--SELECT ime,kvalifikacija FROM radnik WHERE plata IN(SELECT plata FROM radnik WHERE ime = 'Jovan')ORDER BY ime DESC; 
--SELECT broj_odeljenja FROM odeljenje WHERE ime_odeljenja = 'Plan';
--SELECT ime,posao,plata FROM radnik WHERE broj_odeljenja = 10;


--                           OBJASNJENJE                                        posao iz tabele RADNIK povetujemo sa tabelom ODELJENJE preko kolone broj_odeljenja da bi dosli do toga da nam da rezultat za poslove koji se nalaze u ime_odeljenja = PLAN 
--resenje 3 zadatak --SELECT ime,posao,plata,broj_odeljenja FROM radnik WHERE broj_odeljenja = 10 AND posao IN(SELECT posao FROM radnik WHERE broj_odeljenja  IN(SELECT broj_odeljenja FROM odeljenje WHERE ime_odeljenja = 'Plan'));
--resenje 4 zadatak--SELECT o.*  FROM odeljenje o  JOIN radnik r ON o.broj_odeljenja = r.broj_odeljenja ; 


--resenje 5 zadatak--SELECT ime,plata+COALESCE(premija,0) FROM radnik WHERE plata+COALESCE(premija,0) > (SELECT AVG(plata+COALESCE(premija,0)) FROM radnik);

--SELECT o.*,r.* FROM odeljenje o 
--LEFT JOIN radnik r 
--ON o.broj_odeljenja = r.broj_odeljenja 
--WHERE ime_odeljenja iLIKE 'd%' OR ime_odeljenja iLIKE 'r%';


--SELECT ime,plata FROM radnik WHERE plata IN(SELECT plata FROM radnik GROUP BY plata HAVING plata > AVG(plata + premija)); broj_odeljenja = 10 );
--SELECT ime,plata FROM radnik WHERE plata IN(SELECT plata FROM radnik GROUP BY plata HAVING plata > AVG(plata + premija));
--SELECT * FROM odeljenje WHERE broj_odeljenja IN (SELECT broj_odeljenja FROM radnik WHERE ime = broj_odeljenja );
--SELECT * FROM odeljenje ;--WHERE broj_odeljenja;
--SELECT * FROM odeljenje WHERE broj_odeljenja BETWEEN 10 AND 40;
--SELECT * FROM radnik;
--SELECT ime ,MAX(plata)+premija FROM radnik GROUP BY ime,plata,premija; 
--SELECT * FROM odeljenje WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM radnik Where idbr = broj_odeljenja);

--SELECT * FROM radnik;
--SELECT * FROM odeljenje;
--SELECT * FROM projekat;
--SELECT * FROM ucesce;


--SELECT ime FROM radnik WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Dorcol');
--SELECT ime,posao,kvalifikacija FROM radnik WHERE kvalifikacija IN(SELECT kvalifikacija FROM radnik WHERE ime = 'Marko'); 
--SELECT idbr,ime,plata,kvalifikacija FROM radnik WHERE kvalifikacija = 'KV' ;
--SELECT idbr,ime,plata,kvalifikacija FROM radnik WHERE plata > (SELECT MAX(plata)FROM radnik WHERE kvalifikacija = 'KV');
--SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Novi Beograd';
--SELECT ime,posao,plata,premija FROM radnik WHERE broj_odeljenja = 10 AND posao NOT IN('upravnik','prodavac');
--SELECT ime,posao,plata,COALESCE(premija,0)  FROM radnik WHERE broj_odeljenja IN (SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Novi Beograd') AND posao NOT IN('upravnik','prodavac')ORDER BY premija DESC;
--SELECT ime,datum_zaposlenja,plata+COALESCE(premija,0) FROM radnik; 
--SELECT idbr FROM ucesce GROUP BY idbr HAVING COUNT(idbr)>1 ;
--SELECT ime,datum_zaposlenja,plata+COALESCE(premija,0) FROM radnik WHERE idbr IN(SELECT idbr FROM ucesce GROUP BY idbr  HAVING COUNT(idbr)>1)ORDER BY datum_zaposlenja DESC;
--SELECT ime FROM radnik WHERE plata IN(SELECT MAX(plata) FROM radnik );
--SELECT ime,kvalifikacija FROM radnik ;
--SELECT plata FROM radnik WHERE ime='Jovan';
--SELECT ime,kvalifikacija FROM radnik WHERE plata IN(SELECT plata FROM radnik WHERE ime = 'Jovan')ORDER BY ime DESC;
--SELECT ime,plata,posao FROM radnik WHERE broj_odeljenja = 10 ;
                --postupak za resenje zadatke --
--SELECT posao FROM radnik WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM odeljenje WHERE ime_odeljenja = 'Plan'); 
--SELECT ime,plata,posao FROM radnik WHERE broj_odeljenja = 10 AND posao IN(SELECT posao FROM radnik WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM odeljenje WHERE ime_odeljenja = 'Plan')); 


--SELECT o.* FROM odeljenje o JOIN radnik r ON o.broj_odeljenja = r.broj_odeljenja;
-- WHERE plata+COALESCE(premija,0)>(SELECT AVG(plata+COALESCE(premija,0))FROM radnik);

--SELECT r.* , o.* FROM radnik r RIGHT JOIN odeljenje o ON r.broj_odeljenja = o.broj_odeljenja WHERE ime_odeljenja iLIKE 'd%' OR ime_odeljenja iLIKE 'r%';

--SELECT o.broj_odeljenja,o.ime_odeljenja,o.mesto,r.ime,r.posao FROM odeljenje o JOIN radnik r ON o.broj_odeljenja = r.broj_odeljenja WHERE posao = 'analiticar';
--SELECT r.ime,r.posao,p.*
--FROM radnik r 
--JOIN ucesce u 
--ON r.idbr = u.idbr
--JOIN projekat p
--ON u.broj_projekta = p.broj_projekta;

/*SELECT o.ime_odeljenja,r.ime,r.posao 
FROM odeljenje o
LEFT JOIN radnik r
ON o.broj_odeljenja = r.broj_odeljenja ;*/

/*SELECT r.ime,r.posao,u.idbr,p.broj_projekta,p.imeproj
FROM radnik r 
RIGHT JOIN ucesce u
ON r.idbr = u.idbr
RIGHT JOIN projekat p
ON u.broj_projekta = p.broj_projekta ;*/

/*SELECT *
FROM radnik
FULL OUTER JOIN odeljenje 
ON radnik.broj_odeljenja = odeljenje.broj_odeljenja;*/

/*SELECT COUNT(u.idbr),p.imeproj,p.broj_projekta
FROM ucesce u 
JOIN projekat p
ON u.broj_projekta = p.broj_projekta
GROUP BY p.broj_projekta   ----naveli smo da grupise po broju projekta kaoko bi HAVING COUNT mogli da dodamo 
HAVING COUNT(u.idbr) > 3;   ------ da izbroji samo za vece od 3 ali po broju projekta koji smo naveli u GROUP BY .*/


--SELECT ime,posao FROM radnik WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Novi Beograd' );
--SELECT ime,kvalifikacija FROM radnik WHERE idbr IN(SELECT idbr FROM ucesce WHERE broj_projekta IN(SELECT broj_projekta FROM ucesce WHERE idbr IN(SELECT idbr FROM radnik WHERE ime = 'Marko')));  

/*SELECT r.ime ,r.kvalifikacija,u.broj_projekta
FROM radnik r
JOIN ucesce u
ON r.idbr = u.idbr;*/

--SELECT * FROM radnik;
--SELECT * FROM odeljenje;
--SELECT * FROM projekat;
--SELECT * FROM ucesce;

--1.--INSERT INTO radnik(ime,posao,broj_odeljenja,idbr) VALUES('Miki','analiticar',30,659) ;  
--2.--UPDATE radnik SET datum_zaposlenja = '1999-01-01',plata = 2500,kvalifikacija = 'VSS' WHERE ime = 'Miki';
--3.--UPDATE radnik SET rukovodilac = 6234 WHERE ime = 'Miki';  
--4.--SELECT idbr,plata,premija,plata+COALESCE(premija,781) FROM radnik WHERE ime = 'Miki';
--5.--SELECT ime,posao,plata,broj_odeljenja FROM radnik WHERE broj_odeljenja = 30 AND plata > 2000;
--SELECT ime,posao FROM radnik WHERE rukovodilac IS NULL ;


/* ------ ZLATNO PRAVILO ------  
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);*/





































