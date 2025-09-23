import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/Style.dart';
import '../model/features_coins.dart';

class ArticlesCoins extends StatelessWidget {
  const ArticlesCoins({super.key, required this.coins});

  final Coin coins;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: double.infinity,
          height: 110,
          color: const Color(0xFF546E7A),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.network(coins.image, width: 60, height: 60),
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(coins.name, style: Stayle.stayle3),
                    Text(coins.symbol, style: Stayle.stayle4),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(coins.current_price, style: Stayle.stayle3),
                    Text(
                      coins.price_change,
                      style: Stayle.stayle4.copyWith(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
