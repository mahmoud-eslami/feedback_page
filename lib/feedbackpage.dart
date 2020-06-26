library feedbackpage;

import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  // get argument from user
  final List<String> imgPath;
  final Color backgroundColor;
  final String mainTitle;
  final TextStyle mainTitleStyle;
  final double imageWidth;
  final double imageHeight;
  final Widget minValueWidget;
  final Widget maxValueWidget;
  final double defaultSliderValue;
  final double minSliderValue;
  final double maxSliderValue;
  final Widget btnWidget;
  final Function btnOnPress;

  //define default value


  const FeedbackPage(
      {Key key,
      @required this.imgPath,
      @required this.backgroundColor,
      @required this.mainTitle,
      this.mainTitleStyle,
      this.imageWidth,
      this.imageHeight,
      this.minValueWidget,
      this.maxValueWidget,
      this.defaultSliderValue,
      this.minSliderValue,
      this.maxSliderValue,
      this.btnWidget,
      this.btnOnPress})
      : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage>
    with TickerProviderStateMixin {
  // value of slider widget and default value
  double _sliderValue;
  int _currentIndex;

  AnimationController _alignmentController;
  AnimationController _zoomController;

  Animation<Alignment> _alignmentAnimation;
  Animation<double> _zoomAnimation;

  @override
  void initState() {
    _currentIndex = 0;
    _sliderValue = 0;

    super.initState();
  }

  @override
  void dispose() {
    _alignmentController.dispose();
    _zoomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('asdasd'),
          Image.asset(
            widget.imgPath[_currentIndex],
            width: 200,
            height: 200,
          ),
          Row(
            children: <Widget>[
              Text('data'),
              Slider(
                value: _sliderValue,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                divisions: 3,
                min: 0,
                max: 30,
              ),
              Text('data'),
            ],
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('data'),
          ),
        ],
      ),
    );
  }
}
