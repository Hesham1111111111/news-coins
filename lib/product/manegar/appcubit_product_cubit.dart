import 'package:bloc/bloc.dart';
import 'package:file1/network/api_product.dart';
import 'package:meta/meta.dart';
import '../model/product_model.dart';

part 'appcubit_product_state.dart';

class ProductCubit extends Cubit<AppcubitProductState> {
  ProductCubit() : super(ProductInitial());
  ApiProduct apiProduct = ApiProduct();
  List<Product> products = [];

  getProduct() async {
    emit(Productloading());
    try {
      products = await apiProduct.getProduct();
      emit(ProductSuccess(productss: products));
    } catch (e) {
      emit(ProductError(errormaseg: e.toString()));
    }
  }
}
