class NewsModel {
  String title;
  String description;
  String urlToImage;

  NewsModel(
      {required this.title,
      required this.description,
      required this.urlToImage});

  factory NewsModel.fromJSON(Map map) {
    return NewsModel(
      title: map['title'],
      description: map['description'],
      urlToImage: map['urlToImage'],
    );
  }
}
