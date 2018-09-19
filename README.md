Öncelikle 5 il seçildi. Bu illerin city_id'leri ilbulucu.php dosyası yardımıyla çekilen datadan manuel olarak bakarak yazıldı.
Weather veritabanı açıldı, öncelikle cities tablosuna şehir adları ve id'leri eklendi.
Sonrasında period tablosuna rapor iştenecek dönemler (anlık, bir gümlük,üç günlük, beş günlük) eklendi.
index.php'ye il ve periyod seçimi için form eklendi.
submit edilen şehir adı kullanılarak curl ile json datası çekildi, sonra object olarak decode edildi.
forecasts adı altında kullanıcıya gösterilecek verileri içeren bir tablo oluşturuldu. 
bu tabloya kullanıcıya gösterileek veriler bir sefere mahsus olmak üzere insert edildi, sonrasında ilgili kod pasifleştirildi.
curl'den ilgili şehir için gelen ilk tarih datası ile database'deki tarih datası kontrol edildi. eğer eşitlerse datnın doğrudan database'den çekilmesi ve flexbox olarak ekrana verilmesi sağlandı.
eğer eşit değilse datanın curl'den gelen object'den alınması sağlandı ve database de rapor istenen şehir için update edildi.
