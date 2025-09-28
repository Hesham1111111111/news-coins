import 'package:dio/dio.dart';
import 'package:file1/product/model/product_model.dart';

class ApiProduct {
  Dio dio = Dio();

  Future<List<Product>> getProduct() async {
    List<Product> product = [];

    var url = "https://api.escuelajs.co/api/v1/products";

    Response response = await dio.get(url);
    List<dynamic> json = response.data;
    for (var item in json) {
      product.add(Product.fromJeson(json: item));
    }

    return product;
  }
}
