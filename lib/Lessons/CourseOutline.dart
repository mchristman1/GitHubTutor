//CourseOutline.dart

import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/KeyTerms.dart';
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
import 'package:github_tutor/Links.dart';
import 'package:github_tutor/Quizzes/FinalQuiz.dart';
import 'package:github_tutor/Quizzes/MidCourseQuiz.dart';

class CourseOutline extends StatelessWidget {

  //Course titles and numbers
  final Map<int, String> courseTitles = {
    0: '0. Introduction',
    1: '1. Introduction to Source Control',
    2: '2. Introduction to Github',
    3: '3. Setting up a Github account',
    4: '4. Setup for Mac or Windows',
    5: '5. Repositories',
    6: 'Mid-Course Quiz',
    7: '6. Commands for Mac or Windows',
    8: '7. Merging',
    9: 'Final Quiz',
    10: "A. Key Terms",
    11: "B. Links"
  };

  @override
  Widget build(BuildContext context) {

    final progressBloc = BlocProvider.of<ProgressBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Course Outline',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: buildStreamBuilder(progressBloc),
    );
  }

  //Builds a list for the courses
  Widget buildList(BuildContext context) {
    final progressBloc = BlocProvider.of<ProgressBloc>(context);

    return SingleChildScrollView(
      child: Column (
        children: <Widget>[
          buildStreamBuilder(progressBloc)
        ],
      ) 
    );
  }

  //Builds a list tile with the params passed
  Widget buildListElement(String lessonName, context, index, bool unlocked) {
    return ListTile(
      enabled: unlocked,
      title: Text(lessonName),
      onTap: () {
        tilePressed(context, index);
      },
    );
  }

  //BLoC usage
  //Calls the BLoC to listen to updates and get the users
  //progress
  Widget buildStreamBuilder(ProgressBloc progressBloc) {
    return StreamBuilder<Map<int, bool>>(
      stream: progressBloc.lessonStream,
      initialData: progressBloc.currentUnlockedLessons,
      builder: (context, snapshot) {
        if(snapshot.data == null) {
          return Text('Something went wrong.');
        }

        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (context, i) {
            final key = i;
            return buildListElement(courseTitles[key], context, key, snapshot.data[key]);
          },
        );
      },
    );
  }

  //Take users to the lesson when it is tapped
  Future tilePressed(context, tileNumber) async {
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
                    Navigator.of(buildContext).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SetupForWindows()));
                  },
                ),
                FlatButton(
                  child: Text('Mac'),
                  onPressed: () {
                    Navigator.of(buildContext).pop();
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
                      Navigator.of(buildContext).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WindowsCommands()));
                    },
                  ),
                  FlatButton(
                    child: Text('Mac'),
                    onPressed: () {
                      Navigator.of(buildContext).pop();
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
                      Navigator.of(buildContext).pop();
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
      case 10:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KeyTerms())
        );
        break;
      case 11:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Links())
        );
        break;
      default:
        break;
    }
  }
}