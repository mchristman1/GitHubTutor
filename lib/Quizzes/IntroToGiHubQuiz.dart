import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/SourceControlQuiz.dart';

enum Q1Choices { A, B, C, Null }
enum Q2Choices { A, B, C, Null }
enum Q3Choices { A, B, C, Null }
enum Q4Choices { True, False, Null }
enum Q5Choices { True, False, Null }


class IntroGitHubQStatefulWidget extends StatefulWidget {
  IntroGitHubQStatefulWidget({Key key}) : super(key: key);

  @override
  IntroGitHubQuizState createState() => IntroGitHubQuizState();
}

class IntroGitHubQuizState extends State<IntroGitHubQStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Quiz',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: buildQuiz()),
    );
  }

  Q1Choices answer1 = Q1Choices.Null;
  Q2Choices answer2 = Q2Choices.Null;
  Q3Choices answer3 = Q3Choices.Null;
  Q4Choices answer4 = Q4Choices.Null;
  Q5Choices answer5 = Q5Choices.Null;

  Widget buildQuiz() {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10.0),),
        Text(
          'Question 1 of 5',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0
          ),
        ),
        Text( 'What is GitHub?' ),
        ListTile(
          title: Text('A version control system.'),
          leading: Radio(
            value: Q1Choices.A,
            groupValue: answer1,
            onChanged: (Q1Choices value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A software hosting service that provides source control.'),
          leading: Radio(
            value: Q1Choices.B,
            groupValue: answer1,
            onChanged: (Q1Choices value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(' A website for hosting projects. '),
          leading: Radio(
            value: Q1Choices.C,
            groupValue: answer1,
            onChanged: (Q1Choices value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          'Question 2 of 5',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text( 'What is Git?' ),
        ListTile(
          title: Text('A software hosting service.'),
          leading: Radio(
            value: Q2Choices.A,
            groupValue: answer2,
            onChanged: (Q2Choices value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A system for project management.'),
          leading: Radio(
            value: Q2Choices.B,
            groupValue: answer2,
            onChanged: (Q2Choices value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A system for version control.'),
          leading: Radio(
            value: Q2Choices.C,
            groupValue: answer2,
            onChanged: (Q2Choices value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          'Question 3 of 5',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text( 'What is the primary use for GitHub?' ),
        ListTile(
          title: Text('Source control and code management.'),
          leading: Radio(
            value: Q3Choices.A,
            groupValue: answer3,
            onChanged: (Q3Choices value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Filing of documents.'),
          leading: Radio(
            value: Q3Choices.B,
            groupValue: answer3,
            onChanged: (Q3Choices value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Website hosting.'),
          leading: Radio(
            value: Q3Choices.C,
            groupValue: answer3,
            onChanged: (Q3Choices value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          'Question 4 of 5',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text( 'True or False: GitHub can ONLY be used for managing code' ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q4Choices.True,
            groupValue: answer4,
            onChanged: (Q4Choices value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q4Choices.False,
            groupValue: answer4,
            onChanged: (Q4Choices value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          'Question 5 of 5',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text( 'True or False: GitHub and Git are the same thing' ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q5Choices.True,
            groupValue: answer5,
            onChanged: (Q5Choices value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q5Choices.False,
            groupValue: answer5,
            onChanged: (Q5Choices value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
      ],
    );
  }
}