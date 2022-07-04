import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse("https://api.indosiana.com/api/articles/id_artikel");

  var res = await http.get(url);

  print(res);
}
