import 'package:flutter/material.dart';

enum Q1 {A, B, C, NULL}
enum Q2 {A, B, C, NULL}
enum Q3 {A, B, C, NULL}
enum Q4 {A, B, C, NULL}
enum Q5 {A, B, C, NULL}

class MergingQStatefulWidget extends StatefulWidget {
  MergingQStatefulWidget({Key key}) : super(key : key);

  @override
  MergingQuizState createState() => MergingQuizState();
}

class MergingQuizState extends State<MergingQStatefulWidget> {
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

  Q1 answer1 = Q1.NULL;
  Q2 answer2 = Q2.NULL;
  Q3 answer3 = Q3.NULL;
  Q4 answer4 = Q4.NULL;
  Q5 answer5 = Q5.NULL;

  Widget buildQuiz() {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(15),),
        Text('Question 1 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a merge?'),
        ListTile(
          title: Text('Taking two branches and combining them.'),
          leading: Radio(
            value: Q1.A,
            groupValue: answer1,
            onChanged: (Q1 value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Overwriting one branch with another.'),
          leading: Radio(
            value: Q1.B,
            groupValue: answer1,
            onChanged: (Q1 value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Pulling one branch into another.'),
          leading: Radio(
            value: Q1.C,
            groupValue: answer1,
            onChanged: (Q1 value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Text('Question 2 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('How would you merge a branch into master?'),
        ListTile(
          title: Text('Switch to the branch to be merged in and run "git merge master"'),
          leading: Radio(
            value: Q2.A,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Switch to master and run "git merge other-branch-name"'),
          leading: Radio(
            value: Q2.B,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Go to GitHub and use the merge wizard.'),
          leading: Radio(
            value: Q2.C,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Text('Question 3 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('Which branch gets changed during a merge?'),
        ListTile(
          title: Text('The branch the user is on.'),
          leading: Radio(
            value: Q3.A,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('The branch to be merged.'),
          leading: Radio(
            value: Q3.B,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('The branches do not change, a new branch is created.'),
          leading: Radio(
            value: Q3.C,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Text('Question 4 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('What is a merge conflict?'),
        ListTile(
          title: Text('When the branches to be merged are the same.'),
          leading: Radio(
            value: Q4.A,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('When the branch to be merged in does not exist.'),
          leading: Radio(
            value: Q4.B,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('When Git cannot automatically determine what changes to keep.'),
          leading: Radio(
            value: Q4.C,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(15),),
        Divider(height: 3, thickness: 3,),
        Text('Question 5 of 5',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text('When does a merge conlict occur?'),
        ListTile(
          title: Text('When the same file in the two branches has been changed.'),
          leading: Radio(
            value: Q5.A,
            groupValue: answer5,
            onChanged: (Q5 value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('When new files have been added.'),
          leading: Radio(
            value: Q5.B,
            groupValue: answer5,
            onChanged: (Q5 value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('When the branches have different file name with the same extension.'),
          leading: Radio(
            value: Q5.C,
            groupValue: answer5,
            onChanged: (Q5 value) {
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