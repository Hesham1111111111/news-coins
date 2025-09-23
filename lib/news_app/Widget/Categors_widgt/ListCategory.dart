import 'package:flutter/material.dart';

import '../../Model/Category.dart';
import 'Category.items.dart';

class Listcategory extends StatelessWidget {
  const Listcategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (context, index) {
            return CatogoryItems(category: categorys[index]);
          },
        ),
      ),
    );
  }
}
