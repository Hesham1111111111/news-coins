import 'package:file1/product/widget/product_card.dart';
import 'package:file1/style/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manegar/appcubit_product_cubit.dart';

class ProductListview extends StatelessWidget {
  ProductListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, AppcubitProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          return ListView.builder(
            itemCount: state.productss.length,
            itemBuilder: (context, index) {
              return ProductCard1(product: state.productss[index]);
            },
          );
        } else if (state is ProductError) {
          return Center(
            child: Text("${state.errormaseg}", style: Stayle.stayle2),
          );
        } else {
          return Center(child: CupertinoActivityIndicator());
        }
      },
    );
  }
}
