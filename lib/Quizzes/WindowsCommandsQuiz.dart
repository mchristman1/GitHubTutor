//WindowsCommandsQuiz.dart
//Quiz over Windows commands

import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/BLoC/quiz-bloc.dart';
import 'package:github_tutor/QuizResults/CommandsWindowsQuizResults.dart';

import '../Constants.dart';

class WindowsCommandsQStatefulWidget extends StatefulWidget {
  WindowsCommandsQStatefulWidget({Key key}) : super(key : key);

  @override
  WindowsCommandsQuizState createState() => WindowsCommandsQuizState();
}

class WindowsCommandsQuizState extends State<WindowsCommandsQStatefulWidget> {

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

  List<String> studentAnswers = [
    'NULL', 'NULL', 'NULL', 'NULL', 'NULL',
    'NULL', 'NULL', 'NULL', 'NULL', 'NULL'
  ];

  ChoicesMC answer1 = ChoicesMC.NULL;
  ChoicesMC answer2 = ChoicesMC.NULL;
  ChoicesMC answer3 = ChoicesMC.NULL;
  ChoicesMC answer4 = ChoicesMC.NULL;
  ChoicesMC answer5 = ChoicesMC.NULL;
  ChoicesTF answer6 = ChoicesTF.NULL;
  ChoicesTF answer7 = ChoicesTF.NULL;
  ChoicesTF answer8 = ChoicesTF.NULL;
  ChoicesMC answer9 = ChoicesMC.NULL;
  ChoicesMC answer10 = ChoicesMC.NULL;

  Widget buildQuiz() {

    final quizBloc = QuizBloc();
    final progressBloc = BlocProvider.of<ProgressBloc>(context);
    Function checkProgress() {
      if (answer1 != ChoicesMC.NULL && answer2 != ChoicesMC.NULL &&
          answer3 != ChoicesMC.NULL && answer4 != ChoicesMC.NULL &&
          answer5 != ChoicesMC.NULL && answer6 != ChoicesTF.NULL &&
          answer7 != ChoicesTF.NULL && answer8 != ChoicesTF.NULL &&
          answer9 != ChoicesMC.NULL && answer10 != ChoicesMC.NULL
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
                    text: 'Question 1 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is a commit?'),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('An action that prepares the files to be added to GitHub.'),
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
          title: Text('The action that adds files to GitHub.'),
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
          title: Text('The action that creates new files on GitHub.'),
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
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 2 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is a push?'),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('A feature for tracking changes.'),
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
          title: Text('The action that adds the changes to the remote repository.'),
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
          title: Text('The action to save files in a local repository.'),
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
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 3 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is a branch?'),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('A section of a repository where a version of the project is stored.'),
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
          title: Text('There is no such thing.'),
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
          title: Text('A file in a GitHub repository.'),
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
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 4 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text:'What is cloning?',),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('The action of switching another branch.'),
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
          title: Text('The action of downloading a branch from a repository.'),
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
          title: Text('Tracking of a new branch.'),
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
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 5 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'How do you create a Git repository on your computer?',),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('git-create new repository.'),
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
          title: Text('git init'),
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
          title: Text('git create "repository name"'),
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
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 6 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'True or False: After you commit something, it is automatically added to GitHub',),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer6,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer6 = value;
                studentAnswers[5] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer6,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer6 = value;
                studentAnswers[5] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 7 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'True or False: You should always push to the master branch directly.',),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer7,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer7 = value;
                studentAnswers[6] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer7,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer7 = value;
                studentAnswers[6] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 8 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'True or False: Cloning and pulling are the same thing.',),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer8,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer8 = value;
                studentAnswers[7] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer8,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer8 = value;
                studentAnswers[7] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 9 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is the command to switch branches?',),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('git-switch "branch name"'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer9,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer9 = value;
                studentAnswers[8] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('git-checkout branch "branch name"'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer9,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer9 = value;
                studentAnswers[8] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('git checkout -b "branch name"'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer9,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer9 = value;
                studentAnswers[8] = 'C';
                checkProgress();
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 10 of 10\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'Why should you include a message when committing changes?',),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('So you can talk to the other collaborators.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer10,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer10 = value;
                studentAnswers[9] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('You shouldn\'t, your changes should explain themselves'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer10,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer10 = value;
                studentAnswers[9] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('So other people know what changes you made.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer10,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer10 = value;
                studentAnswers[9] = 'C';
                checkProgress();
              });
            },
          ),
        ),
        buildStreamBuilder(quizBloc, progressBloc),
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

    if(answer4 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer5 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer6 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer7 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer8 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer9 == ChoicesMC.C) {
      correctAnswers++;
    }

    if(answer10 == ChoicesMC.C) {
      correctAnswers++;
    }

    correct = correctAnswers/10;

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
            if (answer1 != ChoicesMC.NULL && answer2 != ChoicesMC.NULL &&
                answer3 != ChoicesMC.NULL && answer4 != ChoicesMC.NULL &&
                answer5 != ChoicesMC.NULL && answer6 != ChoicesTF.NULL &&
                answer7 != ChoicesTF.NULL && answer8 != ChoicesTF.NULL &&
                answer9 != ChoicesMC.NULL && answer10 != ChoicesMC.NULL
            ) {
              List<int> results = calculateScore();

              if (progressBloc.currentUnlockedLessons[8] == false &&
                  results[0] >= 80) {
                progressBloc.unlockNextLesson(8);
              }

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) =>
                          WindowsCommandsQuizResults(
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