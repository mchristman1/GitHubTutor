//IntroToGitHubQuiz.dart
//GitHub Introduction quiz

import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/BLoC/quiz-bloc.dart';
import 'package:github_tutor/Constants.dart';
import 'package:github_tutor/QuizResults/IntroGitHubQuizResults.dart';

//Need a stateful widget for the radio buttons
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

  List<String> studentAnswers = ['NULL', 'NULL', 'NULL', 'NULL', 'NULL'];

  ChoicesMC answer1 = ChoicesMC.NULL;
  ChoicesMC answer2 = ChoicesMC.NULL;
  ChoicesMC answer3 = ChoicesMC.NULL;
  ChoicesTF answer4 = ChoicesTF.NULL;
  ChoicesTF answer5 = ChoicesTF.NULL;

  Widget buildQuiz() {

    final quizBloc = QuizBloc();
    final progressBloc = BlocProvider.of<ProgressBloc>(context);

    //Check if all questions have been answered
    Function checkProgress() {
      if (answer1 != ChoicesMC.NULL &&
          answer2 != ChoicesMC.NULL &&
          answer3 != ChoicesMC.NULL &&
          answer4 != ChoicesTF.NULL &&
          answer5 != ChoicesTF.NULL

      ) {
        quizBloc.setStatus(true);
      }
    }

    return Column(
      children: <Widget>[
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

        //B
        ListTile(
          title: Text('A version control system.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer1,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer1 = value;
                studentAnswers[0] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('A software hosting service that provides source control.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer1,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer1 = value;
                studentAnswers[0] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text(' A website for hosting projects. '),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer1,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer1 = value;
                studentAnswers[0] = 'C';
                checkProgress();
              });
            },
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

        //C
        ListTile(
          title: Text('A software hosting service.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer2,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer2 = value;
                studentAnswers[1] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('A system for project management.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer2,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer2 = value;
                studentAnswers[1] = 'B';
              });
            },
          ),
        ),
        ListTile(
          title: Text('A system for version control.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer2,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer2 = value;
                studentAnswers[1] = 'C';
                checkProgress();
              });
            },
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
        //A
        ListTile(
          title: Text('Source control and code management.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer3,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer3 = value;
                studentAnswers[2] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Filing of documents.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer3,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer3 = value;
                studentAnswers[2] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Website hosting.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer3,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer3 = value;
                studentAnswers[2] = 'C';
                checkProgress();
              });
            },
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

        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer4,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer4 = value;
                studentAnswers[3] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer4,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer4 = value;
                studentAnswers[3] = 'F';
                checkProgress();
              });
            },
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

        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer5,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer5 = value;
                studentAnswers[4] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer5,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer5 = value;
                studentAnswers[4] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        buildStreamBuilder(quizBloc, progressBloc)
      ],
    );
  }

  List<int> calculateScore() {
    double correct = 0.00;
    int correctAnswers = 0;

    if(answer1 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer2 == ChoicesMC.C) {
      correctAnswers++;
    }

    if(answer3 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer4 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer5 == ChoicesTF.False) {
      correctAnswers++;
    }

    correct = correctAnswers/5;

    return [(correct*100).round(), correctAnswers];

  }

  //Build the stream for the Quiz BLoC
  Widget buildStreamBuilder(QuizBloc quizBloc, ProgressBloc progressBloc) {
    return StreamBuilder<bool>(
      stream: quizBloc.quizStream,
      initialData: quizBloc.currentStatus,
      builder: (context, snapshot) {
        return RaisedButton(
          color: snapshot.data ? Color.fromRGBO(46, 188, 79, 1) : Colors.grey,
          child: Text(
            'Submit',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          onPressed: () {
            if(answer1 != ChoicesMC.NULL &&
                answer2 != ChoicesMC.NULL &&
                answer3 != ChoicesMC.NULL &&
                answer4 != ChoicesTF.NULL &&
                answer5 != ChoicesTF.NULL
            ) {
              List<int> results = calculateScore();

              if(progressBloc.currentUnlockedLessons[3] == false && results[0] >= 80) {
                progressBloc.unlockNextLesson(3);
              }

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => IntroGitHubQuizResults(
                          score: results[0],
                          correct: results[1],
                          studentAnswers: studentAnswers
                      ))
              );
//              Navigator.popUntil(context, ModalRoute.withName('CourseOutline'));
            }
          },
        );
      },
    );
  }
}