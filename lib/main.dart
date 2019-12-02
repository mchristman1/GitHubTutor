//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/BLoC/progress-bloc.dart';
import 'package:github_tutor/Constants.dart';
import 'package:github_tutor/Lessons/CourseOutline.dart';
import 'package:github_tutor/ProgressStorage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProgressBloc>(
        bloc: ProgressBloc(ProgressStorage()),
        child: MaterialApp(
          title: 'Github Tutor',
          theme: ThemeData(backgroundColor: Colors.black),
          home: MainPage(),
          routes: {
            'CourseOutline': (BuildContext context) => CourseOutline()
          },
        ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Github Tutor',
        theme: ThemeData(backgroundColor: Colors.black),
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(32.00),
                ),
                Text(
                  'Github Tutor',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.00,
                      fontFamily: 'Arial-Black',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                ),
                Image.asset(
                  'imageAssets/GithubLogo.png',
                  width: 200,
                  height: 200,
                ),
                Padding(padding: EdgeInsets.only(top: 15.0),),
                Container(
                  height: 50,
                  width: 150,
                  child: RaisedButton(
                    color: Color.fromRGBO(46, 188, 79, 1),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: 'Arial'),
                    ),
                    onPressed: () {
                      getStartedPressed(context);
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0),),
                Container(
                  height: 50,
                  width: 150,
                  child: RaisedButton(
                      color: Color.fromRGBO(16, 116, 231, 1),
                      child: Text(
                        'About',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: 'Arial'),
                      ),
                      onPressed: () {
                        aboutPressed(context);
                      }),
                ),
              ],
            ))));
  }

  Future aboutPressed(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AboutRoute()));
  }

  Future getStartedPressed(context) async {
    Navigator.pushNamed(
        context, 'CourseOutline');
  }
}

class AboutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Text(
        """
                Welcome to the GitHub Tutor! This app is designed to intoduce a source control platform known as GitHub. GitHub is a widely used platform by developers to aid  project management.
                You do not need to know anything about GitHub or source control to successfully complete the course; however, you will need a computer that runs either Windows 10, or MacOS. You will also need an internet connection and administrator permissions on the computer you wish to use as you will be asked to download some software throughout the course.
                You should also know how to navigate your computer's file structure through either the terminal (Mac) or the command prompt (Windows).
                This app was developed by a St. Mary's University student throughout the Fall 2019 semester as a project for Elearning and Gamification.
                Thank you for using the GitHub Tutor!
                 Press the button below to be taken back to the sign in screen.  
              """,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
