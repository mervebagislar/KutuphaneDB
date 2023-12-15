Kütüphanede kitap ödünç alma işlemleri için yaptığım bir veri tabanı projesi.Proje MSSQL ile yapıldı.

Kütüphane veri tabanı senaryosu: Bir kütüphanede kitaplar, yazarlar, yayınevleri ve öğrenciler 
arasındaki ilişkileri izlemek ve bilgileri saklamak amacıyla bir veri tabanı talep edilmektedir. Kitaplar 
tablosunda her kitabın eşsiz bir ISBN numarası ve başlığı bulunmakta, ayrıca kitabın yazarının T.C. kimlik 
numarası ve kitabın basıldığı yayınevinin adı da kaydedilmektedir. Yazarlar tablosunda her yazarın eşsiz 
bir T.C. kimlik numarası, adı ve adresi yer alırken, yayınevleri tablosunda her bir yayınevinin eşsiz adı, 
adresi ve birden fazla telefon numarası saklanmaktadır. Öğrenciler tablosunda ise her öğrencinin 
numarası, adı, adresi ve birden fazla telefon numarası bilgileri tutulmaktadır. Kitap ödünç alma 
işlemleri için özel bir tablo oluşturduk ve burada öğrencinin numarası, ödünç alınan kitabın ISBN 
numarası ve ödünç alma tarihi bilgilerini kaydediyoruz. 
Amaç: Bu veri tabanı yapısı sayesinde, kitapların yazarları, yayınevleri ve öğrenciler arasındaki ilişkileri 
yönetip izleyerek verileri bütünlük içinde saklayabilir ve etkili bir şekilde kullanabiliriz.

Veri tabanını oluşturuken ilk yapmamız gereken şey ER diyagramı oluşturup sonrasında ilişkileri tablo haline dökmek.
Foreign key ve primary keyleri doğru şekilde belirledikten sonra tabloları oluşturup sql sorguları yapabiliriz.



