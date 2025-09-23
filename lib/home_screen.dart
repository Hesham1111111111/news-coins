import 'package:file1/news_app/Screens/news.dart';
import 'package:flutter/material.dart';
import 'coins/screens/home_scren.dart';

class HomeScerrn extends StatefulWidget {
  HomeScerrn({super.key});

  @override
  State<HomeScerrn> createState() => _HomeScerrnState();
}

class _HomeScerrnState extends State<HomeScerrn> {
  int select = 0;
  List<Widget> Body = [News(), Coins()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: select,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        onTap: (int index) {
          setState(() {
            select = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "News ", icon: Icon(Icons.newspaper)),

          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin),
            label: "Coins",
          ),
        ],
      ),

      body: Body[select],
    );
  }
}
