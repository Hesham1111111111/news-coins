class Article {
  final String title;

  final String? description;

  final String? urlToImage;
  final String url;

  Article({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.url,
  });

  factory Article.myJson({required Map<String, dynamic> json}) {
    return Article(
      title: json["title"],
      description: json["description"],
      urlToImage: json["urlToImage"],
      url: json["url"],
    );
  }
}
