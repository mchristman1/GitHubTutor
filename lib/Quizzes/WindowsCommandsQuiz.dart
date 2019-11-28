import 'package:flutter/material.dart';

enum Q1 { A, B, C, NULL }
enum Q2 { A, B, C, NULL }
enum Q3 { A, B, C, NULL }
enum Q4 { A, B, C, NULL }
enum Q5 { A, B, C, NULL }
enum Q6 { True, False, NULL }
enum Q7 { True, False, NULL }
enum Q8 { True, False, NULL }
enum Q9 { A, B, C, NULL }
enum Q10 { A, B, C, NULL }

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

  Q1 answer1 = Q1.NULL;
  Q2 answer2 = Q2.NULL;
  Q3 answer3 = Q3.NULL;
  Q4 answer4 = Q4.NULL;
  Q5 answer5 = Q5.NULL;
  Q6 answer6 = Q6.NULL;
  Q7 answer7 = Q7.NULL;
  Q8 answer8 = Q8.NULL;
  Q9 answer9 = Q9.NULL;
  Q10 answer10 = Q10.NULL;

  Widget buildQuiz() {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 1 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('What is a commit?', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('An action that prepares the files to be added to GitHub.'),
          leading: Radio(
            value: Q1.A,
            groupValue: answer1,
            onChanged: (Q1 value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action that adds files to GitHub.'),
          leading: Radio(
            value: Q1.B,
            groupValue: answer1,
            onChanged: (Q1 value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action that creates new files on GitHub.'),
          leading: Radio(
            value: Q1.C,
            groupValue: answer1,
            onChanged: (Q1 value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 2 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('What is a push?', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('A feature for tracking changes.'),
          leading: Radio(
            value: Q2.A,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action that adds the changes to the remote repository.'),
          leading: Radio(
            value: Q2.B,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action to save files in a local repository.'),
          leading: Radio(
            value: Q2.C,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 3 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('What is a branch?', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('A section of a repository where a version of the project is stored.'),
          leading: Radio(
            value: Q3.A,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('There is no such thing.'),
          leading: Radio(
            value: Q3.B,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A file in a GitHub repository.'),
          leading: Radio(
            value: Q3.C,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 4 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('What is cloning?', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('The action of switching another branch.'),
          leading: Radio(
            value: Q4.A,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('The action of downloading a branch from a repository.'),
          leading: Radio(
            value: Q4.B,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Tracking of a new branch.'),
          leading: Radio(
            value: Q4.C,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 5 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('How do you create a Git repository on your computer?', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('git-create new repository.'),
          leading: Radio(
            value: Q5.A,
            groupValue: answer5,
            onChanged: (Q5 value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('git init'),
          leading: Radio(
            value: Q5.B,
            groupValue: answer5,
            onChanged: (Q5 value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('git create "repository name"'),
          leading: Radio(
            value: Q5.C,
            groupValue: answer5,
            onChanged: (Q5 value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 6 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('True or False: After you commit something, it is automatically added to GitHub', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q6.True,
            groupValue: answer6,
            onChanged: (Q6 value) {
              setState(() {
                answer6 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q6.False,
            groupValue: answer6,
            onChanged: (Q6 value) {
              setState(() {
                answer6 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 7 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('True or False: You should always push to the master branch directly.', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q7.True,
            groupValue: answer7,
            onChanged: (Q7 value) {
              setState(() {
                answer7 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q7.False,
            groupValue: answer7,
            onChanged: (Q7 value) {
              setState(() {
                answer7 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 8 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('True or False: Cloning and pulling are the same thing.', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q8.True,
            groupValue: answer8,
            onChanged: (Q8 value) {
              setState(() {
                answer8 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q8.False,
            groupValue: answer8,
            onChanged: (Q8 value) {
              setState(() {
                answer8 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 9 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('What is the command to switch branches?', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('git-switch "branch name"'),
          leading: Radio(
            value: Q9.A,
            groupValue: answer9,
            onChanged: (Q9 value) {
              setState(() {
                answer9 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('git-checkout branch "branch name"'),
          leading: Radio(
            value: Q9.B,
            groupValue: answer9,
            onChanged: (Q9 value) {
              setState(() {
                answer9 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('git checkout -b "branch name"'),
          leading: Radio(
            value: Q9.C,
            groupValue: answer9,
            onChanged: (Q9 value) {
              setState(() {
                answer9 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(15),),
        Text(
          'Question 10 of 10',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0
          ),
        ),
        Text('Why should you include a message when committing changes?', style: TextStyle(fontSize: 17),),
        ListTile(
          title: Text('So you can talk to the other collaborators.'),
          leading: Radio(
            value: Q10.A,
            groupValue: answer10,
            onChanged: (Q10 value) {
              setState(() {
                answer10 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('You shouldn\'t, your changes should explain themselves'),
          leading: Radio(
            value: Q10.B,
            groupValue: answer10,
            onChanged: (Q10 value) {
              setState(() {
                answer10 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('So other people know what changes you made.'),
          leading: Radio(
            value: Q10.C,
            groupValue: answer10,
            onChanged: (Q10 value) {
              setState(() {
                answer10 = value;
              });
            },
          ),
        )
      ],
    );
  }

}