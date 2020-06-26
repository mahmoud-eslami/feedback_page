library feedbackpage;

import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {

  final String imgPath;

  const FeedbackPage({Key key,@required this.imgPath}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage>
    with TickerProviderStateMixin {
  // value of slider widget and default value
  double _sliderValue;

  AnimationController _alignmentController;
  AnimationController _zoomController;

  Animation<Alignment> _alignmentAnimation;
  Animation<double> _zoomAnimation;

  @override
  void initState() {
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
          Image.asset(widget.imgPath),
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
