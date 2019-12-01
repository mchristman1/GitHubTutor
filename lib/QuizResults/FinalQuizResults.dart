import 'package:flutter/material.dart';
import 'package:github_tutor/FinalScreen.dart';

class FinalQuizResults extends StatelessWidget {

  final int score;
  final int correct;
  final List<String> studentAnswers;

  FinalQuizResults({this.score, this.correct, this.studentAnswers});

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
                    text: 'Score: $score\nCorrect: $correct out of 20\n\n',
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
        Text('Question 1 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is source control?'),
        //B
        ListTile(
          title: Text('Controlling the number of resources for a project.'),
          leading: Icon(
            studentAnswers[0] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('The management of changes to documents, programs, and other collections of information.'),
          leading: Icon(
            Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('Tracking ownership of project source files.'),
          leading: Icon(
            studentAnswers[0] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[1] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('A software hosting service.'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('A software development company.'),
          leading: Icon(
            studentAnswers[1] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[2] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('A source control service.'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('A software hosting company.'),
          leading: Icon(
            studentAnswers[2] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('Where documentation is stored.'),
          leading: Icon(
            studentAnswers[3] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Where the database is stored.'),
          leading: Icon(
            studentAnswers[3] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('Someone who can ONLY comment on the project.'),
          leading: Icon(
            studentAnswers[4] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('An automatic code review bot.'),
          leading: Icon(
            studentAnswers[4] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[5] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('An auto-generated file for commit logs.'),
          leading: Icon(
            studentAnswers[5] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('A text file that contains information about the project and how to set it up.'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
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
          leading: Icon(
            studentAnswers[6] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('The action that prepares changes to be added to GitHub.'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('The action that informs collaborators of changes to be made.'),
          leading: Icon(
            studentAnswers[6] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('The action that informs collaborators of changes to be made.'),
          leading: Icon(
            studentAnswers[7] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('The action that prepares changes for GitHub.'),
          leading: Icon(
            studentAnswers[7] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('A part of the repository where documentation is stored.'),
          leading: Icon(
            studentAnswers[8] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('A part of the repository that contains information about commits.'),
          leading: Icon(
            studentAnswers[8] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[9] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Combining one branch with another.'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('Making changes to a branch.'),
          leading: Icon(
            studentAnswers[9] == 'C' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            studentAnswers[10] == 'F' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 5, thickness: 5,),
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 12 of 20',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('True or False: In a private repository, collaborators are NOT given read and write permissions by default.'),
        //F
        ListTile(
          title: Icon(
            studentAnswers[11] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
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
          leading: Icon(
            studentAnswers[12] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
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
          leading: Icon(
            studentAnswers[13] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
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
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            studentAnswers[14] == 'F' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            studentAnswers[15] == 'F' ? Icons.close : null, color: Colors.red,
          )
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
          leading: Icon(
            studentAnswers[16] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
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
          leading: Icon(
            studentAnswers[17] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
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
          leading: Icon(
            studentAnswers[18] == 'T' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
              Icons.check, color: Colors.green
          )
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
          leading: Icon(
              Icons.check, color: Colors.green
          )
        ),
        ListTile(
          title: Text('False'),
          leading: Icon(
            studentAnswers[19] == 'F' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider(height: 3, thickness: 3,),
        RaisedButton(
          child: Text('Continue', style: TextStyle(fontSize: 17.0, color: Colors.white),),
          color: Colors.green,
          onPressed: () {
            if(score >= 80) {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FinalScreen()));
            } else {
              Navigator.pop(context);
            }
          },
        )
      ],
    );
  }
}