import 'package:flutter/material.dart';

class SetupMacQuizResults extends StatelessWidget {

  final int score;
  final int correct;
  final List<String> studentAnswers;

  SetupMacQuizResults({this.score, this.correct, this.studentAnswers});


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
        Text('What is the first step for setting up GitHub interaction on a Mac?'),
        ListTile(
          title: Text('Download Git for Mac.'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Generate an SSH Key'),
          leading: Icon(
            studentAnswers[0] == 'B' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('None of the above.'),
          leading: Icon(
            studentAnswers[0] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 2 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is the command to generate the SSH key?'),
        ListTile(
          title: Text('ssh-key generate rsa -b 4096 -C "your email address"'),
          leading: Icon(
            studentAnswers[1] == 'A' ? Icons.close : null, color: Colors.red,
          )
        ),
        ListTile(
          title: Text('ssh-keygen -t rsa -b 4096 -C "your email address"'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('ssh-keygen -t aes -e 4077 -C "your email address"'),
          leading: Icon(
            studentAnswers[1] == 'C' ? Icons.close : null, color: Colors.red,
          )
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 3 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('How is the SSH key stored?'),
        ListTile(
          title: Text('In a file called Users/username/.ssh/id_rsa'),
          leading: Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('As plaintext in a file called Users/username/sshkey.txt'),
          leading: Icon(
            studentAnswers[2] == 'B' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('On the desktop as a word document'),
          leading:  Icon(
            studentAnswers[2] == 'C' ? Icons.close : null, color: Colors.red,
          ),
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 4 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is the first step when adding the SSH key to the SSH-Agent?'),
        ListTile(
          title: Text('Start the SSH-Agent.'),
          leading:  Icon(
            Icons.check, color: Colors.green,
          )
        ),
        ListTile(
          title: Text('Copy the SSH key to the clipboard.'),
          leading:  Icon(
            studentAnswers[3] == 'B' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('Generate a different key'),
          leading: Icon(
            studentAnswers[3] == 'C' ? Icons.close : null, color: Colors.red,
          ),
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 5 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('After the SSH key has been copied to your clipboard, what should you do next?'),
        ListTile(
          title: Text('This is not a step.'),
          leading: Icon(
            studentAnswers[4] == 'A' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('Paste it in a text file.'),
          leading:Icon(
            studentAnswers[4] == 'B' ? Icons.close : null, color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('Add it to your account on GitHub.'),
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