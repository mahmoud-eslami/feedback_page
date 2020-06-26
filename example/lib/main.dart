import 'package:flutter/material.dart';
import 'package:feedback_page/feedbackpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> list = [
    'assets/images/mid.png',
    'assets/images/mid.png',
    'assets/images/mid.png',
    'assets/images/mid.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FeedbackPage(
        imgPath: list,
      ),
    );
  }
}