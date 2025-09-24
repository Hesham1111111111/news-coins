import 'package:file1/style/Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
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
          } else if (state is InitialStateCoins) {
            return ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: const ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                    ),
                    title: SizedBox(
                      height: 10,
                      width: 100,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                    subtitle: SizedBox(
                      height: 10,
                      width: 50,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Text("Error ", style: Stayle.stayle3);
          }
        },
      ),
    );
  }
}
