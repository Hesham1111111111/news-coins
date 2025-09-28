import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../style/Style.dart';
import '../Widget/Categors_widgt/ListCategory.dart';
import '../Widget/news_view/list_viwe.dart';
import '../manger/app_cubit.dart';
import '../manger/app_stste.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "News ",
            style: Stayle.stayle1.copyWith(color: Colors.black54),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Listcategory()),
          SliverToBoxAdapter(
            child: BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: Text(
                    "${context.read<AppCubit>().selectTitle} News ",
                    style: Stayle.stayle2.copyWith(
                      fontSize: 35,
                      color: Colors.black87,
                    ),
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(child: ListViwe_artcile()),
        ],
      ),
    );
  }
}
