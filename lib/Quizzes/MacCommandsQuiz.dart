import 'package:flutter/material.dart';
import 'package:github_tutor/Constants.dart';

class MacCommandsQStatefulWidget extends StatefulWidget {
  MacCommandsQStatefulWidget({Key key}) : super(key : key);

  @override
  MacCommandsQuizState createState() => MacCommandsQuizState();
}

class MacCommandsQuizState extends State<MacCommandsQStatefulWidget> {

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
  ChoicesTF answer6 = ChoicesTF.NULL;
  ChoicesTF answer7 = ChoicesTF.NULL;
  ChoicesTF answer8 = ChoicesTF.NULL;
  ChoicesMC answer9 = ChoicesMC.NULL;
  ChoicesMC answer10 = ChoicesMC.NULL;

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
          title: Text('The action that adds files to GitHub.'),
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
          title: Text('The action that creates new files on GitHub.'),
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
          title: Text('The action that adds the changes to the remote repository.'),
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
          title: Text('The action to save files in a local repository.'),
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
          title: Text('There is no such thing.'),
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
          title: Text('A file in a GitHub repository.'),
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
          title: Text('The action of downloading a branch from a repository.'),
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
          title: Text('Tracking of a new branch.'),
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
          title: Text('git init'),
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
          title: Text('git create "repository name"'),
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
            value: ChoicesTF.True,
            groupValue: answer6,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer6 = value;
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
            value: ChoicesTF.True,
            groupValue: answer7,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer7 = value;
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
            value: ChoicesTF.True,
            groupValue: answer8,
            onChanged: (ChoicesTF value) {
              setState(() {
                answer8 = value;
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
          title: Text('git-checkout branch "branch name"'),
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
          title: Text('git checkout -b "branch name"'),
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
          title: Text('You shouldn\'t, your changes should explain themselves'),
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
          title: Text('So other people know what changes you made.'),
          leading: Radio(
            value: ChoicesMC.C,
            groupValue: answer10,
            onChanged: (ChoicesMC value) {
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