import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'home_screen.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
    final introKey = GlobalKey<IntroductionScreenState>();

    void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

   Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.png',height: 250.0, width: 300.0),
      alignment: Alignment.bottomCenter,
    
    );
  }
  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 18.0,color: Colors.white);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700,color: Colors.white),
      bodyTextStyle: bodyStyle,
      
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.blueAccent,
      imagePadding: EdgeInsets.zero,
    );


    return Scaffold(
      body:IntroductionScreen(
      key: introKey,
      
      pages: [
        PageViewModel(
          title: "Personal Training Routine",
          body:
              "Personalized \n Workout Routine",
          image: _buildImage('workout1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Learn Exercises Staying at your home",
          image: _buildImage('workout2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Time Based Sets",
          body:
              "Choose however long you wanna workout!",
          image: _buildImage('workout3'),
          decoration: pageDecoration,
        ),
  
        PageViewModel(
          title: "Ready To Workout?",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Press Done when you \n are ready to workout! ", style: bodyStyle),

            ],
          ),
          image: _buildImage('calomylogo'),
          decoration: pageDecoration,

        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeColor: Colors.deepOrangeAccent,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    )
    )
  ;




  }
}
