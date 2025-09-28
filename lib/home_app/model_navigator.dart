import 'package:file1/coins/screens/home_scren.dart';
import 'package:file1/product/screen/home_screen_product.dart';
import 'package:flutter/cupertino.dart';

import '../news_app/Screens/news.dart';

class ModelNavigator {
  final String title;

  final String image;

  final Widget widget;

  ModelNavigator({
    required this.title,
    required this.image,
    required this.widget,
  });
}

List<ModelNavigator> navigator = [
  ModelNavigator(
    title: "News",
    image: "https://images.pexels.com/photos/3393375/pexels-photo-3393375.jpeg",
    widget: News(),
  ),
  ModelNavigator(
    title: "Coins",
    image: "https://images.pexels.com/photos/6765362/pexels-photo-6765362.jpeg",
    widget: Coins(),
  ),
  ModelNavigator(
    title: "Product",
    image: "https://images.pexels.com/photos/6214388/pexels-photo-6214388.jpeg",
    widget: ProductCard(),
  ),
];
