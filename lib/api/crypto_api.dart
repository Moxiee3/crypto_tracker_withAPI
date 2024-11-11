import 'dart:convert';
import 'package:crypto_app/model/coin.dart';
import 'package:http/http.dart' as http;

class CryptoApi {
  static String baseURL = 'https://api.coinranking.com/v2';

  static const Map<String, String> headers = {
    'X-RapidAPI-Key': 'YOUR_RAPID_API_KEY',
    'X-RapidAPI-Host': 'YOUR_RAPID_API_HOST'
  };

  static Future<List<Coin>> getCoins({required int limit}) async {
    List<Coin> coinList = [];

    var url = Uri.parse("$baseURL/coins?limit=$limit");
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      var coins = jsonDecode(response.body)['data']['coins'];
      for (var coin in coins) {
        coinList.add(Coin.fromJson(coin));
      }
    }
    return coinList;
  }
}
