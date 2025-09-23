import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../style/Style.dart';
import '../../Model/Category.dart';
import '../../manger/app_cubit.dart';

class CatogoryItems extends StatelessWidget {
  CatogoryItems({super.key, required this.category});

  Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<AppCubit>().getNews(Category: category.name);
      },
      child: CircleAvatar(
        backgroundImage: NetworkImage(category.imge),
        backgroundColor: Colors.teal,
        radius: 80,
        child: Text(category.name, style: Stayle.stayle1),
      ),
    );
  }
}
