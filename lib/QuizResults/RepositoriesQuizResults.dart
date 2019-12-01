import 'package:flutter/material.dart';

class RepositoryQuizResults extends StatelessWidget {

  final int score;
  final int correct;
  final List<String> studentAnswers;

  RepositoryQuizResults({this.score, this.correct, this.studentAnswers});

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
                    text: 'Score: $score\nCorrect: $correct out of 5\n\n',
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
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 1 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a repository?'),
        ListTile(
          title: Text('A fancy term for a project on GitHub.'),
          leading: Icon(
            studentAnswers[0] == 'A' ? Icons.close : null, color: Colors.red
          )
        ),
        ListTile(
          title: Text('Where project files are stored on GitHub.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Where old versions of files are stored.'),
          leading: Icon(
              studentAnswers[0] == 'C' ? Icons.close : null, color: Colors.red
          )
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 2 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a collaborator?'),
        ListTile(
          title: Text('People given permission to contrbute to the repository.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('People who can only view the repository.'),
          leading: Icon(
              studentAnswers[1] == 'B' ? Icons.close : null, color: Colors.red
          )
        ),
        ListTile(
          title: Text('Anyone who commits to the project.'),
          leading: Icon(
              studentAnswers[1] == 'C' ? Icons.close : null, color: Colors.red
          )
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 3 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: Collaborators are given read and write permissions by default.'),
        ListTile(
          title: Text('True'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
              studentAnswers[2] == 'F' ? Icons.close : null, color: Colors.red
          )
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 4 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('When creating a repository, what should the name be?'),
        ListTile(
          title: Text('Something creative.'),
          leading: Icon(
              studentAnswers[3] == 'A' ? Icons.close : null, color: Colors.red
          )
        ),
        ListTile(
          title: Text('Something unique and interesting.'),
          leading: Icon(
              studentAnswers[3] == 'B' ? Icons.close : null, color: Colors.red
          )
        ),
        ListTile(
          title: Text('Something that describes the project.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 5 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: A public repository can only be viewed by those the creator has listed under the "viewers" tab.'),
        ListTile(
          title: Text('True'),
          leading:Icon(
              studentAnswers[4] == 'T' ? Icons.close : null, color: Colors.red
          )
        ),
        ListTile(
          title: Text('False'),
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