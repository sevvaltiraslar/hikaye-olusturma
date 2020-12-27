import 'hikaye.dart';

class AnaHikaye {
  List<Hikaye> _hikayeVerisi = [
    Hikaye(
      hikayeBasligi: 'Hikaye 0',
      secim1: 'Seçim 1',
      secim2: 'Seçim 2',
    ),
    Hikaye(
      hikayeBasligi: 'Hikaye 1',
      secim1: 'Seçim 1',
      secim2: 'Seçim 2',
    ),
    Hikaye(
      hikayeBasligi: 'Hikaye 2',
      secim1: 'Seçim 1',
      secim2: 'Seçim 2',
    ),
    Hikaye(
      hikayeBasligi: 'Hikaye 3',
      secim1: 'Seçim 1',
      secim2: 'Seçim 2',
    ),
    Hikaye(
      hikayeBasligi: 'Hikaye 4',
      secim1: 'Seçim 1',
      secim2: 'Seçim 2',
    ),
    Hikaye(
      hikayeBasligi: 'Hikaye 5',
      secim1: 'Seçim 1',
      secim2: 'Seçim 2',
    ),
    Hikaye(
      hikayeBasligi: 'Hikaye 6',
      secim1: 'Başa Dön',
      secim2: '',
    ),
    Hikaye(
      hikayeBasligi: 'Hikaye 7',
      secim1: 'Başa Dön',
      secim2: '',
    ),
  ];

  String getHikaye() {
    return _hikayeVerisi[_hikayeNumarasi].hikayeBasligi;
  }

  String getSecim1() {
    return _hikayeVerisi[_hikayeNumarasi].secim1;
  }

  String getSecim2() {
    return _hikayeVerisi[_hikayeNumarasi].secim2;
  }

  int _hikayeNumarasi = 0;

  void siradakiHikaye(int kullanici) {
    if (kullanici == 1 && _hikayeNumarasi == 0) {
      _hikayeNumarasi = 1;
    } else if (kullanici == 2 && _hikayeNumarasi == 0) {
      _hikayeNumarasi = 2;
    } else if (kullanici == 1 && _hikayeNumarasi == 1) {
      _hikayeNumarasi = 3;
    } else if (kullanici == 2 && _hikayeNumarasi == 1) {
      _hikayeNumarasi = 4;
    } else if (kullanici == 1 && _hikayeNumarasi == 2) {
      _hikayeNumarasi = 1;
    } else if (kullanici == 2 && _hikayeNumarasi == 2) {
      _hikayeNumarasi = 5;
    } else if (kullanici == 1 && _hikayeNumarasi == 3) {
      _hikayeNumarasi = 6;
    } else if (kullanici == 2 && _hikayeNumarasi == 3) {
      _hikayeNumarasi = 7;
    } else if (kullanici == 1 && _hikayeNumarasi == 4) {
      _hikayeNumarasi = 7;
    } else if (kullanici == 2 && _hikayeNumarasi == 4) {
      _hikayeNumarasi = 6;
    } else if (kullanici == 1 && _hikayeNumarasi == 5) {
      _hikayeNumarasi = 4;
    } else if (kullanici == 2 && _hikayeNumarasi == 5) {
      _hikayeNumarasi = 7;
    } else if (_hikayeNumarasi == 6 || _hikayeNumarasi == 7) {
      yeniden();
    }
  }

  void yeniden() {
    _hikayeNumarasi = 0;
  }

  bool butonGorunuyor() {
    if (_hikayeNumarasi == 0 ||
        _hikayeNumarasi == 1 ||
        _hikayeNumarasi == 2 ||
        _hikayeNumarasi == 3 ||
        _hikayeNumarasi == 4 ||
        _hikayeNumarasi == 5) {
      return true;
    } else {
      return false;
    }
  }
}
