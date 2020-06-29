# feedback_page
[![pub package](https://img.shields.io/pub/v/feedback_page?color=green&style=flat-square)](https://pub.dev/packages/feedback_page)

Flutter `package` for add `feedback page` to your application.

## Show Cases

| 1 | 2 | gif example |
| ------------ | ------------ | ------------ |
| ![1](https://github.com/mahmoud-eslami/feedback_page/blob/master/example/showCase/rsz_screenshot_1593411057.png "1" )  |  ![2](https://github.com/mahmoud-eslami/feedback_page/blob/master/example/showCase/rsz_screenshot_1593411082.png "2") | ![gif example](https://github.com/mahmoud-eslami/feedback_page/blob/master/example/showCase/ezgif.com-video-to-gif.gif?raw=true "gif example")  |


# Use this package :

## 1. Depend on it

Add this to your package's pubspec.yaml file:

```
dependencies:
  feedback_page: ^0.0.1
```
## 2. Install it

You can install packages from the command line:

with Flutter:

```
$ flutter pub get
```

## 3. Import it

Now in your Dart code, you can use:

```
import 'package:feedback_page/feedback_page.dart';
```
# Widget contractor :

|PropName		|Description	|default value|optional|
|:---------------|:---------------|:-------|:-------|
|percentCallback|get slider value percent|-|true|
|imgPath|list with string type involved assets of images|-|false|
|backgroundColor|color of widget background|-|false|
|closeIcon|this icon is locate top right in widget|-|false|
|closeIconColor|color of closeIcon with Color type|Colors.black|true|
|closeIconSize|size of closeIcon with double type|30|true|
|closeIconOnPress|pass a function to this prop|-|false|
|mainTitle|title is locate in tope center in widget pass a string to this prop|-|false|
|mainTitleStyle|style of main title pass a TextStyle to this one|TextStyle(fontWeight: FontWeight.bold, fontSize: 30)|true|
|imageWidth|pass double to this prop (size of image widget)|200|true|
|imageHeight|pass double to this prop (size of image widget)|200|true|
|minValueWidget|this widget shown in left side of slider|-|false|
|maxValueWidget|this widget shown in left side of slider|-|false|
|defaultSliderValue|default value of slider (thumb show you this value at first)|0|true|
|btnChild|widget is type of this prop . widget is show in the button|-|false|
|btnOnPress|pass a function to this prop|-|false|
|btnColor|color of button with Color type|Colors.black|true|
|btnBorderRadius|pass double to give value radius of button|30|true|
|btnHeight|pass double to give value height of button|200|true|
|btnWidth|pass double to give value width of button|50|true|
|sliderThemeData|if you want have Custom slider pass SliderThemeData here|SliderThemeData()|true|
|alignmentControllerDuration|Duration to forward alignment animation|Duration(milliseconds: 700)|true|
|zoomControllerDuration|Duration to forward zoom(in/out) animation|Duration(milliseconds: 200)|true|
|alignmentAnimationCurve|-|Curves.ease|true|
|zoomAnimationCurve|-|Curves.ease|true|
