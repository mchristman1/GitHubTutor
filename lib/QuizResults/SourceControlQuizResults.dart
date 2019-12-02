import 'package:flutter/material.dart';

class SourceControlQuizResults extends StatelessWidget {
  final int score;
  final int correct;
  final List<String> studentAnswers;

  SourceControlQuizResults({this.score, this.correct, this.studentAnswers});

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
      body: SingleChildScrollView(
          child: buildQuiz(context, score, correct, studentAnswers)),
    );
  }

  Widget buildQuiz(
      BuildContext context, score, correct, List<String> studentAnswers) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(15),
        ),
        Text(
          'Results',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 17.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Score: $score%\nCorrect: $correct out of 2\n\n',
                  ),
                  TextSpan(
                    text:  score > 80
                        ? 'Quiz passed, review your answers and continue to the next lesson.'
                        : 'Quiz failed, review your answers and try again.',
                  )
                ]
            ),
          ),
        ),
        Divider(
          height: 3,
          thickness: 3,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(text: 'Question 1 of 2\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'What is source control?',
                  ),
                ]
            ),
          ),
        ),
        ListTile(
            title: Text(
                'Management of changes to documents, programs, and other collections of information.'),
            leading: Icon(
              Icons.check,
              color: Colors.green,
            )),
        ListTile(
            title: Text('Managing changes to code only.'),
            leading: Icon(
              studentAnswers[0] == 'B' ? Icons.close : null,
              color: Colors.red,
            )),
        ListTile(
            title: Text('GitHub'),
            leading: Icon(
              studentAnswers[0] == 'C' ? Icons.close : null,
              color: Colors.red,
            )),
        Divider(height: 3, thickness: 3),
        Container(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Question 2 of 2\n',
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                  TextSpan(
                    text: 'Why is source control important?',
                  ),
                ]
            ),
          ),
        ),
        ListTile(
            title:
                Text('Makes it easy to track changes throughout the project.'),
            leading: Icon(
              studentAnswers[1] == 'A' ? Icons.close : null,
              color: Colors.red,
            )),
        ListTile(
            title: Text(
                'To have something to revert back to in case something goes wrong and the current project cannot be recovered.'),
            leading: Icon(
              studentAnswers[1] == 'B' ? Icons.close : null,
              color: Colors.red,
            )),
        ListTile(
            title: Text('All of the above.'),
            leading: Icon(
              Icons.check,
              color: Colors.green,
            )),
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
