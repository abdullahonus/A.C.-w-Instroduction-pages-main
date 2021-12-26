// ignore_for_file: unused_element

import 'package:dynamic_grade_average_c4/widgetss/average_grade_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Average Calculator',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: OnBoardingPage(),
    );
  }
}
////////////////////////////////////////////
  ///follor For more ig: @Countrol4offical
  ///@countrolfour@gmail.com
////////////////////////////////////////////
class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/screen.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    const pageDecoration = const PageDecoration(
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero,
        fullScreen: true,
        bodyFlex: 0);

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,

      pages: [
        PageViewModel(
            title: "",
            body: "",
            decoration: pageDecoration,
            image: Container(
              height: sizeHeight * 1,
              width: sizeWidth * 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/int3.png"),
              )),
            )),
        PageViewModel(
            title: "",
            body: "",
            decoration: pageDecoration,
            image: Container(
              height: sizeHeight * 1,
              width: sizeWidth * 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/int4.png"), fit: BoxFit.cover)),
            )),
        PageViewModel(
            title: "",
            body: "",
            decoration: pageDecoration,
            image: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/int5.png"), fit: BoxFit.cover)),
            )),
        PageViewModel(
            title: "",
            body: "",
            decoration: pageDecoration,
            image: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/int6.png"), fit: BoxFit.cover)),
            )),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AverageGradeAppPage();
  }
}
