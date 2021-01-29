import 'package:flutter/material.dart';
import 'package:newsa/bloc/science_news.dart';
import 'package:newsa/models/article.dart';
import 'package:newsa/models/article_response.dart';

class SciencePage extends StatefulWidget {
  SciencePage({Key key}) : super(key: key);

  @override
  _SciencePageState createState() => _SciencePageState();
}

class _SciencePageState extends State<SciencePage> {
  @override
  void initState() {
    super.initState();
    scienceBloc.getScience();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ArticleResponse>(
      stream: scienceBloc.subject.stream,
      builder: (context, AsyncSnapshot<ArticleResponse> snapshot) {
        if (snapshot.hasData) {
          return _buildHeadLines(snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _buildHeadLines(ArticleResponse data) {
    List<ArticleModel> articles = data.articles;

    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    articles[index].img,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 150,
                    child: Text(
                      articles[index].title,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ));
        });
  }
}
