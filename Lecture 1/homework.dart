// Benim bir halı saham var 100 kisi kapasiteli
// Saat 10 da 20 kisilik bir musteri1 mac yapacak ve 20 kisi kesin gelecek
// Saat 10 da musteri2 gelip bana 50 kisilik yer ayirtacak
// Bu islem sonrasinda benim hali saha kapasitem kac kalmistir

// Hint
// int sum = musteri1 + musteri2
// print total(constant) - sum

void main() {
  const int halisahaKapasitesi = 100;
  const int musteri1 = 20;
  const int musteri2 = 50;

  int toplam = musteri1 + musteri2;
  print("Toplam kapasite: $halisahaKapasitesi");
  print("Toplam gelen kişi sayısı: $toplam");
  print("Kalan: ${halisahaKapasitesi - toplam}");
}