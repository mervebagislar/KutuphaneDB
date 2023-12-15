CREATE TABLE Ogrenciler(
OgrenciNumara varchar(20) NOT NULL PRIMARY KEY,
OgrenciTel char(11) NOT NULL,
OgrenciAdi varchar(20) NOT NULL,
OgrenciAdres varchar(100) NOT NULL

)

CREATE TABLE Yazarlar(
YazarTC char(11) NOT NULL PRIMARY KEY,
YazarAdi varchar(20) NOT NULL,
YazarAdres varchar(100) NOT NULL

)

CREATE TABLE Yayinevi(
YayýneviAdi varchar(15) NOT NULL PRIMARY KEY,
YayýneviAdres varchar(70) NOT NULL,
YayýneviTel char(11) NOT NULL
)

CREATE TABLE Kitaplar(
Isbn varchar(10) NOT NULL PRIMARY KEY,
KitapAdi varchar(50) NOT NULL,
YayineviAdi varchar(15) FOREIGN KEY REFERENCES Yayinevi(YayýneviAdi),
YazarTC char(11) FOREIGN KEY REFERENCES Yazarlar(YazarTC)

)

CREATE TABLE Odunc(
OduncTarihi date NOT NULL,
OgrenciNumara varchar(20) FOREIGN KEY REFERENCES Ogrenciler(OgrenciNumara),
Isbn varchar(10) FOREIGN KEY REFERENCES Kitaplar(Isbn)
)

--ÖÐRENCÝ EKLEME
INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Merve Bagýþlar','Antalya',05678909090,49237498)

INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Beyza Atay','Ýstanbul',05678909099,49237418)

INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Emin Mutlu','Antalya',05678709090,49237098)

INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Sude Kürkçü','Ýstanbul',05688609799,99231428)

INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Ayþe Yýlmaz','Ankara',05388900739,79031528)

SELECT * FROM Ogrenciler
SELECT * FROM Kitaplar
SELECT * FROM Yayinevi
SELECT * FROM Yazarlar
SELECT * FROM Odunc
.
--KÝTAP EKLEME

INSERT INTO Kitaplar(KitapAdi,Isbn,YayineviAdi,YazarTC)
VALUES('Suç Ve Ceza' , 1891,'Ýþ Bankasý','12345678901')

INSERT INTO Kitaplar(KitapAdi,Isbn,YayineviAdi,YazarTC)
VALUES('Ýnce Memed' , 1892,'Yapýkredi','12385670902')

INSERT INTO Kitaplar(KitapAdi,Isbn)
VALUES ('Ateþten Gömlek',1893)

INSERT INTO Kitaplar(KitapAdi,Isbn,YayineviAdi,YazarTC)
VALUES('1984' ,1894, 'Can','12085650904')

INSERT INTO Kitaplar(KitapAdi,Isbn,YayineviAdi,YazarTC)
VALUES('Baþlangýç' ,1895, 'Altýn Kitaplar','12080650917')

INSERT INTO Kitaplar(KitapAdi,Isbn)
VALUES ('Dönüþüm',1896)

INSERT INTO Kitaplar(KitapAdi,Isbn)
VALUES ('Labirent',1897)

INSERT INTO Kitaplar(KitapAdi,Isbn)
VALUES ('Melekler Ve Þeytanlar',1898)

--YAYINEVÝ EKLEME

INSERT INTO Yayinevi(YayýneviAdi,YayýneviAdres,YayýneviTel)
VALUES('Ýþ Bankasý','Ýstanbul',07859990101)

INSERT INTO Yayinevi(YayýneviAdi,YayýneviAdres,YayýneviTel)
VALUES('Yapýkredi','Ýstanbul',07959890203)

INSERT INTO Yayinevi(YayýneviAdi,YayýneviAdres,YayýneviTel)
VALUES('Can','Ankara',07959890214)

INSERT INTO Yayinevi(YayýneviAdi,YayýneviAdres,YayýneviTel)
VALUES('Altýn Kitaplar','Ýzmir',07989891219)
--
INSERT INTO Yayinevi(YayýneviAdi,YayýneviAdres,YayýneviTel)
VALUES('Martý','Mersin',07189229121)

INSERT INTO Yayinevi(YayýneviAdi,YayýneviAdres,YayýneviTel)
VALUES('Pena','Adana',07919891233)

INSERT INTO Yayinevi(YayýneviAdi,YayýneviAdres,YayýneviTel)
VALUES('Çýnaraltý','Isparta',01189291219)
--YAZAR EKLEME

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Dostoyevski','12345678901','Rusya')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Yaþar Kemal','12385670902','Adana')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('George Orwell','12085650904','Hindistan')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Dan Brown','12080650917','ABD')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Orhan Veli','12380600918','Ankara')
--
INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Sabahattin Ali','12310900914','Kýrklareli')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Jack London','12311600922','ABD')


--ÖDÜNÇ ALMA

INSERT INTO Odunc(OduncTarihi,Isbn,OgrenciNumara)
VALUES('2023-10-26',1891,49237418)

INSERT INTO Odunc(OduncTarihi,Isbn,OgrenciNumara)
VALUES('2023-11-12',1892,49237498)

INSERT INTO Odunc(OduncTarihi,Isbn,OgrenciNumara)
VALUES('2023-09-19',1893,79031528)

SELECT * FROM Odunc



--DELETE
DELETE FROM Ogrenciler
Where OgrenciAdi='Emin Mutlu'

DELETE FROM Odunc
Where OgrenciNumara=79031528 --!

DELETE FROM Kitaplar
WHERE KitapAdi='Dönüþüm'

DELETE Odunc FROM Odunc
INNER JOIN Ogrenciler ON Odunc.OgrenciNumara=Ogrenciler.OgrenciNumara 
where Ogrenciler.OgrenciAdi = 'Merve Bagýþlar'
 

DELETE FROM Yazarlar
WHERE YazarAdi='Orhan Veli'

DELETE FROM Yayinevi
WHERE YayýneviAdi='Pena'

--UPDATE

UPDATE Ogrenciler
SET OgrenciAdi='Fatma Yýlmaz'
WHERE OgrenciAdi='Ayþe Yýlmaz'

--ÖDÜNC ALINAN KÝTABI DEÐÝÞTÝR

UPDATE Odunc
SET Isbn=1892
WHERE OgrenciNumara=49237418

--SELECT
--HANGÝ YAZAR HANGÝ KÝTABI YAZMIÞ
SELECT KitapAdi, YazarAdi
FROM Kitaplar,Yazarlar
WHERE kitaplar.YazarTC=Yazarlar.YazarTC

--HANGÝ YAYINEVÝ HANGÝ KÝTABI YAYINLAMIÞ
SELECT YayýneviAdi, KitapAdi
FROM Yayinevi, Kitaplar
WHERE Yayinevi.YayýneviAdi=Kitaplar.YayineviAdi


--HANGÝ ÖÐRENCÝ HANGÝ KÝTABI ALDI

SELECT OgrenciAdi, KitapAdi,OduncTarihi
FROM  Ogrenciler,Kitaplar, Odunc 
WHERE Ogrenciler.OgrenciNumara=Odunc.OgrenciNumara AND Kitaplar.Isbn=Odunc.Isbn


