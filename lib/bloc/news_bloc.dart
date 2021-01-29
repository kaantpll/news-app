import 'package:newsa/models/article.dart';
import 'package:newsa/models/article_response.dart';
import 'package:newsa/service/repository.dart';
import 'package:rxdart/rxdart.dart';

class GetTopHeadLines {
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<ArticleResponse> _subject =
      BehaviorSubject<ArticleResponse>();

  getHeadLines() async {
    ArticleResponse response = await _repository.getTopHeadLines();
    _subject.sink.add(response);
  }

  @override
  void dispose() {
    _subject.close();
  }

  BehaviorSubject<ArticleResponse> get subject => _subject;
}

final getTopHeadLinesBloc = GetTopHeadLines();
