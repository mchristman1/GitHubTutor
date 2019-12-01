import 'package:flutter/material.dart';

class WindowsCommandsQuizResults extends StatelessWidget {

  final int score;
  final int correct;
  final List<String> studentAnswers;

  WindowsCommandsQuizResults({this.score, this.correct, this.studentAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Results',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: buildQuiz(context)),
    );
  }

  Widget buildQuiz(BuildContext context) {

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
                style: TextStyle(fontSize: 17.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Score: $score\nCorrect: $correct out of 10\n\n',
                  ),
                  TextSpan(
                      text: score >= 80 ? 'Quiz passed, review your answers and continue.' :
                      'Quiz failed, review your answers and try again.'
                  ),
                ]
            ),
          ),
        ),
        Divider(height: 3, thickness: 3,),
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
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('The action that adds files to GitHub.'),
          leading:Icon(
            studentAnswers[0] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('The action that creates new files on GitHub.'),
          leading:  Icon(
            studentAnswers[0] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[1] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('The action that adds the changes to the remote repository.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('The action to save files in a local repository.'),
          leading: Icon(
            studentAnswers[1] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('There is no such thing.'),
          leading:  Icon(
            studentAnswers[2] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('A file in a GitHub repository.'),
          leading: Icon(
            studentAnswers[2] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[3] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('The action of downloading a branch from a repository.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Tracking of a new branch.'),
          leading: Icon(
            studentAnswers[3] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[4] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('git init'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('git create "repository name"'),
          leading: Icon(
            studentAnswers[4] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[5] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
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
          leading: Icon(
            studentAnswers[6] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
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
          leading: Icon(
            studentAnswers[7] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
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
          leading: Icon(
            studentAnswers[8] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('git-checkout branch "branch name"'),
          leading: Icon(
            studentAnswers[8] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('git checkout -b "branch name"'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
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
          leading: Icon(
            studentAnswers[9] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('You shouldn\'t, your changes should explain themselves'),
          leading: Icon(
            studentAnswers[9] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('So other people know what changes you made.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        Divider(height: 3, thickness: 3,),
        RaisedButton(
          child: Text('Continue', style: TextStyle(fontSize: 17.0, color: Colors.white),),
          color: Colors.green,
          onPressed: () { Navigator.popUntil(context, ModalRoute.withName('CourseOutline')); },
        )
      ],
    );
  }
}