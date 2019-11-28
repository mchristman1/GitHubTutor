import 'package:flutter/material.dart';

enum Q1Choice{ A, B, C, NULL }
enum Q2Choice{ A, B, C, NULL }
enum Q3Choice{ True, False, NULL }
enum Q4Choice{ A, B, C, NULL }
enum Q5Choice{ True, False, NULL }

class RepoQuizStatefulWidget extends StatefulWidget {
  RepoQuizStatefulWidget({Key key}) : super(key: key);

  @override
  RepositoryQuizState createState() => RepositoryQuizState();
}

class RepositoryQuizState extends State<RepoQuizStatefulWidget> {
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
        Text('What is a repository?'),
        ListTile(
          title: Text('A fancy term for a project on GitHub.'),
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
          title: Text('Where project files are stored on GitHub.'),
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
          title: Text('Where old versions of files are stored.'),
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
        Text('What is a collaborator?'),
        ListTile(
          title: Text('People given permission to contrbute to the repository.'),
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
          title: Text('People who can only view the repository.'),
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
          title: Text('Anyone who commits to the project.'),
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
        Text('True or False: Collaborators are given read and write permissions by default.'),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q3Choice.True,
            groupValue: answer3,
            onChanged: (Q3Choice value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q3Choice.False,
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
        Text('When creating a repository, what should the name be?'),
        ListTile(
          title: Text('Something creative.'),
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
          title: Text('Something unique and interesting.'),
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
          title: Text('Something that describes the project.'),
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
        Text('True or False: A public repository can only be viewed by those the creator has listed under the "viewers" tab.'),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q5Choice.True,
            groupValue: answer5,
            onChanged: (Q5Choice value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q5Choice.False,
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