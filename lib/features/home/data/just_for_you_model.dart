// class JustForYouModel {
//   final String title, author;

//   JustForYouModel({
//     required this.title,
//     required this.author,
//   });
// }





class JustForYouModel {
  final String? source;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage ;
  final DateTime publishedAt;
  final String? content;

  JustForYouModel({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory JustForYouModel.fromJson(Map<String, dynamic> json) {
    return JustForYouModel(
      source: json['source']['id'],
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content'],
    );
  }
}
