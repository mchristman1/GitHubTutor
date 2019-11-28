import 'package:flutter/material.dart';

enum Q1Choice { A, B, C, NULL }
enum Q2Choice { A, B, C, NULL }
enum Q3Choice { A, B, C, NULL }
enum Q4Choice { A, B, C, NULL }
enum Q5Choice { A, B, C, NULL }

class SetupWindowsQuizStatefulWidget extends StatefulWidget {
  SetupWindowsQuizStatefulWidget({Key key}) : super(key : key);

  @override
  SetupWindowsQuizState createState() => SetupWindowsQuizState();
}

class SetupWindowsQuizState extends State<SetupWindowsQuizStatefulWidget> {
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

  Q1Choice answer1 = Q1Choice.NULL;
  Q2Choice answer2 = Q2Choice.NULL;
  Q3Choice answer3 = Q3Choice.NULL;
  Q4Choice answer4 = Q4Choice.NULL;
  Q5Choice answer5 = Q5Choice.NULL;

  Widget buildQuiz() {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 1 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is the first step for setting up GitHub interaction on Windows?'),
        ListTile(
          title: Text('Download Git Bash.'),
          leading: Radio(
            value: Q1Choice.A,
            groupValue: answer1,
            onChanged: (Q1Choice value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Generate an SSH Key'),
          leading: Radio(
            value: Q1Choice.B,
            groupValue: answer1,
            onChanged: (Q1Choice value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('None of the above.'),
          leading: Radio(
            value: Q1Choice.C,
            groupValue: answer1,
            onChanged: (Q1Choice value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 2 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is the command to generate the SSH key?'),
        ListTile(
          title: Text('ssh-key generate rsa -b 4096 -C "your email address"'),
          leading: Radio(
            value: Q2Choice.A,
            groupValue: answer2,
            onChanged: (Q2Choice value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('ssh-keygen -t rsa -b 4096 -C "your email address"'),
          leading: Radio(
            value: Q2Choice.B,
            groupValue: answer2,
            onChanged: (Q2Choice value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('ssh-keygen -t aes -e 4077 -C "your email address"'),
          leading: Radio(
            value: Q2Choice.C,
            groupValue: answer2,
            onChanged: (Q2Choice value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 3 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('How is the SSH key stored?'),
        ListTile(
          title: Text('In a file called C:/Users/username/.ssh/id_rsa'),
          leading: Radio(
            value: Q3Choice.A,
            groupValue: answer3,
            onChanged: (Q3Choice value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('As plaintext in a file called C:/Users/username/sshkey.txt'),
          leading: Radio(
            value: Q3Choice.B,
            groupValue: answer3,
            onChanged: (Q3Choice value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('On the desktop as a word document'),
          leading: Radio(
            value: Q3Choice.C,
            groupValue: answer3,
            onChanged: (Q3Choice value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        Divider( height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 4 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is the first step when adding the SSH key to the SSH-Agent (after opening Git Bash)?'),
        ListTile(
          title: Text('Start the SSH-Agent.'),
          leading: Radio(
            value: Q4Choice.A,
            groupValue: answer4,
            onChanged: (Q4Choice value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Copy the SSH key to the clipboard.'),
          leading: Radio(
            value: Q4Choice.B,
            groupValue: answer4,
            onChanged: (Q4Choice value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Generate a different key'),
          leading: Radio(
            value: Q4Choice.C,
            groupValue: answer4,
            onChanged: (Q4Choice value) {
              setState(() {
                answer4 = value;
              });
            },
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
          leading: Radio(
            value: Q5Choice.A,
            groupValue: answer5,
            onChanged: (Q5Choice value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Paste it in a text file.'),
          leading: Radio(
            value: Q5Choice.B,
            groupValue: answer5,
            onChanged: (Q5Choice value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Add it to your account on GitHub.'),
          leading: Radio(
            value: Q5Choice.C,
            groupValue: answer5,
            onChanged: (Q5Choice value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
      ],
    );
  }

}