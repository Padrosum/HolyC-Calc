U0 Hesapla() {
  I64 n1, n2, secim;
  F64 sonuc;

  while (TRUE) {
    DocClear; // Ekranı temizle
    "$FG,PURPLE$$TX+CX, \"--- PADROS CALCULATOR ---\"$$FG$\n\n";
    "$FG,LTBLUE$1.$FG$ Toplama  $FG,LTBLUE$2.$FG$ Cikarma\n";
    "$FG,LTBLUE$3.$FG$ Carpma   $FG,LTBLUE$4.$FG$ Bolme\n";
    "$FG,RED$0.$FG$ Cikis\n\n";

    "Seciminiz: ";
    secim = GetI64;

    if (secim == 0) break;
    if (secim < 1 || secim > 4) {
      Beep(60); // Hata sesi (Düşük frekans)
      continue;
    }

    "Birinci sayi: "; n1 = GetI64;
    "Ikinci sayi: ";  n2 = GetI64;

    Beep(80); // İşlem yapılıyor sesi

    "\n$FG,GREEN$----------------------$FG$\n";
    switch (secim) {
      case 1: "Sonuc: $FG,YELLOW$%d$FG$\n", n1 + n2; break;
      case 2: "Sonuc: $FG,YELLOW$%d$FG$\n", n1 - n2; break;
      case 3: "Sonuc: $FG,YELLOW$%d$FG$\n", n1 * n2; break;
      case 4:
        if (n2 != 0) "Sonuc: $FG,YELLOW$%f$FG$\n", ToF64(n1) / n2;
        else "$FG,RED$HATA: Sifira bolunemez!$FG$\n";
        break;
    }
    "$FG,GREEN$----------------------$FG$\n";
    
    "\nDevam etmek icin bir tusa basin...";
    GetChar; // Kullanıcı bir tuşa basana kadar sonucu ekranda tutar
  }
}

Hesapla;
