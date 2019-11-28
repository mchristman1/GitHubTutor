import 'package:flutter/material.dart';

enum ChoicesMC {A, B, C, NULL}
enum ChoicesTF {True, False, NULL}

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
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 1 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is source control?'),
        //B
        ListTile(
          title: Text('Controlling the number of resources for a project.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer1,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer1 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 2 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is GitHub?'),
        //B
        ListTile(
          title: Text('A source control system.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer2,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer2 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 3 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is Git?'),
        //B
        ListTile(
          title: Text('A hardware manufacturing company.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer3,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer3 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 4 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a repository?'),
        //A
        ListTile(
          title: Text('A place where project files are stored.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer4,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer4 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 5 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a collaborator?'),
        //A
        ListTile(
          title: Text('A person given permission to contribute to the repository.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer5,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer5 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 6 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a README?'),
        //C
        ListTile(
          title: Text('A text file that only contains licenses.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer6,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer6 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 7 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a commit?'),
        //B
        ListTile(
          title: Text('The action that adds changes to GitHub.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer7,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer7 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 8 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a push?'),
        //A
        ListTile(
          title: Text('The action that adds changes to GitHub.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer8,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer8 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 9 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a branch?'),
        //A
        ListTile(
          title: Text('A section of a repository that contains a version of the project.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer9,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer9 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 10 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a merge?'),
        //B
        ListTile(
          title: Text('Overwriting a branch with changes.'),
          leading: Radio(
            value: ChoicesMC.A,
            groupValue: answer10,
            onChanged: (ChoicesMC value) {
              setState(() {
                answer10 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 11 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: GitHub uses Git to provide source control.'),
        //T
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer11,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer11 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 12 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: In a private repository, collaborators are NOT given read and write permissions by default.'),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer12,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer12 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 13 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: When you commit changes, they are automatically added to GitHub'),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer13,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer13 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 14 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: Git will ALWAYS handle merges automatically without conflict.'),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer14,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer14 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 15 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: Source control and version control mean the same thing.'),
        //T
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer15,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer15 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 16 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: Before you add a key to GitHub, you have to first generate it on your computer.'),
        //T
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer16,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer16 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 17 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: Git and GitHub are the same thing.'),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer17,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer17 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 18 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: You can control who can view the repository when it is marked as public.'),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer18,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer18 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 19 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: After a merge, the branch merged in will be deleted.'),
        //F
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer19,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer19 = value;
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
              });
            },
          ),
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 20 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: The master branch should contain the latest stable version of the project.'),
        //T
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: ChoicesTF.True,
            groupValue: answer20,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer20 = value;
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
              });
            },
          ),
        ),
      ],
    );
  }
}