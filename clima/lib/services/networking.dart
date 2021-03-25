import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  final String adress;

  Networking(this.adress);

  Future getWeatherData() async {
    Uri url = Uri.parse(adress);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
