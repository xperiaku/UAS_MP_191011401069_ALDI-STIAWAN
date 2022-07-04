import 'package:artikel/models/artikel_model.dart';

import 'package:dio/dio.dart';

class ArtikelService {
  Future<artikel> tampilkanartikel() async {
    var response =
        await Dio().get('https://api.indosiana.com/api/articles/id_artikel');
    return artikel.fromJson(response.data);
  }

  Future<artikel> tampilkandetail({String? key}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/id_artikel/$key');
    return artikel.fromJson(response.data);
  }
}
