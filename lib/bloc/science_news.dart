import 'package:newsa/models/article_response.dart';
import 'package:newsa/service/repository.dart';
import 'package:rxdart/rxdart.dart';

class GetScienceNewsBloc {
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<ArticleResponse> _subject =
      BehaviorSubject<ArticleResponse>();

  BehaviorSubject<ArticleResponse> get subject => _subject;

  getScience() async {
    ArticleResponse response = await _repository.getScienceNews();
    _subject.sink.add(response);
  }

  @override
  void dispose() {
    _subject.close();
  }
}

final scienceBloc = GetScienceNewsBloc();
