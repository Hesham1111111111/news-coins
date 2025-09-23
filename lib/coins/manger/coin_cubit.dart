import 'package:bloc/bloc.dart';
import 'package:file1/coins/manger/con_state.dart';
import '../../network/apiserver_coins.dart';
import '../model/features_coins.dart';

class CoinCubit extends Cubit<ConState> {
  CoinCubit() : super(InitialStateCoins());
  CoinServers coinServers = CoinServers();
  List<Coin> newcons = [];

  getCoins() async {
    try {
      newcons = (await coinServers.getCoin());
      emit(SuccessStateCoins(coins: newcons));
    } catch (error) {
      emit(ErrorStateCoins(Error: "${error}"));
    }
  }
}
