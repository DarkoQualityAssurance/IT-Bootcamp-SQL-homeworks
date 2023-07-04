--SELECT * FROM radnik ;
--SELECT * FROM odeljenje ;
--SELECT * FROM projekat ;
--SELECT * FROM ucesce ;

--1.--SELECT ime ,posao ,kvalifikacija,broj_odeljenja FROM radnik WHERE posao IN('upravnik','savetnik') AND broj_odeljenja = 20;
--2.--SELECT ime FROM radnik WHERE ime NOT LIKE 'A%';
--3.--SELECT ime,plata,premija,posao FROM radnik WHERE posao = 'vozac' ORDER BY premija DESC;
--4.--SELECT ime,kvalifikacija,plata,premija FROM radnik WHERE premija IS NOT NULL ; 
--5.--SELECT ROUND(MIN(plata),2),ROUND(MAX(plata),2),ROUND(AVG(plata),2),COUNT(idbr) FROM radnik; 
--6.--SELECT ime,posao,broj_odeljenja FROM radnik WHERE ime LIKE 'M%' OR ime iLIKE '%a%'; 

--1.--SELECT ime,plata,premija FROM radnik WHERE premija IS NULL OR premija = 0 ORDER BY ime ASC;
--SELECT kvalifikacija , MIN(plata),MAX(plata) FROM radnik WHERE broj_odeljenja IN(10,20) GROUP BY kvalifikacija ;
--3.--SELECT ime_odeljenja FROM odeljenje WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM radnik GROUP BY broj_odeljenja HAVING SUM(plata+COALESCE(premija,0))<9000) ;

--SELECT kvalifikacija,MIN(plata),MAX(plata) FROM radnik WHERE broj_odeljenja IN(10,20)GROUP BY kvalifikacija;

/*--1.--SELECT o.*,r.* 
FROM odeljenje o  
JOIN radnik r
ON o.broj_odeljenja = r.broj_odeljenja 
WHERE o.ime_odeljenja 
iLIKE 'd%' OR ime_odeljenja iLIKE 'r%';*/


/*--2.--SELECT r.ime, p.imeproj FROM radnik r 
JOIN ucesce u on r.idbr = u.idbr
JOIN projekat p on u.broj_projekta = p.broj_projekta
WHERE posao = 'savetnik'
	AND plata > (SELECT avg(coalesce(premija , 0)) 
FROM radnik WHERE broj_odeljenja = 10);*/

/*SELECT r.ime,r1.ime
FROM radnik r
JOIN radnik r1
ON r.rukovodilac = r1.idbr;*/

--SELECT ime,imeproj FROM radnik,projekat WHERE posao = 'savetnik' AND idbr IN(SELECT idbr FROM ucesce WHERE broj_projekta IN(SELECT broj_projekta FROM projekat WHERE imeproj = 'savetnik')); 

/*SELECT r.ime,p.imeproj
FROM radnik r
JOIN ucescea u
ON r.idbr =u.idbr
JOIN projekat p
ON u.broj_paprojekta = p.broj_projekta
WHERE r.posao = 'savetnik' AND r.plata > (SELECT AVG(premija) FROM radnik r WHERE r.broj_odeljenja = 10 );*/


--SELECT * FROM radnik ;
--SELECT * FROM projekat;
--SELECT * FROM odeljenje;
--SELECT * FROM ucesce;


--VEZBA--

--SELECT ime FROM radnik WHERE broj_odeljenja = 50 ;
--SELECT ime,plata FROM radnik WHERE idbr = 5775 ;
--SELECT * FROM radnik WHERE plata = 1300;
--SELECT funkcija FROM ucesce WHERE idbr = 5652 AND broj_projekta=100;
--SELECT ime,plata FROM radnik WHERE plata IN(1000,1300,2400);
--SELECT 	ime,kvalifikacija,plata,premija FROM radnik ORDER BY kvalifikacija DESC , plata ASC,premija DESC;
--SELECT broj_odeljenja,ROUND(AVG(plata),2) FROM radnik GROUP BY broj_odeljenja ORDER BY broj_odeljenja DESC ; 
--SELECT broj_odeljenja,COUNT(idbr) FROM radnik  WHERE premija IS NOT NULL GROUP BY broj_odeljenja;
--SELECT ime,SUM(plata+COALESCE(premija,0)) FROM radnik WHERE posao IN(SELECT posao FROM radnik WHERE idbr IN(SELECT idbr FROM radnik WHERE ime = 'Slobo' )) GROUP BY ime;
/*SELECT o.* 
FROM odeljenje o
LEFT JOIN radnik r
ON o.broj_odeljenja = r.broj_odeljenja
WHERE r.idbr IS NULL ;*/

/*SELECT o.ime_odeljenja 
FROM odeljenje o
JOIN radnik r
ON o.broj_odeljenja = r.broj_odeljenja
GROUP BY o.ime_odeljenja
HAVING SUM(plata+COALESCE(premija,0)) > 10000 ;*/

/*SELECT r.ime,r.posao,r.broj_odeljenja,o.ime_odeljenja,o.mesto
FROM radnik r
LEFT JOIN odeljenje o
ON r.broj_odeljenja = o.broj_odeljenja ;*/

/*SELECT p.imeproj,SUM(u.broj_sati)
FROM projekat p
JOIN ucesce u
ON p.broj_projekta = u.broj_projekta 
WHERE u.broj_sati BETWEEN 5000 AND 10000 GROUP BY p.imeproj;*/

--SELECT imeproj,SUM(broj_sati) FROM projekat WHERE broj_projekta IN(SELECT broj_projekta FROM ucesce WHERE broj_sati BETWEEN 5000 AND 10000)GROUP BY imeproj;





--SELECT * FROM radnik ;
--SELECT * FROM projekat;
--SELECT * FROM odeljenje;
--SELECT * FROM ucesce;






--SELECT ime,posao,kvalifikacija,datum_zaposlenja FROM radnik WHERE datum_zaposlenja = '1990-12-17';
--SELECT kvalifikacija,plata,ime,broj_odeljenja FROM radnik WHERE broj_odeljenja NOT IN (30);
--SELECT ime,datum_zaposlenja ,plata,premija,broj_odeljenja FROM radnik WHERE plata BETWEEN 1000 AND 2000 ;
--SELECT broj_odeljenja ,ime_odeljenja,mesto FROM odeljenje WHERE mesto LIKE 'P%' OR mesto LIKE 'D%' ;
--SELECT ime,broj_odeljenja,kvalifikacija FROM radnik WHERE broj_odeljenja IN(10,20) AND kvalifikacija = 'VKV'; 
--SELECT posao ,SUM(plata+COALESCE(premija,0)) FROM radnik GROUP BY posao ORDER BY SUM(plata+COALESCE(premija,0)) DESC;
--SELECT MIN(plata),MAX(plata),AVG(plata),COUNT(idbr) FROM radnik GROUP BY broj_odeljenja;
/*SELECT r.ime , r.posao,u.broj_sati 
FROM radnik r 
JOIN ucesce u 
ON r.idbr = u.idbr
WHERE broj_sati < 1500 ;*/
--SELECT ime,posao,plata,COALESCE(premija,0)FROM radnik WHERE broj_odeljenja IN(SELECT broj_odeljenja FROM odeljenje WHERE mesto = 'Novi Beograd' AND posao NOT IN ('prodavac','upravnik') ) ORDER BY premija DESC;

--SelEcT * from radnik ;



