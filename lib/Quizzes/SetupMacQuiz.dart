import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/BLoC/quiz-bloc.dart';
import 'package:github_tutor/Constants.dart';
import 'package:github_tutor/QuizResults/SetupMacQuizResults.dart';

class SetupMacQuizStatefulWidget extends StatefulWidget {
  SetupMacQuizStatefulWidget({Key key}) : super(key : key);

  @override
  SetupMacQuizState createState() => SetupMacQuizState();
}

class SetupMacQuizState extends State<SetupMacQuizStatefulWidget> {
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
                  TextSpan(text: 'Question 1 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is the first step for setting up GitHub interaction on a Mac?'),
                ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('Download Git for Mac.'),
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
          title: Text('Generate an SSH Key'),
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
          title: Text('None of the above.'),
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
        Divider( height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 2 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                  TextSpan(text: 'What is the command to generate the SSH key?'),
                ]
            ),
          ),
        ),
        //B
        ListTile(
          title: Text('ssh-key generate rsa -b 4096 -C "your email address"'),
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
          title: Text('ssh-keygen -t rsa -b 4096 -C "your email address"'),
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
          title: Text('ssh-keygen -t aes -e 4077 -C "your email address"'),
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
        Divider( height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 3 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                  TextSpan(text: 'How is the SSH key stored?'),
                ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('In a file called Users/username/.ssh/id_rsa'),
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
          title: Text('As plaintext in a file called Users/username/sshkey.txt'),
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
          title: Text('On the desktop as a word document'),
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
        Divider( height: 3, thickness: 3,),
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
                  TextSpan(text: 'What is the first step when adding the SSH key to the SSH-Agent?'),
                ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('Start the SSH-Agent.'),
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
          title: Text('Copy the SSH key to the clipboard.'),
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
          title: Text('Generate a different key'),
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
        Divider( height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 5 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'After the SSH key has been copied to your clipboard, what should you do next?'),
                ]
            ),
          ),
        ),
        //C
        ListTile(
          title: Text('This is not a step.'),
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
          title: Text('Paste it in a text file.'),
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
          title: Text('Add it to your account on GitHub.'),
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

    if(answer2 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer3 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer4 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer5 == ChoicesMC.C) {
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

              if(progressBloc.currentUnlockedLessons[5] == false && results[0] >= 80) {
                progressBloc.unlockNextLesson(5);
              }

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => SetupMacQuizResults(
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