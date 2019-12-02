//AccountQuizResults.dart

import 'package:flutter/material.dart';
import 'package:github_tutor/Constants.dart';

class AccountQuizResults extends StatelessWidget {

  final int score;
  final int correct;
  final List<String> studentAnswers;

  AccountQuizResults({this.score, this.correct, this.studentAnswers});

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

  ChoicesMC answer1 = ChoicesMC.NULL;
  ChoicesMC answer2 = ChoicesMC.NULL;
  ChoicesMC answer3 = ChoicesMC.NULL;
  ChoicesMC answer4 = ChoicesMC.NULL;
  ChoicesMC answer5 = ChoicesMC.NULL;



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
                    text: 'Score: $score%\nCorrect: $correct out of 5\n\n',
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
                    text: 'Question 1 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'What should you do when creating a username?',
                  ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Keep it professional.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Be creative.'),
          leading: Icon(
            studentAnswers[0] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Whatever you want.'),
          leading: Icon(
            studentAnswers[0] == 'C' ? Icons.close : null, color: Colors.red,
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
                    text: 'Question 2 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'What email should you use when creating an account?',
                  ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Your spam account.'),
          leading: Icon(
            studentAnswers[1] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Your school account.'),
          leading: Icon(
            studentAnswers[1] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('An email you check often.'),
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
                    text: 'Question 3 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'What should your password be?',
                  ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Secure.'),
          leading: Icon(
            studentAnswers[2] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Memorable.'),
          leading: Icon(
            studentAnswers[2] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('All of the above.'),
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
                  TextSpan(text: 'Question 4 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'What sorts of plans are offered?',
                  ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Free and paid plans for individuals and teams.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Individual plans only.'),
          leading:Icon(
            studentAnswers[3] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Free plans for teams and enterprises.'),
          leading: Icon(
            studentAnswers[3] == 'C' ? Icons.close : null, color: Colors.red,
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
                    text: 'Question 5 of 5\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Which of the below is NOT a feature of your free account?',
                  ),
                ]
            ),
          ),
        ),
        ListTile(
          title: Text('Unlimited public repositories'),
          leading: Icon(
            studentAnswers[4] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('Unlimited collaborators on private repositories.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Unlimited private repositories.'),
          leading: Icon(
            studentAnswers[4] == 'C' ? Icons.close : null, color: Colors.red,
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