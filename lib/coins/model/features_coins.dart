class Coin {
  final String name;

  final String symbol;

  final String image;

  final String current_price;

  final String price_change;

  Coin({
    required this.name,
    required this.symbol,
    required this.image,
    required this.current_price,
    required this.price_change,
  });
  factory Coin.myJeso({required Map<String , dynamic> json}){
    return Coin(
      name: json["name"],
      symbol: json["symbol"],
      image: json["image"],
      current_price: json["current_price"].toString(),
      price_change: json["atl"].toString(),
    );
  }
}
