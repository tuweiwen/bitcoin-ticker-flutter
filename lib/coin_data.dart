import 'dart:convert';

import 'package:http/http.dart';

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

class CoinData {
  Future<double> getCoinData() async {
    var result = await get(
      Uri.parse("https://rest.coinapi.io/v1/exchangerate/BTC/USD"),
      headers: {"X-CoinAPI-Key": "62048bf8-2145-4109-a66b-0ea446bc9f2b"},
    );
    if (result.statusCode == 200) {
      return jsonDecode(result.body)["rate"];
    }
    return -1;
  }
}
