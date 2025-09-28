import 'package:file1/coins/manger/coin_cubit.dart';
import 'package:file1/product/manegar/appcubit_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_app/home_screen.dart';
import 'news_app/manger/app_cubit.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit()..getNews(Category: 'General'),
        ),
        BlocProvider(create: (context) => CoinCubit()..getCoins()),

        BlocProvider(create: (context) => ProductCubit()..getProduct()),
      ],
      child: MaterialApp(home: HomeScerrn()),
    );
  }
}
