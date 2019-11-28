import 'package:flutter/material.dart';
import 'package:github_tutor/Lessons/AccountLesson.dart';
import 'package:github_tutor/Lessons/CourseIntroduction.dart';
import 'package:github_tutor/Lessons/GitHubIntroduction.dart';
import 'package:github_tutor/Lessons/MacCommands.dart';
import 'package:github_tutor/Lessons/MergingLesson.dart';
import 'package:github_tutor/Lessons/WindowsCommands.dart';
import 'package:github_tutor/Lessons/RepositoryLesson.dart';
import 'package:github_tutor/Lessons/SetupForMac.dart';
import 'package:github_tutor/Lessons/SetupForWindows.dart';
import 'package:github_tutor/Lessons/SourceControlLesson.dart';
import 'package:github_tutor/Quizzes/FinalQuiz.dart';
import 'package:github_tutor/Quizzes/MidCourseQuiz.dart';

class CourseOutline extends StatelessWidget {
  final List<String> courseTitles = [
    "0. Introduction",
    "1. Introduction to Source Control",
    "2. Introduction to Github",
    "3. Setting up a Github account",
    "4. Setup for Mac or Windows",
    "5. Repositories",
    "Mid-Course Quiz",
    "6. Commands for Mac or Windows",
    "7. Merging",
    "Final Quiz",
    "A. Key Terms",
    "B. Links"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Course Outline',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
        itemCount: courseTitles.length,
        itemBuilder: (context, i) {
          final index = i;
          return buildListElement(courseTitles[index], context, index);
        });
  }

  Widget buildListElement(String lessonName, context, index) {
    return ListTile(
      title: Text(lessonName),
      onTap: () {
        tilePressed(context, index);
      },
    );
  }

  Future tilePressed(context, tileNumber) async {
//    Navigator.push(
//        context,
//        MaterialPageRoute(builder: (context) => SourceControlLesson()));
    switch(tileNumber) {
      case 0:
        //go to course intro
        Navigator.push(context, MaterialPageRoute(builder: (context) => CourseIntroduction()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => SourceControlLesson()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => GitHubIntroduction()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => AccountLesson()));
        break;
      case 4:
        showDialog(
          context: context,
          builder: (BuildContext buildContext) {
            return AlertDialog(
              title: Text('Windows or Mac?'),
              content: Text('This lesson has two different versions. Use the buttons below to select your preferred operating system.'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Windows'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SetupForWindows()));
                  },
                ),
                FlatButton(
                  child: Text('Mac'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SetupForMac()));
                  },
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(buildContext).pop();
                  },
                ),
              ],
            );
          }
        );
        break;
      case 5:
        Navigator.push(context, MaterialPageRoute(builder: (context) => RepositoryLesson()));
        break;
      case 6:
        //Mid term
        Navigator.push(context, MaterialPageRoute(builder: (context) => MidCourseQStatefulWidget()));
        break;
      case 7:
        showDialog(
            context: context,
            builder: (BuildContext buildContext) {
              return AlertDialog(
                title: Text('Windows or Mac?'),
                content: Text('This lesson has two different versions. Use the buttons below to select your preferred operating system.'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Windows'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WindowsCommands()));
                    },
                  ),
                  FlatButton(
                    child: Text('Mac'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MacCommands()));
                    },
                  ),
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(buildContext).pop();
                    },
                  ),
                ],
              );
            }
        );
        break;
      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MergingLesson())
        );
        break;
      case 9:
        showDialog(
            context: context,
            builder: (BuildContext buildContext) {
              return AlertDialog(
                title: Text('Are you ready?'),
                content: Text('You are about to enter the final quiz for the course. The final quiz is 20 questions and heavily focuses on vocabulary.'
                    'If you are ready, press "I am ready." If you would like to review, press "Cancel."'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('I am ready'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FinalQStatefulWidget()));
                    },
                  ),
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(buildContext).pop();
                    },
                  ),
                ],
              );
            }
        );
        break;
      default:
        break;
    }
  }
}