import 'package:dio/dio.dart';

import '../news_app/Model/news_view.dart';

class ApiServer {
  Dio dio = Dio();

  Future<List<Article>> getNews({required String title}) async {
    var url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$title&apiKey=8808ee972f7f42cda5d9fa2657a6f543";
    Response response = await dio.get(url);
    var json = response.data;
    List<Article> articles = [];
    print("========================= ${response.statusCode}");
    for (var item in json["articles"]) {
      articles.add(
        Article(
          title: item["title"],
          description: item["description"],
          urlToImage: item["urlToImage"],
          url: item["url"],
        ),
      );
    }
    return articles;
  }
}
