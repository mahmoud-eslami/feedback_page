import 'package:flutter/material.dart';
import 'package:feedback_page/feedbackpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> list = [
    'assets/images/sad.png',
    'assets/images/mid.png',
    'assets/images/happy.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FeedbackPage(
        imgPath: list,
        backgroundColor: Colors.amber,
        closeIcon: Icons.close,
        closeIconOnPress: () {
          print('close clicked');
        },
        btnChild: Text('Done',style: TextStyle(color: Colors.white),),
        btnOnPress: () {
          print('clicked');
        },
        mainTitle: 'What is your feedback ?!',
        maxSliderValue: 30,
        minSliderValue: 0,
        maxValueWidget: Text('max'),
        minValueWidget: Text('min'),
        defaultSliderValue: 0,

      ),
    );
  }
}
