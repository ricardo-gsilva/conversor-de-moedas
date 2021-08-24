import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHgBrasil {

  var request =
    Uri.parse("https://api.hgbrasil.com/finance?format=json-cors&key=89f29314");

  Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
  }
}