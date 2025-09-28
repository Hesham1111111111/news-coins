import 'package:flutter/material.dart';
import 'model_navigator.dart';
import 'navigator.dart';

class NavigatorListviwe extends StatelessWidget {
  const NavigatorListviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),
      body: ListView.separated(
        itemCount: 3,
        itemBuilder: (context, index) {
          return NavigatorItem(modelNavigator: navigator[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 30);
        },
      ),
    );
  }
}
