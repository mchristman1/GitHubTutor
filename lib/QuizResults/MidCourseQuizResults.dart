//MidCourseQuizResults.dart

import 'package:flutter/material.dart';

class MidCourseQuizResults extends StatelessWidget {

  final int score;
  final int correct;
  final List<String> studentAnswers;

  MidCourseQuizResults({this.score, this.correct, this.studentAnswers});

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
                    text: 'Score: $score%\nCorrect: $correct out of 15\n\n',
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
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 1 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'True or False: Source control and version control are NOT the same thing.' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Icon(
            studentAnswers[0] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading:  Icon(
    Icons.check, color: Colors.green,
    )
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 2 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is source control?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Management of changes to documents, programs, and other collections of information.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Management of documentation only.'),
          leading:Icon(
            studentAnswers[1] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Controlling the amount of resources for a project.'),
          leading: Icon(
            studentAnswers[1] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 3 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is GitHub?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('A software hosting service.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('A version control system.'),
          leading: Icon(
            studentAnswers[2] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('A website for hosting documentation.'),
          leading: Icon(
            studentAnswers[2] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 4 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan( text: 'How does GitHub provide source control?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Through a custom system.'),
          leading: Icon(
            studentAnswers[3] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('GitHub does not provide source control.'),
          leading:Icon(
            studentAnswers[3] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Through a system called Git.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 5 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is Git?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('A version control system.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('A software hosting company.'),
          leading: Icon(
            studentAnswers[4] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('A security software.'),
          leading: Icon(
            studentAnswers[4] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 6 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan( text: 'Which account plan should you use for this course?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Team Plan.'),
          leading:Icon(
            studentAnswers[5] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Pro Plan.'),
          leading: Icon(
            studentAnswers[5] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Free Plan.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 7 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'True or False: Your email should be an email you check often.' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            studentAnswers[6] == 'F' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 8 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan( text: 'True or False: Your username should be whatever you want it to be.' ),
                ]
            ),
          ),
        ),
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
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 9 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'True or False: GitHub offers free plans for teams.' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Icon(
            studentAnswers[8] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
    Icons.check, color: Colors.green,
    )

        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 10 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'Why do you need to download Git (Mac) or Git Bash (Windows)?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('To interact with GitHub from your computer.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('To create projects.'),
          leading: Icon(
            studentAnswers[9] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('To create a GitHub account.'),
          leading: Icon(
            studentAnswers[9] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 11 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What should you do after you download Git or Git Bash?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Create a repository.'),
          leading: Icon(
            studentAnswers[10] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Create a GitHub account.'),
          leading: Icon(
            studentAnswers[10] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Generate an SSH key'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 12 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is the last step for setup?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Add the SSH key to GitHub.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Create a new repository on GitHub.'),
          leading: Icon(
            studentAnswers[11] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Copy the SSH key to your clipboard.'),
          leading:Icon(
            studentAnswers[11] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 13 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What is a repository?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('A project on GitHub.'),
          leading:Icon(
            studentAnswers[12] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('A place where a project is hosted on GitHub.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('A chatroom for collaborators.'),
          leading: Icon(
            studentAnswers[12] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 14 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'True or False: Private repositories do NOT allow collaborators.' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('True'),
          leading: Icon(
            studentAnswers[13] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        Divider(height: 3, thickness: 3,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 15 of 15\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'What are the default permissions for collaborators?' ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Read and Write.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Read only.'),
          leading: Icon(
            studentAnswers[14] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Write only.'),
          leading: Icon(
            studentAnswers[14] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        RaisedButton(
          child: Text('Continue', style: TextStyle(fontSize: 17.0, color: Colors.white),),
          color: Colors.green,
          onPressed: () { Navigator.popUntil(context, ModalRoute.withName('/CourseOutline')); },
        )
      ],
    );
  }
}