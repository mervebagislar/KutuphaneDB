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
Yay�neviAdi varchar(15) NOT NULL PRIMARY KEY,
Yay�neviAdres varchar(70) NOT NULL,
Yay�neviTel char(11) NOT NULL
)

CREATE TABLE Kitaplar(
Isbn varchar(10) NOT NULL PRIMARY KEY,
KitapAdi varchar(50) NOT NULL,
YayineviAdi varchar(15) FOREIGN KEY REFERENCES Yayinevi(Yay�neviAdi),
YazarTC char(11) FOREIGN KEY REFERENCES Yazarlar(YazarTC)

)

CREATE TABLE Odunc(
OduncTarihi date NOT NULL,
OgrenciNumara varchar(20) FOREIGN KEY REFERENCES Ogrenciler(OgrenciNumara),
Isbn varchar(10) FOREIGN KEY REFERENCES Kitaplar(Isbn)
)

--��RENC� EKLEME
INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Merve Bag��lar','Antalya',05678909090,49237498)

INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Beyza Atay','�stanbul',05678909099,49237418)

INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Emin Mutlu','Antalya',05678709090,49237098)

INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Sude K�rk��','�stanbul',05688609799,99231428)

INSERT INTO Ogrenciler(OgrenciAdi,OgrenciAdres,OgrenciTel,OgrenciNumara)
VALUES ('Ay�e Y�lmaz','Ankara',05388900739,79031528)

SELECT * FROM Ogrenciler
SELECT * FROM Kitaplar
SELECT * FROM Yayinevi
SELECT * FROM Yazarlar
SELECT * FROM Odunc
.
--K�TAP EKLEME

INSERT INTO Kitaplar(KitapAdi,Isbn,YayineviAdi,YazarTC)
VALUES('Su� Ve Ceza' , 1891,'�� Bankas�','12345678901')

INSERT INTO Kitaplar(KitapAdi,Isbn,YayineviAdi,YazarTC)
VALUES('�nce Memed' , 1892,'Yap�kredi','12385670902')

INSERT INTO Kitaplar(KitapAdi,Isbn)
VALUES ('Ate�ten G�mlek',1893)

INSERT INTO Kitaplar(KitapAdi,Isbn,YayineviAdi,YazarTC)
VALUES('1984' ,1894, 'Can','12085650904')

INSERT INTO Kitaplar(KitapAdi,Isbn,YayineviAdi,YazarTC)
VALUES('Ba�lang��' ,1895, 'Alt�n Kitaplar','12080650917')

INSERT INTO Kitaplar(KitapAdi,Isbn)
VALUES ('D�n���m',1896)

INSERT INTO Kitaplar(KitapAdi,Isbn)
VALUES ('Labirent',1897)

INSERT INTO Kitaplar(KitapAdi,Isbn)
VALUES ('Melekler Ve �eytanlar',1898)

--YAYINEV� EKLEME

INSERT INTO Yayinevi(Yay�neviAdi,Yay�neviAdres,Yay�neviTel)
VALUES('�� Bankas�','�stanbul',07859990101)

INSERT INTO Yayinevi(Yay�neviAdi,Yay�neviAdres,Yay�neviTel)
VALUES('Yap�kredi','�stanbul',07959890203)

INSERT INTO Yayinevi(Yay�neviAdi,Yay�neviAdres,Yay�neviTel)
VALUES('Can','Ankara',07959890214)

INSERT INTO Yayinevi(Yay�neviAdi,Yay�neviAdres,Yay�neviTel)
VALUES('Alt�n Kitaplar','�zmir',07989891219)
--
INSERT INTO Yayinevi(Yay�neviAdi,Yay�neviAdres,Yay�neviTel)
VALUES('Mart�','Mersin',07189229121)

INSERT INTO Yayinevi(Yay�neviAdi,Yay�neviAdres,Yay�neviTel)
VALUES('Pena','Adana',07919891233)

INSERT INTO Yayinevi(Yay�neviAdi,Yay�neviAdres,Yay�neviTel)
VALUES('��naralt�','Isparta',01189291219)
--YAZAR EKLEME

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Dostoyevski','12345678901','Rusya')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Ya�ar Kemal','12385670902','Adana')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('George Orwell','12085650904','Hindistan')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Dan Brown','12080650917','ABD')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Orhan Veli','12380600918','Ankara')
--
INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Sabahattin Ali','12310900914','K�rklareli')

INSERT INTO Yazarlar(YazarAdi,YazarTC,YazarAdres)
VALUES('Jack London','12311600922','ABD')


--�D�N� ALMA

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
WHERE KitapAdi='D�n���m'

DELETE Odunc FROM Odunc
INNER JOIN Ogrenciler ON Odunc.OgrenciNumara=Ogrenciler.OgrenciNumara 
where Ogrenciler.OgrenciAdi = 'Merve Bag��lar'
 

DELETE FROM Yazarlar
WHERE YazarAdi='Orhan Veli'

DELETE FROM Yayinevi
WHERE Yay�neviAdi='Pena'

--UPDATE

UPDATE Ogrenciler
SET OgrenciAdi='Fatma Y�lmaz'
WHERE OgrenciAdi='Ay�e Y�lmaz'

--�D�NC ALINAN K�TABI DE���T�R

UPDATE Odunc
SET Isbn=1892
WHERE OgrenciNumara=49237418

--SELECT
--HANG� YAZAR HANG� K�TABI YAZMI�
SELECT KitapAdi, YazarAdi
FROM Kitaplar,Yazarlar
WHERE kitaplar.YazarTC=Yazarlar.YazarTC

--HANG� YAYINEV� HANG� K�TABI YAYINLAMI�
SELECT Yay�neviAdi, KitapAdi
FROM Yayinevi, Kitaplar
WHERE Yayinevi.Yay�neviAdi=Kitaplar.YayineviAdi


--HANG� ��RENC� HANG� K�TABI ALDI

SELECT OgrenciAdi, KitapAdi,OduncTarihi
FROM  Ogrenciler,Kitaplar, Odunc 
WHERE Ogrenciler.OgrenciNumara=Odunc.OgrenciNumara AND Kitaplar.Isbn=Odunc.Isbn


