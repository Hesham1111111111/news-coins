
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../network/apiserver_newws.dart';
import '../Model/news_view.dart';
import 'app_stste.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());

  ApiServer apiServer = ApiServer();
  List<Article> newarticles = [];
  String selectTitle ="General";

  getNews({required String Category }) async {
    try {
      newarticles = await apiServer.getNews(title:Category);
      selectTitle = Category;
      emit(SuccessState(articles: newarticles));
    } catch (e) {
      emit(ErrorState( Error: e.toString()));
      // TODO
    }
  }
}

