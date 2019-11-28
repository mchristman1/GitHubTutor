import 'package:flutter/material.dart';

enum Q1AnswerChoices { A, B, C, Null }
enum Q2AnswerChoices { A, B, C, Null }

class SrcControlQStatefulWidget extends StatefulWidget {
  SrcControlQStatefulWidget({Key key}) : super(key: key);

  @override
  SourceControlQuizState createState() => SourceControlQuizState();
}

class SourceControlQuizState extends State<SrcControlQStatefulWidget> {
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

  Q1AnswerChoices answer1 = Q1AnswerChoices.Null;
  Q2AnswerChoices answer2 = Q2AnswerChoices.Null;

  Widget buildQuiz() {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10),),
        Text('Question 1 of 2',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center),
        Text(
          'What is source control?',
          style: TextStyle(fontSize: 17),
        ),
        ListTile(
          title: Text('Management of changes to documents, programs, and other collections of information.'),
          leading: Radio(
            value: Q1AnswerChoices.A,
            groupValue: answer1,
            onChanged: (Q1AnswerChoices value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Managing changes to code only.'),
          leading: Radio(
            value: Q1AnswerChoices.B,
            groupValue: answer1,
            onChanged: (Q1AnswerChoices value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('GitHub'),
          leading: Radio(
            value: Q1AnswerChoices.C,
            groupValue: answer1,
            onChanged: (Q1AnswerChoices value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 2 of 2',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          textAlign: TextAlign.center,
        ),
        Text(
          'Why is source control important?',
          style: TextStyle(fontSize: 17),
        ),
        ListTile(
          title: Text('Makes it easy to track changes throughout the project.'),
          leading: Radio(
            value: Q2AnswerChoices.A,
            groupValue: answer2,
            onChanged: (Q2AnswerChoices value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('To have something to revert back to in case something goes wrong and the current project cannot be recovered.'),
          leading: Radio(
            value: Q2AnswerChoices.B,
            groupValue: answer2,
            onChanged: (Q2AnswerChoices value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('All of the above.'),
          leading: Radio(
            value: Q2AnswerChoices.C,
            groupValue: answer2,
            onChanged: (Q2AnswerChoices value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        RaisedButton(
          color: Color.fromRGBO(46, 188, 79, 1),
          child: Text(
            'Submit',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
