//GitHubIntroduction.dart

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:github_tutor/Quizzes/IntroToGitHubQuiz.dart';
class GitHubIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'GitHub Introduction',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: buildLesson(context),
      ),
    );
  }

  //Build the lesson body
  Widget buildLesson(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 15.0),),
        Text(
          lessonHeaders[0],
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
          Container(
            padding: EdgeInsets.all(25.0),
            child: lessonContent[0],
          ),
        Text(
          lessonHeaders[1],
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: lessonContent[1],
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text(
          lessonHeaders[2],
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: lessonContent[2],
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text(
          lessonHeaders[3],
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: lessonContent[3],
        ),
        Padding(padding: EdgeInsets.only(top: 15.0),),
        Text(
          lessonHeaders[4],
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: lessonContent[4],
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text(
          lessonHeaders[5],
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: lessonContent[5],
        ),
        Divider(height: 3, thickness: 3,),
        RaisedButton(
          child: Text(
            'Quiz',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          color: Color.fromRGBO(16, 116, 231, 1),
          onPressed: () {
            goToQuiz(context);
          },
        )
      ],
    );
  }

  //Go to the quiz
  Future goToQuiz(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IntroGitHubQStatefulWidget())
    );
  }

  static final TextStyle headerStyle = TextStyle(
      fontFamily: 'Arial',
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: Colors.black
  );

  static final TextStyle bodyStyle = TextStyle(
    fontFamily: 'Arial',
    fontSize: 17,
    color: Colors.black,
  );

  static final TextStyle boldText = TextStyle(
    fontFamily: 'Arial',
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  final lessonHeaders = [
    'Introduction',
    'Objectives',
    'What is Git?',
    'What is GitHub?',
    'How is GitHub Used?',
    'Real World Examples',
  ];

  final List<RichText> lessonContent = [
    //Introduction
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'This lesson serves as an introduction to '
          ),
          TextSpan(
            text: 'GitHub',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '. This lesson will provide a general overview of Github to prepare you for the rest of the course.'
          ),
        ]
      ),
    ),

    //Objectives
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'This lesson has the following objectives:\n'
                '1) The student will have some general knowledge about Github.\n'
                '2) The student will be able to give some examples of what Github is used for.'
          )
        ]
      ),
    ),

    //What is Git?
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Now before getting into what Github is, it is important to note an important distinction between Git and Github. '
                'We will talk about both of these in detail later in this lesson, but it is important to note that Git and GitHub are '
                'NOT the same thing.\n\n'
          ),
          TextSpan(text: 'GitHub', style: TextStyle(fontWeight: FontWeight.bold),),
          TextSpan(text: ' is a '),
          TextSpan(text: 'hosting service', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(text: ' whereas '),
          TextSpan(text: 'Git', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' is a '),
          TextSpan(text: 'version control system.\n\n', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(text: 'In short, Git is how GitHub provides source control. '),
          TextSpan(text: 'Git', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text: ' is a version control system which enables developers to track changes in source code. '
                  'Git is the most widely used version control system today and many projects rely on it. '
                  'The reason why Git is so popular compared to other version control systems is because Git is flexible, secure, and efficient.\n'
                  'In fact, many hosting services have adopted Git as their version control system. '
                  'It is important to know what Git is since GitHub uses it to provide version control to its customers. '
                  'Additionally, most of the information in this tutorial is for Git; '
                  'GitHub is just the platform chosen to utilize the powerful version control system.\n\n'
                  'As such, you will be able to take much of the information you learn in during the course and apply to other hosting services!'
          ),
        ]
      ),
    ),

    //What is GitHub?
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(text: 'Now that you know what '),
          TextSpan(text: 'Git', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' is, it is time to discuss the platform used for this course, GitHub. '),
          TextSpan(text: 'GitHub', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' is a hosting service that provides version control using Git.\n\nNow with over '),
          TextSpan(text: '37 million', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
              text: ' users, GitHub is the largest host of source code in the world. '
                  'Now you may be wondering, why is GitHub used by so many people?\n\n'
                  'There are multiple answers to that question. One may argue the reason '
                  'is because GitHub is largely used for open source projects and because of that, '
                  'developers are able to share and improve upon each other’s works.\n\n'
                  'Another reason is GitHub makes version control easy and provides '
                  'many features which include documentation, cloud hosting, and code reviewing.\n\n'
                  'This course will only cover how to '
          ),
          TextSpan(text: 'store and manage project files', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
            text: ', but these other features are good to know as they make project management easier.\n\n'
                'Checkout GitHub and all its features at '
          ),
          TextSpan(
            text: 'https://github.com/',
            style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()..onTap = () {launch('https://github.com/');}
          ),
          TextSpan(text: '.'),
        ]
      ),
    ),

    //How is GitHub used?
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'GitHub is used in a variety of different ways. As mentioned in the previous section, GitHub provides many features.\n\n'
                'Though most use it for source control and code management, GitHub can also be used for things such as '
          ),
          TextSpan(text: 'documentation and website hosting.', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
            text: '\nThis course will only focus on source control and code management, but if you are interested, be sure to check out all the features GitHub has to offer.\n'
                'Code on GitHub is stored in what are known as '
          ),
          TextSpan(text: 'repositories', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
            text: '. These repositories can either be public or private. Those made private will remain so to the repositories’ owner and the repositories’ members.\n'
                'Those made public however are available for the '
          ),
          TextSpan(text: 'world', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
            text: ' to see and access. This is part of the reason GitHub is so popular. '
                'Many developers host code publicly to get feedback from developers around the world.\n\n'
                'To access public a public repository, just go to www.github.com/[username]/[repository name]. '
                'The [username] is the username of the developer who manages the GitHub account where the repository is located.\n\n'
                'The [repository name] is just the name the owner has given to the repository. Another great way to check out repositories is to click on the '
          ),
          TextSpan(text: 'Explore', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
            text: ' tab on the main page. From here, you can browse public repositories from around the globe.'
          )
        ]
      )
    ),

    //Real world examples
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'As you may have noticed, GitHub is huge and as such, many big companies use it. '
                'Companies such as Amazon, Apple, and Facebook constantly upload both public and private code.\n\n'
                'For example, Amazon uses GitHub to host its '
          ),
          TextSpan(text: 'Software Development Kit (SDK)', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
            text: ' for the Alexa Skills Kit. The repository can be found at '
          ),
          TextSpan(
            text: 'https://github.com/alexa/alexa-skills-kit-sdk-for-nodejs',
            style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()..onTap = (){
              print('This is a test');
              launch('https://github.com/alexa/alexa-skills-kit-sdk-for-nodejs');
            }
          ),
          TextSpan(
              text: '.\n\n'
                  'Specifically, this repository provides an SDK to help developers '
                  'create skills for Amazon\'s Alexa using node.js. '
                  'Since Amazon has decided to host this repository publicly,'
                  ' people are able to easily create skills for Alexa without needing to worry about '
                  'the boiler-plate code to set it up.\n\n'
                  'Another advantage to hosting a public repository is developers are '
                  'able to report any bugs directly to the host. This makes it so bugs '
                  'can be found and then patched quickly.\n\n'
                  'These are just some of the many ways people from around the world are using GitHub.'
          )
        ]
      ),
    )

  ];
}