class Product {
  final String name;
  final String imageUrl;
  final int price;

  Product({required this.name, required this.imageUrl, required this.price});

  factory Product.fromJeson({required Map<String, dynamic> json}) {
    return Product(
      name: json['title'],
      imageUrl: json['images'][0],
      price: json["price"],
    );
  }
}
