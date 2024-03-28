


class ArticleModel {
  final String? source;
  final String? author;
  final String title;
  final String? description;
  final String? url;
  final String? urlToImage ;
  final String? publishedAt;
  final String? content;

  ArticleModel({
     this.source,
    required this.author,
    required this.title,
     this.description,
     this.url,
    required this.urlToImage,
     this.publishedAt,
     this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      source: json['source']['id'],
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
// DateTime.parse(json['publishedAt'])