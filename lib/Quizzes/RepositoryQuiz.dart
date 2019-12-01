import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/BLoC/quiz-bloc.dart';
import 'package:github_tutor/QuizResults/RepositoriesQuizResults.dart';

import '../Constants.dart';

class RepoQuizStatefulWidget extends StatefulWidget {
  RepoQuizStatefulWidget({Key key}) : super(key: key);

  @override
  RepositoryQuizState createState() => RepositoryQuizState();
}

class RepositoryQuizState extends State<RepoQuizStatefulWidget> {
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
  ChoicesTF answer3 = ChoicesTF.NULL;
  ChoicesMC answer4 = ChoicesMC.NULL;
  ChoicesTF answer5 = ChoicesTF.NULL;

  Widget buildQuiz() {

    final quizBloc = QuizBloc();
    final progressBloc = BlocProvider.of<ProgressBloc>(context);
    Function checkProgress() {
      if (answer1 != ChoicesMC.NULL &&
          answer2 != ChoicesMC.NULL &&
          answer3 != ChoicesTF.NULL &&
          answer4 != ChoicesMC.NULL &&
          answer5 != ChoicesTF.NULL

      ) {
        quizBloc.setStatus(true);
      }
    }

    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 1 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a repository?'),
        //B
        ListTile(
          title: Text('A fancy term for a project on GitHub.'),
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
          title: Text('Where project files are stored on GitHub.'),
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
          title: Text('Where old versions of files are stored.'),
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
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 2 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a collaborator?'),
        //A
        ListTile(
          title: Text('People given permission to contrbute to the repository.'),
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
          title: Text('People who can only view the repository.'),
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
          title: Text('Anyone who commits to the project.'),
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
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 3 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        //T
        Text('True or False: Collaborators are given read and write permissions by default.'),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer3,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer3 = value;
                studentAnswers[2] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer3,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer3 = value;
                studentAnswers[2] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 4 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('When creating a repository, what should the name be?'),
        //C
        ListTile(
          title: Text('Something creative.'),
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
          title: Text('Something unique and interesting.'),
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
          title: Text('Something that describes the project.'),
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
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 5 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: A public repository can only be viewed by those the creator has listed under the "viewers" tab.'),
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
        buildStreamBuilder(quizBloc, progressBloc),
      ],
    );
  }

  List<int> calculateScore() {
    double correct = 0.00;
    int correctAnswers = 0;

    if(answer1 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer2 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer3 == ChoicesTF.True) {
      correctAnswers++;
    }

    if(answer4 == ChoicesMC.C) {
      correctAnswers++;
    }

    if(answer5 == ChoicesTF.False) {
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
                answer3 != ChoicesTF.NULL &&
                answer4 != ChoicesMC.NULL &&
                answer5 != ChoicesTF.NULL
            ) {
              List<int> results = calculateScore();

              if(progressBloc.currentUnlockedLessons[6] == false && results[0] >= 80) {
                progressBloc.unlockNextLesson(6);
              }

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => RepositoryQuizResults(
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