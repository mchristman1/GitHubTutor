import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/BLoC/quiz-bloc.dart';
import 'package:github_tutor/Constants.dart';
import 'package:github_tutor/QuizResults/AccountQuizResults.dart';

class AccountQStatefulWidget extends StatefulWidget {
  AccountQStatefulWidget({Key key}) : super(key: key);

  @override
  AccountQuizState createState() => AccountQuizState();
}

class AccountQuizState extends State<AccountQStatefulWidget> {
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
  ChoicesMC answer4 = ChoicesMC.NULL;
  ChoicesMC answer5 = ChoicesMC.NULL;



  Widget buildQuiz() {

    final quizBloc = QuizBloc();
    final progressBloc = BlocProvider.of<ProgressBloc>(context);
    Function checkProgress() {
      if (answer1 != ChoicesMC.NULL &&
          answer2 != ChoicesMC.NULL &&
          answer3 != ChoicesMC.NULL &&
          answer4 != ChoicesMC.NULL &&
          answer5 != ChoicesMC.NULL

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
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'What should you do when creating a username?',
                ),
              ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('Keep it professional.'),
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
          title: Text('Be creative.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer1,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer1 = value;
                studentAnswers[0] = 'B';
                checkProgress();
              });
            }
          ),
        ),
        ListTile(
          title: Text('Whatever you want.'),
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'What email should you use when creating an account?',
                  ),
                ]
            ),
          ),
        ),

        //C
        ListTile(
          title: Text('Your spam account.'),
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
          title: Text('Your school account.'),
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
          title: Text('An email you check often.'),
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                  text: 'What should your password be?',
                  ),
                ]
            ),
          ),
        ),
        //C
        ListTile(
          title: Text('Secure.'),
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
          title: Text('Memorable.'),
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
          title: Text('All of the above.'),
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
                  TextSpan(text: 'Question 4 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'What sorts of plans are offered?',
                  ),
                ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('Free and paid plans for individuals and teams.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer4,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer4 = value;
                studentAnswers[3] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Individual plans only.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer4,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer4 = value;
                studentAnswers[3] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Free plans for teams and enterprises.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer4,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer4 = value;
                studentAnswers[3] = 'C';
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Which of the below is NOT a feature of your free account?',
                  ),
                ]
            ),
          ),
        ),
        //B
        ListTile(
          title: Text('Unlimited public repositories'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer5,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer5 = value;
                studentAnswers[4] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Unlimited collaborators on private repositories.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer5,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer5 = value;
                studentAnswers[4] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Unlimited private repositories.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer5,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer5 = value;
                studentAnswers[4] = 'C';
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

    if(answer3 == ChoicesMC.C) {
      correctAnswers++;
    }

    if(answer4 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer5 == ChoicesMC.B) {
      correctAnswers++;
    }

    correct = correctAnswers/5;

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
            if(answer1 != ChoicesMC.NULL &&
                answer2 != ChoicesMC.NULL &&
                answer3 != ChoicesMC.NULL &&
                answer4 != ChoicesMC.NULL &&
                answer5 != ChoicesMC.NULL
            ) {
              List<int> results = calculateScore();

              if(progressBloc.currentUnlockedLessons[4] == false && results[0] >= 80) {
                progressBloc.unlockNextLesson(4);
              }

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => AccountQuizResults(
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