//FinalQuiz.dart
//Final quiz for the tutor

import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/BLoC/quiz-bloc.dart';
import 'package:github_tutor/Constants.dart';
import 'package:github_tutor/QuizResults/FinalQuizResults.dart';

//Need a stateful widget for the radio buttons
class FinalQStatefulWidget extends StatefulWidget {
  FinalQStatefulWidget({Key key}) : super(key : key);

  @override
  FinalQuizState createState() => FinalQuizState();
}

class FinalQuizState extends State<FinalQStatefulWidget> {
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
    'NULL', 'NULL', 'NULL', 'NULL', 'NULL',
    'NULL', 'NULL', 'NULL', 'NULL', 'NULL',
    'NULL', 'NULL', 'NULL', 'NULL', 'NULL'
  ];

  ChoicesMC answer1 = ChoicesMC.NULL;
  ChoicesMC answer2 = ChoicesMC.NULL;
  ChoicesMC answer3 = ChoicesMC.NULL;
  ChoicesMC answer4 = ChoicesMC.NULL;
  ChoicesMC answer5 = ChoicesMC.NULL;
  ChoicesMC answer6 = ChoicesMC.NULL;
  ChoicesMC answer7 = ChoicesMC.NULL;
  ChoicesMC answer8 = ChoicesMC.NULL;
  ChoicesMC answer9 = ChoicesMC.NULL;
  ChoicesMC answer10 = ChoicesMC.NULL;

  ChoicesTF answer11 = ChoicesTF.NULL;
  ChoicesTF answer12 = ChoicesTF.NULL;
  ChoicesTF answer13 = ChoicesTF.NULL;
  ChoicesTF answer14 = ChoicesTF.NULL;
  ChoicesTF answer15 = ChoicesTF.NULL;
  ChoicesTF answer16 = ChoicesTF.NULL;
  ChoicesTF answer17 = ChoicesTF.NULL;
  ChoicesTF answer18 = ChoicesTF.NULL;
  ChoicesTF answer19 = ChoicesTF.NULL;
  ChoicesTF answer20 = ChoicesTF.NULL;

  Widget buildQuiz() {

    final quizBloc = QuizBloc();
    final progressBloc = BlocProvider.of<ProgressBloc>(context);

    //Check to see if student has answered all questions
    Function checkProgress() {
      if (answer1 != ChoicesMC.NULL && answer2 != ChoicesMC.NULL &&
          answer3 != ChoicesMC.NULL && answer4 != ChoicesMC.NULL &&
          answer5 != ChoicesMC.NULL && answer6 != ChoicesMC.NULL &&
          answer7 != ChoicesMC.NULL && answer8 != ChoicesMC.NULL &&
          answer9 != ChoicesMC.NULL && answer10 != ChoicesMC.NULL &&
          answer11 != ChoicesTF.NULL && answer12 != ChoicesTF.NULL &&
          answer13 != ChoicesTF.NULL && answer14 != ChoicesTF.NULL &&
          answer15 != ChoicesTF.NULL && answer16 != ChoicesTF.NULL &&
          answer17 != ChoicesTF.NULL && answer18 != ChoicesTF.NULL &&
          answer19 != ChoicesTF.NULL && answer20 != ChoicesTF.NULL
      ) {
        quizBloc.setStatus(true);
      }
    }

    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Quiz Introduction',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'This is the Final Quiz. There are a total of 20 questions. The first half of the quiz is on vocabulary and is multiple choice.'
              'The last half of the quiz is true false and is on some general knowledge presented throughout the course. '
              'You must get at least 16 out of the 20 questions correct to pass.',
          style: TextStyle(
            fontSize: 17,
          ),
          textAlign: TextAlign.left,
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
                    text: 'Question 1 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: 'What is source control?'),
                ]
            ),
          ),
        ),
        //B
        ListTile(
          title: Text('Controlling the number of resources for a project.'),
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
          title: Text('The management of changes to documents, programs, and other collections of information.'),
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
          title: Text('Tracking ownership of project source files.'),
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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 2 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is GitHub?'),
                ]
            ),
          ),
        ),
        //B
        ListTile(
          title: Text('A source control system.'),
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
          title: Text('A software hosting service.'),
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
          title: Text('A software development company.'),
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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 3 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is Git?'),
                ]
            ),
          ),
        ),
        //B
        ListTile(
          title: Text('A hardware manufacturing company.'),
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
          title: Text('A source control service.'),
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
          title: Text('A software hosting company.'),
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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 4 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is a repository?'),
                ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('A place where project files are stored.'),
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
          title: Text('Where documentation is stored.'),
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
          title: Text('Where the database is stored.'),
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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 5 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is a collaborator?'),
                ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('A person given permission to contribute to the repository.'),
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
          title: Text('Someone who can ONLY comment on the project.'),
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
          title: Text('An automatic code review bot.'),
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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 6 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is a README?'),
                ]
            ),
          ),
        ),
        //C
        ListTile(
          title: Text('A text file that only contains licenses.'),
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
          title: Text('An auto-generated file for commit logs.'),
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
          title: Text('A text file that contains information about the project and how to set it up.'),
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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 7 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is a commit?'),
                ]
            ),
          ),
        ),
        //B
        ListTile(
          title: Text('The action that adds changes to GitHub.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer7,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer7 = value;
                studentAnswers[6] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action that prepares changes to be added to GitHub.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer7,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer7 = value;
                studentAnswers[6] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action that informs collaborators of changes to be made.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer7,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer7 = value;
                studentAnswers[6] = 'C';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 8 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is a push?'),
                ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('The action that adds changes to GitHub.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer8,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer8 = value;
                studentAnswers[7] = 'A';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action that informs collaborators of changes to be made.'),
          leading: Radio(
            value: ChoicesMC.B,
            groupValue: answer8,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer8 = value;
                studentAnswers[7] = 'B';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action that prepares changes for GitHub.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer8,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer8 = value;
                studentAnswers[7] = 'C';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 9 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'What is a branch?'),
                ]
            ),
          ),
        ),
        //A
        ListTile(
          title: Text('A section of a repository that contains a version of the project.'),
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
          title: Text('A part of the repository where documentation is stored.'),
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
          title: Text('A part of the repository that contains information about commits.'),
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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 10 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                  TextSpan(text: 'What is a merge?'),
                ]
            ),
          ),
        ),
        //B
        ListTile(
          title: Text('Overwriting a branch with changes.'),
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
          title: Text('Combining one branch with another.'),
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
          title: Text('Making changes to a branch.'),
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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 11 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: GitHub uses Git to provide source control.'),
                ]
            ),
          ),
        ),

        //T
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer11,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer11 = value;
                studentAnswers[10] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer11,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer11 = value;
                studentAnswers[10] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 12 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text:'True or False: In a private repository, collaborators are NOT given read and write permissions by default.'),
                ]
            ),
          ),
        ),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer12,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer12 = value;
                studentAnswers[11] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer12,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer12 = value;
                studentAnswers[11] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 13 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: When you commit changes, they are automatically added to GitHub'),
                ]
            ),
          ),
        ),

        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer13,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer13 = value;
                studentAnswers[12] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer13,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer13 = value;
                studentAnswers[12] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 14 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: Git will ALWAYS handle merges automatically without conflict.'),
                ]
            ),
          ),
        ),

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
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 15 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: Source control and version control mean the same thing.'),
                ]
            ),
          ),
        ),
        //T
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer15,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer15 = value;
                studentAnswers[14] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer15,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer15 = value;
                studentAnswers[14] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 16 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: Before you add a key to GitHub, you have to first generate it on your computer.'),
                ]
            ),
          ),
        ),
        //T
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer16,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer16 = value;
                studentAnswers[15] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer16,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer16 = value;
                studentAnswers[15] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 17 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: Git and GitHub are the same thing.'),
                ]
            ),
          ),
        ),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer17,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer17 = value;
                studentAnswers[16] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer17,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer17 = value;
                studentAnswers[16] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 18 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: You can control who can view the repository when it is marked as public.'),
                ]
            ),
          ),
        ),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer18,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer18 = value;
                studentAnswers[17] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer18,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer18 = value;
                studentAnswers[17] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 19 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: After a merge, the branch merged in will be deleted.'),
                ]
            ),
          ),
        ),

        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer19,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer19 = value;
                studentAnswers[18] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer19,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer19 = value;
                studentAnswers[18] = 'F';
                checkProgress();
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 20 of 20\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'True or False: The master branch should contain the latest stable version of the project.'),
                ]
            ),
          ),
        ),
        //T
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer20,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer20 = value;
                studentAnswers[19] = 'T';
                checkProgress();
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: ChoicesTF.False,
            groupValue: answer20,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer20 = value;
                studentAnswers[19] = 'F';
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

    if(answer2 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer3 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer4 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer5 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer6 == ChoicesMC.C) {
      correctAnswers++;
    }

    if(answer7 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer8 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer9 == ChoicesMC.A) {
      correctAnswers++;
    }

    if(answer10 == ChoicesMC.B) {
      correctAnswers++;
    }

    if(answer11 == ChoicesTF.True) {
      correctAnswers++;
    }

    if(answer12 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer13 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer14 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer15 == ChoicesTF.True) {
      correctAnswers++;
    }

    if(answer16 == ChoicesTF.True) {
      correctAnswers++;
    }

    if(answer17 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer18 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer19 == ChoicesTF.False) {
      correctAnswers++;
    }

    if(answer20 == ChoicesTF.True) {
      correctAnswers++;
    }

    correct = correctAnswers/20;

    return [(correct*100).round(), correctAnswers];

  }

  //Stream builder for the Quiz BLoC
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
            if(answer1 != ChoicesMC.NULL && answer2 != ChoicesMC.NULL &&
                answer3 != ChoicesMC.NULL && answer4 != ChoicesMC.NULL &&
                answer5 != ChoicesMC.NULL && answer6 != ChoicesMC.NULL &&
                answer7 != ChoicesMC.NULL && answer8 != ChoicesMC.NULL &&
                answer9 != ChoicesMC.NULL && answer10 != ChoicesMC.NULL &&
                answer11 != ChoicesTF.NULL && answer12 != ChoicesTF.NULL &&
                answer13 != ChoicesTF.NULL && answer14 != ChoicesTF.NULL &&
                answer15 != ChoicesTF.NULL && answer16 != ChoicesTF.NULL &&
                answer17 != ChoicesTF.NULL && answer18 != ChoicesTF.NULL &&
                answer19 != ChoicesTF.NULL && answer20 != ChoicesTF.NULL
            ) {
              List<int> results = calculateScore();

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => FinalQuizResults(
                          score: results[0],
                          correct: results[1],
                          studentAnswers: studentAnswers
                      ))
              );
            }
          },
        );
      },
    );
  }
}