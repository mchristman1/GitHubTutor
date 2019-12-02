import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/BLoC/quiz-bloc.dart';
import 'package:github_tutor/Lessons/CourseOutline.dart';
import 'package:github_tutor/QuizResults/SourceControlQuizResults.dart';

import '../Constants.dart';

class SrcControlQStatefulWidget extends StatefulWidget {
  SrcControlQStatefulWidget({Key key}) : super(key: key);

  @override
  SourceControlQuizState createState() => SourceControlQuizState();
}

class SourceControlQuizState extends State<SrcControlQStatefulWidget> {
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
          body: SingleChildScrollView(child: buildQuiz(context)),
        );
  }

  List<String> studentAnswers = ['NULL', 'NULL'];

  ChoicesMC answer1 = ChoicesMC.NULL;
  ChoicesMC answer2 = ChoicesMC.NULL;

  Widget buildQuiz(BuildContext context) {
    final quizBloc = QuizBloc();
    final progressBloc = BlocProvider.of<ProgressBloc>(context);
    Function checkProgress() {
      if (answer1 != ChoicesMC.NULL && answer2 != ChoicesMC.NULL) {
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
                  TextSpan(text: 'Question 1 of 2\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'What is source control?',
                  ),
                ]
            ),
          ),
        ),

        ListTile(
          title: Text(
              'Management of changes to documents, programs, and other collections of information.'),
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
          title: Text('Managing changes to code only.'),
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
          title: Text('GitHub'),
          leading: Radio(
            value: ChoicesMC.C,
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
        Divider(height: 3, thickness: 3),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 2 of 2\n',
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                  TextSpan(
                    text: 'Why is source control important?',
                  ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Makes it easy to track changes throughout the project.'),
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
          title: Text(
              'To have something to revert back to in case something goes wrong and the current project cannot be recovered.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer2,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer2 = value;
                studentAnswers[1] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('All of the above.'),
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
        buildStreamBuilder(quizBloc, progressBloc)
      ],
    );
  }

  List<int> calculateScore() {
    double correct = 0.00;
    int correctAnswers = 0;

    if(answer1 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer2 == ChoicesMC.C) {
      correctAnswers++;
    }

    correct = correctAnswers/2;

    return [(correct*100).round(), correctAnswers];

  }

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
            if(answer1 != ChoicesMC.NULL && answer2 != ChoicesMC.NULL) {
              List<int> results = calculateScore();

              if(progressBloc.currentUnlockedLessons[2] == false && results[0] >= 80) {
                progressBloc.unlockNextLesson(2);
              }

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => SourceControlQuizResults(
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
