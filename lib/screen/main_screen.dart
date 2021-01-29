import 'package:flutter/material.dart';
import 'package:newsa/screen/home_page.dart';
import 'package:newsa/screen/science_news.dart';

class MainScreen extends StatelessWidget {
  List<String> list = ["Kaan", "Topal", "Wqrrqw", "235252"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("News"),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "Son Dakika Haberleri",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            child: HomePage(),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Bilim Haberleri",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          SciencePage(),
        ],
      ),
    );
  }
}
