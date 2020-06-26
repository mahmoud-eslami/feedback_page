library feedbackpage;

import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
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
      body: Column(),
    );
  }
}
