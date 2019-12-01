import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/BLoC/quiz-bloc.dart';
import 'package:github_tutor/Constants.dart';
import 'package:github_tutor/QuizResults/MidCourseQuizResults.dart';

class MidCourseQStatefulWidget extends StatefulWidget {
  MidCourseQStatefulWidget({Key key}) : super(key : key);

  @override
  MidCourseQuizState createState() => MidCourseQuizState();
}

class MidCourseQuizState extends State<MidCourseQStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Mid-Course Quiz',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: buildQuiz()),
    );
  }

  List<String> studentAnswers = [
    'NULL', 'NULL', 'NULL',
    'NULL', 'NULL', 'NULL',
    'NULL', 'NULL', 'NULL',
    'NULL', 'NULL', 'NULL',
    'NULL', 'NULL', 'NULL'
  ];

  ChoicesTF answer1 = ChoicesTF.NULL;
  ChoicesMC answer2 = ChoicesMC.NULL;
  ChoicesMC answer3 = ChoicesMC.NULL;
  ChoicesMC answer4 = ChoicesMC.NULL;
  ChoicesMC answer5 = ChoicesMC.NULL;
  ChoicesMC answer6 = ChoicesMC.NULL;
  ChoicesTF answer7 = ChoicesTF.NULL;
  ChoicesTF answer8 = ChoicesTF.NULL;
  ChoicesTF answer9 = ChoicesTF.NULL;
  ChoicesMC answer10 = ChoicesMC.NULL;
  ChoicesMC answer11 = ChoicesMC.NULL;
  ChoicesMC answer12 = ChoicesMC.NULL;
  ChoicesMC answer13 = ChoicesMC.NULL;
  ChoicesTF answer14 = ChoicesTF.NULL;
  ChoicesMC answer15 = ChoicesMC.NULL;

  Widget buildQuiz() {

    final quizBloc = QuizBloc();
    final progressBloc = BlocProvider.of<ProgressBloc>(context);
    Function checkProgress() {
      if (answer1 != ChoicesTF.NULL && answer2 != ChoicesMC.NULL &&
          answer3 != ChoicesMC.NULL && answer4 != ChoicesMC.NULL &&
          answer5 != ChoicesMC.NULL && answer6 != ChoicesMC.NULL &&
          answer7 != ChoicesTF.NULL && answer8 != ChoicesTF.NULL &&
          answer9 != ChoicesTF.NULL && answer10 != ChoicesMC.NULL &&
          answer11 != ChoicesMC.NULL && answer12 != ChoicesMC.NULL &&
          answer13 != ChoicesMC.NULL && answer14 != ChoicesTF.NULL &&
          answer15 != ChoicesMC.NULL
      ) {
        quizBloc.setStatus(true);
      }
    }

    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Quiz Introduction',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'This is the Mid-Course Quiz. There are a total of 15 questions. Some are multiple choice are some are true false. You must get at least 12 questions correct to move on to the last half of the course.',
          style: TextStyle(
            fontSize: 17,
          ),
          textAlign: TextAlign.left,
        ),
        Padding(padding: EdgeInsets.all(10),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 1 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: Source control and version control are NOT the same thing.' ),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer1,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer1 = value;
                studentAnswers[0] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer1,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer1 = value;
                studentAnswers[0] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 2 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is source control?' ),
        //A
        ListTile(
          title: Text('Management of changes to documents, programs, and other collections of information.'),
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
          title: Text('Management of documentation only.'),
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
          title: Text('Controlling the amount of resources for a project.'),
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
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 3 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is GitHub?' ),
        //A
        ListTile(
          title: Text('A software hosting service.'),
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
          title: Text('A version control system.'),
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
          title: Text('A website for hosting documentation.'),
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
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 4 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'How does GitHub provide source control?' ),
        //C
        ListTile(
          title: Text('Through a custom system.'),
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
          title: Text('GitHub does not provide source control.'),
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
          title: Text('Through a system called Git.'),
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
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 5 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is Git?' ),
        //A
        ListTile(
          title: Text('A version control system.'),
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
          title: Text('A software hosting company.'),
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
          title: Text('A security software.'),
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
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 6 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'Which account plan should you use for this course?' ),
        //C
        ListTile(
          title: Text('Team Plan.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer6,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer6 = value;
                studentAnswers[5] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Pro Plan.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer6,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer6 = value;
                studentAnswers[5] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Free Plan.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer6,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer6 = value;
                studentAnswers[5] = 'C';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 7 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: Your email should be an email you check often.' ),
        //T
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
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 8 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: Your username should be whatever you want it to be.' ),
        //F
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
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 9 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: GitHub offers free plans for teams.' ),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer9,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer9 = value;
                studentAnswers[8] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer9,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer9 = value;
                studentAnswers[8] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 10 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'Why do you need to download Git (Mac) or Git Bash (Windows)?' ),
        //A
        ListTile(
          title: Text('To interact with GitHub from your computer.'),
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
          title: Text('To create projects.'),
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
          title: Text('To create a GitHub account.'),
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
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 11 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What should you do after you download Git or Git Bash?' ),
        //C
        ListTile(
          title: Text('Create a repository.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer11,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer11 = value;
                studentAnswers[10] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Create a GitHub account.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer11,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer11 = value;
                studentAnswers[10] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Generate an SSH key'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer11,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer11 = value;
                studentAnswers[10] = 'C';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 12 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is the last step for setup?' ),
        //A
        ListTile(
          title: Text('Add the SSH key to GitHub.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer12,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer12 = value;
                studentAnswers[11] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Create a new repository on GitHub.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer12,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer12 = value;
                studentAnswers[11] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Copy the SSH key to your clipboard.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer12,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer12 = value;
                studentAnswers[11] = 'C';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 13 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is a repository?' ),
        //B
        ListTile(
          title: Text('A project on GitHub.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer13,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer13 = value;
                studentAnswers[12] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('A place where a project is hosted on GitHub.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer13,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer13 = value;
                studentAnswers[12] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('A chatroom for collaborators.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer13,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer13 = value;
                studentAnswers[12] = 'C';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 14 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: Private repositories do NOT allow collaborators.' ),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer14,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer14 = value;
                studentAnswers[13] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer14,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer14 = value;
                studentAnswers[13] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 15 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What are the default permissions for collaborators?' ),
        //A
        ListTile(
          title: Text('Read and Write.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer15,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer15 = value;
                studentAnswers[14] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Read only.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer15,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer15 = value;
                studentAnswers[14] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Write only.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer15,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer15 = value;
                studentAnswers[14] = 'C';
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

    if(answer1 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer2 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer3 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer4 == ChoicesMC.C) {
      correctAnswers++;
    }

    if(answer5 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer6 == ChoicesMC.C) {
      correctAnswers++;
    }

    if(answer7 == ChoicesTF.True) {
      correctAnswers++;
    }

    if(answer8 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer9 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer10 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer11 == ChoicesMC.C) {
      correctAnswers++;
    }

    if(answer12 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer13 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer14 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer15 == ChoicesMC.A) {
      correctAnswers++;
    }

    correct = correctAnswers/15;

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
            if(answer1 != ChoicesTF.NULL && answer2 != ChoicesMC.NULL &&
                answer3 != ChoicesMC.NULL && answer4 != ChoicesMC.NULL &&
                answer5 != ChoicesMC.NULL && answer6 != ChoicesMC.NULL &&
                answer7 != ChoicesTF.NULL && answer8 != ChoicesTF.NULL &&
                answer9 != ChoicesTF.NULL && answer10 != ChoicesMC.NULL &&
                answer11 != ChoicesMC.NULL && answer12 != ChoicesMC.NULL &&
                answer13 != ChoicesMC.NULL && answer14 != ChoicesTF.NULL &&
                answer15 != ChoicesMC.NULL
            ) {
              List<int> results = calculateScore();

              if(progressBloc.currentUnlockedLessons[7] == false && results[0] >= 80) {
                progressBloc.unlockNextLesson(7);
              }

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => MidCourseQuizResults(
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