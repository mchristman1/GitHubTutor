import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Congrats!!',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: buildBody(context)),
    );
  }


  Widget buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 17.0),
              children: [
                TextSpan(
                  text: 'Congratulations!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' You have completed the content for the GitHub Tutor!\n\n'
                      'You should now have a basic understanding of Git and how to '
                      'use it with GitHub.\n\n'
                      'Use the information you learned from this course to '
                      'manage your current and future projects.\n\n'
                      'Feel free to go back through the lessons, retake quizzes, '
                      'or review the key terms. Be sure to check out the links page '
                      'as well for some additional information.\n\n'
                      'Thank you for using the GitHub Tutor! Happy developing!\n\n'
                      'Sincerely,\n\n'
                      'GitHub Tutor Developer\n\n'
                      'Press the button below to be taken back to the course outline page.\n\n'
                )
              ]
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RaisedButton(
            child: Text(
              'Continue',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            color: Color.fromRGBO(46, 188, 79, 1),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('CourseOutline'));
            },
          ),
        )

      ],
    );
  }



}
