import 'package:newsa/models/article.dart';

class ArticleResponse {
  final List<ArticleModel> articles;

  ArticleResponse(this.articles);

  ArticleResponse.fromJson(Map<String, dynamic> json)
      : articles = (json["articles"] as List)
            .map((i) => new ArticleModel.fromJson(i))
            .toList();
}
