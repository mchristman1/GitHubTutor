import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: buildIntroduction()
      ),
    );
  }

  Widget buildIntroduction() {

    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          introductionHeader,
          Padding(padding: EdgeInsets.all(15)),
          Container(
            child: introduction,
          )
        ],
      ),
    );

  }

  final introduction = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(
          fontFamily: 'Arial',
          fontSize: 17.0,
          color: Colors.black,
        ),
        text: 'Welcome to the GitHub Tutor. This tutor was developed by a St. Mary\'s University student throughout the '
            'Fall 2019 semester as a project for E-Leaning and Gamification. Throughout this tutor, '
            'there will be a series of lessons. Some lessons will contain exercises for you to follow along with. '
            'All lessons will contain an end of lesson quiz. The quizzes are a combination of multiple choice and true false '
            'and you must score at least an 80% in order to unlock the next lesson. '
            'You can press the button in the upper left to view the tutor outline at anytime. '
            'From the tutor outline you can navigate to unlocked lessons. '
            'Thank you for using the tutor, press the button below to get started.'
    ),
  );



  final introductionHeader = Text(
    'Introduction',
    style: TextStyle(
      fontFamily: 'Arial',
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    textAlign: TextAlign.center,
  );
}