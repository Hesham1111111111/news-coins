import 'package:dio/dio.dart';
import 'package:file1/coins/model/features_coins.dart';

class CoinServers {
  Dio dio = Dio();

  Future<List<Coin>> getCoin() async {
    var url =
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=50&page=1&price_change_percentage=24h";

    Response response = await dio.get(url);

    List<Coin> coins = [];

    for (var item in response.data) {
      coins.add(
        Coin(
          name: item["name"],
          symbol: item["symbol"],
          image: item["image"],
          current_price: item["current_price"].toString(),
          price_change: item["atl"].toString(),
        ),
      );
    }

    return coins;
  }
}
