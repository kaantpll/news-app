import 'package:dio/dio.dart';
import 'package:newsa/models/article_response.dart';
import 'package:newsa/models/source.dart';

class NewsRepository {
  static String mainUrl = "http://newsapi.org/v2/";
  final String apiKey = "74e936c89a06465cbd47bfc7741de788";

  final Dio _dio = Dio();

  var getSourceUrl = "$mainUrl/sources";
  var getTopHeadlinesUrl = "$mainUrl/top-headlines";

  Future<ArticleResponse> getTopHeadLines() async {
    var params = {
      "apiKey": apiKey,
      "country": "tr",
      "category": "entertainment",
    };

    try {
      Response response =
          await _dio.get(getTopHeadlinesUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<ArticleResponse> getScienceNews() async {
    var params = {
      "apiKey": apiKey,
      "country": "tr",
      "category": "science",
    };

    try {
      Response response =
          await _dio.get(getTopHeadlinesUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
