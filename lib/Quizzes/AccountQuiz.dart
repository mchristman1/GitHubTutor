import 'package:flutter/material.dart';

enum Q1Choice { A, B, C, NULL }
enum Q2Choice { A, B, C, NULL }
enum Q3Choice { A, B, C, NULL }
enum Q4Choice { A, B, C, NULL }
enum Q5Choice { A, B, C, NULL }


class AccountQStatefulWidget extends StatefulWidget {
  AccountQStatefulWidget({Key key}) : super(key: key);

  @override
  AccountQuizState createState() => AccountQuizState();
}

class AccountQuizState extends State<AccountQStatefulWidget> {
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
        Text(
          'What should you do when creating a username?',
          style: TextStyle(fontSize: 17),
        ),
        ListTile(
          title: Text('Keep it professional.'),
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
          title: Text('Be creative.'),
          leading: Radio(
            value: Q1Choice.B,
            groupValue: answer1,
            onChanged: (Q1Choice value) {
              setState(() {
                answer1 = value;
              });
            }
          ),
        ),
        ListTile(
          title: Text('Whatever you want.'),
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
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 2 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text(
          'What email should you use when creating an account?',
          style: TextStyle(fontSize: 17),
        ),
        ListTile(
          title: Text('Your spam account.'),
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
          title: Text('Your school account.'),
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
          title: Text('An email you check often.'),
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
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 3 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text(
          'What should your password be?',
          style: TextStyle(fontSize: 17),
        ),
        ListTile(
          title: Text('Secure.'),
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
          title: Text('Memorable.'),
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
          title: Text('All of the above.'),
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
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 4 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text(
          'What sorts of plans are offered?',
          style: TextStyle(fontSize: 17),
        ),
        ListTile(
          title: Text('Free and paid plans for individuals and teams.'),
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
          title: Text('Individual plans only.'),
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
          title: Text('Free plans for teams and enterprises.'),
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
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 5 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text(
          'Which of the below is NOT a feature of your free account?',
          style: TextStyle(fontSize: 17),
        ),
        ListTile(
          title: Text('Unlimited public repositories'),
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
          title: Text('Unlimited collaborators on private repositories.'),
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
          title: Text('Unlimited private repositories.'),
          leading: Radio(
            value: Q5Choice.C,
            groupValue: answer5,
            onChanged: (Q5Choice value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        )
      ],
    );
  }
}