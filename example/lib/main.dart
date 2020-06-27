import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feedback_page/feedbackpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> list = [
    'assets/images/sad.png',
    'assets/images/mid.png',
    'assets/images/happy.png',
  ];

  @override
  Widget build(BuildContext context) {
    var value = 0;
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
        btnChild: Text(
          'Done',
          style: TextStyle(color: Colors.white),
        ),
        mainTitle: 'What is your feedback ?!',
        maxValueWidget: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: Text(
              'Good',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        btnOnPress: (){},
        minValueWidget: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: Text(
              'Bad',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        defaultSliderValue: 0,
      ),
    );
  }
}
