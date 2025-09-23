import 'package:file1/style/Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../network/apiserver_coins.dart';
import '../manger/coin_cubit.dart';
import '../manger/con_state.dart';
import '../model/features_coins.dart';
import '../widget/articles.dart';

class Coins extends StatelessWidget {
  Coins({super.key});

  CoinServers coinServers = CoinServers();
  List<Coin> coins = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Crypto Tracker ", style: Stayle.stayle1),
      ),
      body: BlocBuilder<CoinCubit, ConState>(
        builder: (context, state) {
          if (state is SuccessStateCoins) {
            return ListView.builder(
              itemCount: state.coins.length,
              itemBuilder: (context, index) {
                return ArticlesCoins(coins: state.coins[index]);
              },
            );
          } else if (state is ErrorStateCoins) {
            return Text("Error ", style: Stayle.stayle3);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
