import '../model/features_coins.dart';

class ConState {}

class InitialStateCoins extends ConState {

}

class SuccessStateCoins extends ConState {
  final List<Coin> coins;

  SuccessStateCoins({required this.coins});
}
class Shimmerr extends ConState{}

class LoginStateCoins extends ConState {}

class ErrorStateCoins extends ConState {
  final String Error;

  ErrorStateCoins({required this.Error});
}
