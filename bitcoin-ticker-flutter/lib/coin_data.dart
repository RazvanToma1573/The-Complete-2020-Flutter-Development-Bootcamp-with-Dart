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

const url = 'https://rest.coinapi.io/v1/exchangerate/';
const apiKey = '?apikey=83EF4429-3078-4D1C-B373-7BCABDBCB5D3';

class CoinData {
  Future getCoinData1(int index) async {
    if (index == -1) {
      http.Response response = await http.get('${url}BTC/USD$apiKey');
      String coinData = response.body;
      return jsonDecode(coinData);
    }
    http.Response response =
        await http.get('${url}BTC/${currenciesList[index]}$apiKey');
    String coinData = response.body;
    return jsonDecode(coinData);
  }

  Future getCoinData2(int index) async {
    if (index == -1) {
      http.Response response = await http.get('${url}ETH/USD$apiKey');
      String coinData = response.body;
      return jsonDecode(coinData);
    }
    http.Response response =
        await http.get('${url}ETH/${currenciesList[index]}$apiKey');
    String coinData = response.body;
    return jsonDecode(coinData);
  }

  Future getCoinData3(int index) async {
    if (index == -1) {
      http.Response response = await http.get('${url}LTC/USD$apiKey');
      String coinData = response.body;
      return jsonDecode(coinData);
    }
    http.Response response =
        await http.get('${url}LTC/${currenciesList[index]}$apiKey');
    String coinData = response.body;
    return jsonDecode(coinData);
  }

  String getCoinTitle(int index) {
    return currenciesList[index];
  }
}
