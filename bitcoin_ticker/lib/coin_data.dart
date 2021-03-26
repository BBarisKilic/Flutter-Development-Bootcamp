import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate/';
const apiKey = 'ENTER YOUR OWN KEY HERE!';

class CoinData {
  Future<dynamic> getCoinData({String cryptoType, String currencyType}) async {
    Uri url = Uri.parse('$coinAPIURL$cryptoType/$currencyType?apikey=$apiKey');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String bodyData = response.body;
      return jsonDecode(bodyData)['rate'].toInt();
    } else {
      print(response.statusCode);
    }
  }
}
