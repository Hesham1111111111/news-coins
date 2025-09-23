import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import '../../../coins/manger/con_state.dart';
import '../../manger/app_cubit.dart';
import '../../manger/app_stste.dart';
import 'artcile_widget.dart';
import '';

class ListViwe_artcile extends StatelessWidget {
  ListViwe_artcile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state is SuccessState) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.articles.length,
              itemBuilder: (context, index) {
                return ArtcileWidget(article: state.articles[index]);
              },
            ),
          );
        } else if (state is ErrorState) {
          return Text("Error ${Error}");
        } else {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        color: Colors.white,
                        margin: const EdgeInsets.only(bottom: 10),
                      ),
                      Container(
                        height: 20,
                        width: double.infinity,
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                      ),
                      Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
