import 'package:file1/news_app/Screens/news.dart';
import 'package:file1/product/screen/home_screen_product.dart';
import 'package:flutter/material.dart';
import '../coins/screens/home_scren.dart';
import 'navigator_listviwe.dart';

class HomeScerrn extends StatefulWidget {
  HomeScerrn({super.key});

  @override
  State<HomeScerrn> createState() => _HomeScerrnState();
}

class _HomeScerrnState extends State<HomeScerrn> {
  int select = 0;
  List<Widget> Body = [News(), Coins(), ProductCard()];

  @override
  Widget build(BuildContext context) {
    return NavigatorListviwe();
  }
}
