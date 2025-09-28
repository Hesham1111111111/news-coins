part of 'appcubit_product_cubit.dart';

@immutable
sealed class AppcubitProductState {}

class ProductInitial extends AppcubitProductState {}

class ProductSuccess extends AppcubitProductState {
  final List<Product> productss;

  ProductSuccess({required this.productss});
}

class ProductError extends AppcubitProductState {
  final String errormaseg;

  ProductError({required this.errormaseg});
}

class Productloading extends AppcubitProductState {}
