import 'package:artikel/models/artikel_model.dart';

import 'package:artikel/services/artikel_services.dart';
import 'package:flutter/cupertino.dart';

class ArtikelProvider extends ChangeNotifier {
  ArtikelProvider() {
    showListArtikel();
  }

  final ArtikelService _artikelService = ArtikelService();
  artikel Artikel = artikel();

  showListArtikel() async {
    Artikel = await _artikelService.tampilkanartikel();
  }

  ShowDetailArtikel({String? inputKey}) async {
    Artikel = await _artikelService.tampilkandetail(key: inputKey);
    notifyListeners();
  }
}
