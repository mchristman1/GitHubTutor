//Account lesson.dart
//Account setup lesson

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:github_tutor/Lessons/ImageExpandedView.dart';
import 'package:github_tutor/Quizzes/AccountQuiz.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Account Setup',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: buildLesson(context),
      ),
    );
  }

  //Builds the lesson content
  Widget buildLesson(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 15),),
        Text(
          'Introduction',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 15),),
        Container(
          padding: EdgeInsets.all(15.0),
          child: introductionText,
        ),
        Padding(padding: EdgeInsets.only(top: 25),),
        Text(
          'Objectives',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 15),),
        Container(
          padding: EdgeInsets.all(15.0),
          child: objectiveText,
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.only(top: 15),),
        Text(
          'Exercise 1 - Account Creation',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 15),),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise1Text[0],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: GestureDetector(
            child: Image.asset(
                'imageAssets/GitHub-Account1.png'
            ),
            onTap: () {imageTapped(context, 'imageAssets/GitHub-Account1.png');},
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise1Text[1],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: GestureDetector (
            child: Image.asset(
                'imageAssets/GitHub-Account2.png'
            ),
            onTap: () { imageTapped(context, 'imageAssets/GitHub-Account2.png');},
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise1Text[2],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: GestureDetector (
            child: Image.asset(
                'imageAssets/GitHub-Account4.png'
            ),
            onTap: () { imageTapped(context, 'imageAssets/GitHub-Account4.png');},
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise1Text[3],
        ),
        Padding(padding: EdgeInsets.only(top: 25),),
        Text(
          'Exercise 2 - Setting up your profile',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 15),),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise2Text[0],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: GestureDetector(
            child: Image.asset(
                'imageAssets/GitHub-Account6.png'
            ),
            onTap: () {imageTapped(context, 'imageAssets/GitHub-Account6.png');},
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise2Text[1],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: GestureDetector(
            child: Image.asset(
                'imageAssets/GitHub-Account7.png'
            ),
            onTap: () {imageTapped(context, 'imageAssets/GitHub-Account7.png');},
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise2Text[2],
        ),
        Padding(padding: EdgeInsets.only(top: 25),),
        Text(
          'Additional information',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 15),),
        Container (
          padding: EdgeInsets.all(15.0),
          child: additionAccountInfo,
        ),
        Divider(height: 3, thickness: 3,),
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

  //Expands image
  Future imageTapped(context, String imagePath) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ImageExpandedView(imagePath: imagePath))
    );
  }

  //Takes user to quiz
  Future quizPressed(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AccountQStatefulWidget())
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

  final RichText introductionText = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      children: [
        TextSpan(
          text: 'This lesson covers how to create and manage a '
        ),
        TextSpan(text: 'GitHub account', style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: '. This lesson is divided into three different sections where you '
            'will complete various exercises related to account creation and management.'
        ),
      ]
    ),
  );

  final RichText objectiveText = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      children: [
        TextSpan(
          text: 'This lesson has the following objectives: \n\n'
              '1)	The student will have created a GitHub account.\n'
              '2)	The student will have basic knowledge on how to manage their account.\n'
              '3)	The student will have basic knowledge on the different features that come with a free GitHub account.'
        )
      ]
    ),
  );

  final List<RichText> exercise1Text = [
   RichText(
     textAlign: TextAlign.left,
     text: TextSpan(
       style: TextStyle(color: Colors.black, fontSize: 17.0),
       children: [
         TextSpan(text: 'To begin creating a GitHub account, go to '),
         TextSpan(
             text: 'http://www.github.com',
             style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
             recognizer: TapGestureRecognizer()..onTap = () { launch('http://www.github.com'); }
         ),
         TextSpan(
             text: '. Thankfully, GitHub makes creating an account very simple as '
                 'it provides the form on the home page of the website. To get started, '
                 'enter the information in the form (outlined in the screenshot below). '
                 'Note that when creating a username, keep it professional as potential '
                 'employers tend to look through GitHub for potential new hires. Also, '
                 'use an email you actively use and create a secure, but memorable password. '
                 'Once you’ve all the information, click the green '
         ),
         TextSpan(
           text: 'Sign up for GitHub',
           style: TextStyle(fontStyle: FontStyle.italic),
         ),
         TextSpan(text: ' button at the bottom of the form.')
       ]
     ),
   ),

    //insert image
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Should you have entered everything correctly, you should be on a screen that looks something like this: '
          )
        ]
      ),
    ),

    //insert image
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Complete the verification step on this page, select if you would like '
                'to get email offers, and then click the blue button at the bottom of the screen. '
                'The next screen will ask you about a plan. GitHub offers free and paid '
                'plans for both individuals and teams. Generally, '
                'you will be just fine with a free plan but if you need more '
                'you can always upgrade later. For this course, select the '
          ),
          TextSpan(
            text: 'free plan',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
              text: ' to continue.\n\n'
                  'Next, you will be asked some questions on how you intend to use GitHub. '
                  'Before you go further, check that you have the right plan selected. '
                  'The selected plan is shown under the black navigation bar. '
                  'Once you’ve confirmed the plan is correct, go ahead and answer '
                  'the questions to continue creating your account. '
                  'Once you have answered all questions, click the blue button '
                  'at the bottom of the page labeled '
          ),
          TextSpan(text: 'Complete Setup.', style: TextStyle(fontStyle: FontStyle.italic)),
        ]
      ),
    ),

    //insert image
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'If you see screen above, you have successfully created your '
                  'GitHub account! Be sure to check your email and verify your account.'
          ),
        ]
      ),
    ),
  ];

  final List<RichText> exercise2Text = [
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Now that you have created your GitHub account, '
                'lets walk through some features. To view your account’s features, '
                'click the icon in the top right (this should be some sort of '
                'pixelated picture). Upon doing so, you will be presented '
                'with a dropdown. From now on this will be called the '
          ),
          TextSpan(text: 'Profile Dropdown ', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
            text: '. \n\n'
                'From the profile dropdown, you can navigate to different things '
                'relating to your account. For now, click on '
          ),
          TextSpan(text: 'Your profile', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
            text: '. Upon doing so, you will be presented with a page similar to the one below. '
                'Ignore the numbers and red boxes in the picture for now, '
                'those will be explained later.'
          )
        ]
      ),
    ),

    //Insert image
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'From here, you can review your account activity, '
                'access repositories and projects, and modify your profile information. '
                'Your profile information is displayed on the left. '
                'The profile contains a profile picture (box 1), '
                'your name (if set) (box 2), your username (box 3), '
                'and a bio (box 4).  '
                'You can edit your bio on this page by clicking on '
          ),
          TextSpan(text: 'Edit Profile', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
            text: '. Go ahead and try it. Update your bio so that it gives an overview of you.\n\n'
                'Now you may be wondering “how can I change my profile picture?” '
                'To do this, you will need to go to the settings page. '
                'This can be accessed by clicking on your profile picture or by clicking on '
          ),
          TextSpan(text: 'Settings', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
            text: ' in the profile dropdown. Upon completion of either of '
                'those actions, you should be presented with a screen like '
                'the one below.'
          )
        ]
      ),
    ),

    //insert image
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Go ahead and enter your name and change your profile '
                'picture if you would like.'
          ),
        ]
      ),
    ),
  ];

  final RichText additionAccountInfo =  RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'On the left of the screen there are some different tabs '
                'related to your account. We won’t go into too much detail '
                'on these as it is quite a lot to process all at once, but as a general overview:\n\n'
          ),
          TextSpan(
            text: 'Profile', style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '– From here you can adjust the aspects of your public profile.\n\n'
          ),
          TextSpan(
            text: 'Account', style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' – This allows you to change your username, export account data, '
                'change your mobile settings, and delete your account.\n\n'
                'Security – From here you can change your password and enable'
                ' Two-factor authentication. It is recommended that you setup '
                'two-factor after you have completed this course; however, '
                'do not do it before as you will not be able to complete the '
                'rest of the course with two-factor enabled.\n\n'
                'Emails - From here you can manage the emails associated with your account.\n\n'
                'Notifications – Manage notifications sent by GitHub.\n\n'
                'Billing – Manage your plan information.\n\n'
          ),
          TextSpan(
            text: 'SSH and GPG keys', style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' – Create and manage SSH and GPG keys for your account (we will use this later).\n\n'
                'Blocked users – Manage users blocked from your account.\n\n'
          ),
          TextSpan(
            text: 'Repositories', style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' – View and manage your repositories.\n\n'
                'Organizations – Create organizations or view organizations you are part of.\n\n'
                'Saved replies – View and create replies that can be used throughout GitHub in comment fields.\n\n'
                'Applications – View and manage applications associated with your account.\n\n'
                'Developer settings – Allows you to build applications that extend GitHub. '
                'This includes building on the GitHub API, building OAuth Apps, and viewing personal access tokens.\n\n'
                'Now this may seem like a lot of information, but don’t worry, you do not '
                'need to know about all of the tabs for this course. This lesson is '
                'section is intended to show you the power of a GitHub account and give '
                'you a taste of what you can do with GitHub. The names of the tabs you need '
                'to focus on for this lesson are in '
          ),
          TextSpan(
            text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(
            text: ', so be sure to review the information on those pages '
                'before you continue on to the quiz.'
          ),
        ]
      ),
  );
}