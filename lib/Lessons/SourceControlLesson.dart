import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/SourceControlQuiz.dart';


class SourceControlLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Source Control',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: buildLessonLayout(context)
      ),
    );
  }

  Widget buildLessonLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: buildLessonIntro(),
        ),
        Container(
          child: buildLessonContent(context),
        ),
      ],
    );
  }

  Widget buildLessonIntro() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Introduction',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        lessonIntro,
        Text(
          'Objectives',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        Text(
          lessonObj,
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        Divider(),
      ],
    );
  }

  Widget buildLessonContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          lessonHeaders[0],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        Text(
          lessonContent[0],
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        Text(
          lessonHeaders[1],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        Text(
          lessonContent[1],
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        Divider(height: 3.0, thickness: 3.0,),
        RaisedButton(
          color: Color.fromRGBO(16, 116, 231, 1),
          child: Text(
            'Quiz',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
            ),
          ),
          onPressed: () {
            quizPressed(context);
          },
        )
      ],
    );
  }

  Future quizPressed(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SrcControlQStatefulWidget())
    );
  }

  final lessonIntro = RichText(
    textAlign: TextAlign.right,
    text: TextSpan(
      style: TextStyle(
        fontSize: 17.0,
        color: Colors.black,
      ),
      children: [
        TextSpan(
          text: 'This lesson covers the technique known as '
        ),
        TextSpan(
          text:'Source Control',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: '. This lesson will provide a definition for source control and explain its importance.'
        )
      ]
    ),
  );

  final String lessonObj = """
  This lesson has the following objectives:

  1) The student will be able to define source control.
  2) The student will be able to explain why source control is important.
  """;

  final List<String> lessonHeaders = [
    "What is Source Control?",
    "Why is source Control needed?",
  ];

  final List<String> lessonContent = [
    """
    Source control is defined as "the management of changes to documents, programs, and other collections of information." Source control is sometimes referred to as "version control" or "revision control" as it is commonly used for managing versions of project files and documents  (including program files). 
    """,
    """
    Source control provides a way for developers manage versions of the product in development. This is useful as a developer can have a working version of the product while they make changes to it. Should anything happen during the development of a change, the developer can always revert back to the most recent version of the project and try again. It is common practice to keep a version for each change.
    """,
  ];
}