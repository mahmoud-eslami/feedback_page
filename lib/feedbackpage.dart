library feedbackpage;

import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  // get argument from user

  //array of images
  final List<String> imgPath;

  // color of scaffold background
  final Color backgroundColor;

  //close icon values
  final IconData closeIcon;
  final Color closeIconColor;
  final double closeIconSize;
  final Function closeIconOnPress;

  //title of page
  final String mainTitle;
  final TextStyle mainTitleStyle;

  //size of images
  final double imageWidth;
  final double imageHeight;

  //slider values and widgets
  final Widget minValueWidget;
  final Widget maxValueWidget;
  final double defaultSliderValue;
  final double minSliderValue;
  final double maxSliderValue;

  //submit btn value
  final Widget btnChild;
  final Function btnOnPress;

  //btn theme value
  final double btnWidth;
  final double btnHeight;
  final double btnBorderRadius;
  final Color btnColor;

  //slider theme value
  final SliderThemeData sliderThemeData;

  const FeedbackPage(
      {Key key,
      @required this.imgPath,
      @required this.backgroundColor,
      @required this.closeIcon,
      this.closeIconColor = Colors.black,
      this.closeIconSize = 30,
      @required this.closeIconOnPress,
      @required this.mainTitle,
      this.mainTitleStyle,
      this.imageWidth = 200,
      this.imageHeight = 200,
      @required this.minValueWidget,
      @required this.maxValueWidget,
      this.defaultSliderValue = 0,
      @required this.minSliderValue,
      @required this.maxSliderValue,
      @required this.btnChild,
      @required this.btnOnPress,
      this.btnColor,
      this.btnBorderRadius,
      this.btnHeight,
      this.btnWidth,
      this.sliderThemeData})
      : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage>
    with TickerProviderStateMixin {
  // value of slider widget and default value
  double _sliderValue;
  int _currentIndex;
  SliderThemeData _sliderThemeData;
  TextStyle _mainTitleStyle;
  double _btnWidth;
  double _btnHeight;
  double _btnBorderRadius;
  Color _btnColor;

  AnimationController _alignmentController;
  AnimationController _zoomController;

  Animation<Alignment> _alignmentAnimation;
  Animation<double> _zoomAnimation;

  @override
  void initState() {
    _currentIndex = 0;

    _sliderValue = widget.defaultSliderValue;

    _sliderThemeData = widget.sliderThemeData ??
        SliderThemeData(
            activeTrackColor: Colors.white.withOpacity(.6),
            thumbColor: Colors.black,
            inactiveTrackColor: Colors.white.withOpacity(.6),
            overlayColor: Colors.black.withOpacity(.3),
            trackHeight: 5,
            inactiveTickMarkColor: Colors.white.withOpacity(.6),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 15),
            valueIndicatorShape: PaddleSliderValueIndicatorShape(),
            valueIndicatorTextStyle: TextStyle(color: Colors.white));

    _mainTitleStyle = widget.mainTitleStyle ??
        TextStyle(fontWeight: FontWeight.bold, fontSize: 30);

    _btnBorderRadius = widget.btnBorderRadius ?? 30;
    _btnColor = widget.btnColor ?? Colors.black;
    _btnHeight = widget.btnHeight ?? 50;
    _btnWidth = widget.btnWidth ?? 200;
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              widget.closeIcon,
              color: widget.closeIconColor,
              size: widget.closeIconSize,
            ),
            onPressed: widget.closeIconOnPress,
          ),
        ],
      ),
      backgroundColor: widget.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            widget.mainTitle,
            style: _mainTitleStyle,
          ),
          Image.asset(
            widget.imgPath[_currentIndex],
            width: widget.imageWidth,
            height: widget.imageHeight,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                widget.minValueWidget,
                Expanded(
                  child: SliderTheme(
                    data: _sliderThemeData,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Slider(
                        value: _sliderValue,
                        onChanged: (value) {
                          setState(() {
                            _sliderValue = value;
                          });
                        },
                        divisions: widget.imgPath.length,
                        min: widget.minSliderValue,
                        max: widget.maxSliderValue,
                      ),
                    ),
                  ),
                ),
                widget.maxValueWidget
              ],
            ),
          ),
          SizedBox(
            height: _btnHeight,
            width: _btnWidth,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(_btnBorderRadius)),
              ),
              color: _btnColor,
              onPressed: widget.btnOnPress,
              child: widget.btnChild,
            ),
          ),
        ],
      ),
    );
  }
}
