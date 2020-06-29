import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feedback_page/feedback_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var value = 0;
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: First(),
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Second()));
          },
          child: Text('FeedBack Page'),
        ),
      ),
    );
  }
}

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<String> list = [
    'assets/images/sad.png',
    'assets/images/mid.png',
    'assets/images/happy.png',
  ];

  @override
  Widget build(BuildContext context) {
    var myValue = 0.0;

    return FeedbackPage(
      percentCallback: (value) {
        myValue = value;
      },
      imgPath: list,
      backgroundColor: Colors.lightGreen,
      closeIcon: Icons.close,
      closeIconOnPress: () {
        print('close clicked');
        print(myValue);
      },
      btnChild: Icon(Icons.check,color: Colors.white,),
      mainTitle: 'Custom Title ...',
      maxValueWidget: Center(
        child: Text(
          ':)',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
      btnOnPress: () {
        Navigator.pop(context);
      },
      minValueWidget: Center(
        child: Text(
          ':(',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      defaultSliderValue: 0,
    );
  }
}
