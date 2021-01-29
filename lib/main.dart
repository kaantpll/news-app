import 'package:flutter/material.dart';
import 'package:newsa/screen/home_page.dart';
import 'package:newsa/screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
