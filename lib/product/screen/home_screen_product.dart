import 'package:file1/style/Style.dart';
import 'package:flutter/material.dart';

import '../widget/product_listview.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text("Product ", style: Stayle.stayle1),
        backgroundColor: Color(0xFF0D47A1),
      ),
      body: ProductListview(),
    );
  }
}
