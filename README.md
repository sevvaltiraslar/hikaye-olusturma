# hikaye-olusturma

3 ayrı dart fileın bulunduğu bu uygulamada OOP mantığını kullandım. Uygulamayı kısaca açıklayacak olursam, Ekranda bir hikaye bulunuyor ve kullanıcıya 2 seçim hakkı sunuluyor. Kullanıcının seçimine göre hikaye devam ediyor. En sonunda "Başa Dön" butonu çıkıyor ve hikaye baştan başlıyor. ana_hikaye.dart dosyasında private bir liste kullanıp bu listenin içindeki değerleri hikaye.dart dosyasında ayrı bir class oluşturarak kurucu methodlar ile kullanılmasını sağladım. main.dart dosyasında ise statefulWidgetın içinde Column Widgetını kullanarak FlatButtonları yerleştirdim ve böyle sayfa düzeninide ayarlamış oldum.

ana_hikaye.dart dosyasında bulunan kod bloklarında isteğe göre hikaye ve seçimlerin içerikleri değiştirilebilir. Bu değişimde önemli olan tek şey aşağıda bulunun if else yapılarını değiştirmektir.
