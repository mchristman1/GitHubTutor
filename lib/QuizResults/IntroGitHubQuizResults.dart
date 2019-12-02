//IntroGitHubQuizResults.dart

import 'package:flutter/material.dart';
import 'package:github_tutor/Constants.dart';

class IntroGitHubQuizResults extends StatelessWidget {
  final int score;
  final int correct;
  final List<String> studentAnswers;

  IntroGitHubQuizResults({this.score, this.correct, this.studentAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Results',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: buildQuiz(context)),
    );
  }

  ChoicesMC answer1 = ChoicesMC.NULL;
  ChoicesMC answer2 = ChoicesMC.NULL;
  ChoicesMC answer3 = ChoicesMC.NULL;
  ChoicesTF answer4 = ChoicesTF.NULL;
  ChoicesTF answer5 = ChoicesTF.NULL;

  Widget buildQuiz(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: TextStyle(fontSize: 17.0, color: Colors.black),
              children: [
                TextSpan(
                  text: 'Score: $score%\nCorrect: $correct out of 5\n\n',
                ),
                TextSpan(
                  text: score >= 80 ? 'Quiz passed, review your answers and continue.' :
                      'Quiz failed, review your answers and try again.'
                ),
              ]
            ),
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 1 of 5\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is GitHub?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('A version control system.',),
          leading: Icon(
            studentAnswers[0] == 'A' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('A software hosting service that provides source control.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          ),
        ),
        ListTile(
          title: Text(' A website for hosting projects. '),
          leading: Icon(
            studentAnswers[0] == 'C' ? Icons.close : null, color: Colors.red,
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 2 of 5\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is Git?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('A software hosting service.'),
          leading: Icon(
            studentAnswers[1] == 'A' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('A system for project management.'),
          leading: Icon(
            studentAnswers[1] == 'B' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('A system for version control.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 3 of 5\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is the primary use for GitHub?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Source control and code management.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          ),
        ),
        ListTile(
          title: Text('Filing of documents.'),
          leading: Icon(
            studentAnswers[2] == 'B' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('Website hosting.'),
          leading: Icon(
            studentAnswers[2] == 'C' ? Icons.close : null, color: Colors.red,
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 4 of 5\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan( text: 'True or False: GitHub can ONLY be used for managing code' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Icon(
            studentAnswers[3] == 'T' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            Icons.check, color: Colors.green,
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 5 of 5\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'True or False: GitHub and Git are the same thing' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Icon(
            studentAnswers[4] == 'T' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            Icons.check, color: Colors.green,
          ),
        ),
        Divider(height: 3, thickness: 3,),
        RaisedButton(
          child: Text('Continue', style: TextStyle(fontSize: 17.0, color: Colors.white),),
          color: Colors.green,
          onPressed: () { Navigator.popUntil(context, ModalRoute.withName('/CourseOutline')); },
        )
      ],
    );
  }
}