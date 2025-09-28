import '../../news_app/Model/news_view.dart';

class AppState {}

class InitialState extends AppState {}

class SuccessState extends AppState {
  final List<Article> articles;
  final String title;

  SuccessState({required this.title, required this.articles});
}

class LoginState extends AppState {}

class ErrorState extends AppState {
  final String Error;

  ErrorState({required this.Error});
}
