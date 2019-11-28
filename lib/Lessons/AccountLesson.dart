import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/AccountQuiz.dart';

class AccountLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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

  Widget buildLesson(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Introduction',
          style: headerStyle,
        ),
        introductionText,
        Text(
          'Objectives',
          style: headerStyle,
        ),
        objectiveText,
        Text(
          'Exercise 1 - Account Creation',
          style: headerStyle,
        ),
        exercise1Text[0],
        //insert image
        exercise1Text[1],
        //insert image
        exercise1Text[2],
        //insert image
        exercise1Text[3],
        Text(
          'Exercise 2 - Setting up your profile',
          style: headerStyle,
        ),
        exercise2Text[0],
        //insert image
        exercise2Text[1],
        //insert image
        exercise2Text[2],
        //insert image
        exercise2Text[3],
        Text(
          'Additional information',
          style: headerStyle,
        ),
        additionAccountInfo,
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

  final Text introductionText = Text(
    """
    This lesson covers how to create and manage a GitHub account. 
    This lesson is divided into three different parts where you will complete various exercises related to account creation and management.
    """,
    style: bodyStyle,
  );

  final Text objectiveText = Text(
    """
    1)	The student will have created a GitHub account.\n
    2)	The student will have basic knowledge on how to manage their account.\n
    3)	The student will have basic knowledge on the different features that come with a GitHub account.
    """,
    style: bodyStyle,
  );

  final List<Text> exercise1Text = [
    Text(
      """
      To begin creating a GitHub account, go to http://www.github.com. 
      Thankfully, GitHub makes creating an account very simple as it provides the form on the home page of the website.\n
      To get started, enter the information in the form (outlined in the screenshot below). 
      Note that when creating a username, keep it professional as potential employers tend to look through GitHub for potential new hires. 
      Also, use an email you actively use and create a secure, but memorable password.\n
      Once you’ve all the information, click the green “Sign up for GitHub” button at the bottom of the form.
      """,
      style: bodyStyle,
    ),
    Text(
      "Should you have entered everything correctly, you should be on a screen that looks something like this: ",
      style: bodyStyle,
    ),
    Text(
      """
      Complete the verification step on this page, select if you would like to get email offers, and then click the blue button at the bottom of the screen.
      The next screen will ask you about a plan. GitHub offers free and paid plans for both individuals and teams.
      Generally, you will be just fine with a free plan but if you need more you can always upgrade later.\n
      For this course, select the free plan to continue.\n
      Next, you will be asked some questions on how you intend to use GitHub.\n
      Before you go further, check that you have the right plan selected. 
      The selected plan is shown under the black navigation bar.\n 
      Once you’ve confirmed the plan is correct, go ahead and answer the questions to continue creating your account.\n 
      Once you have answered all questions, click the blue button at the bottom of the page labeled “Complete Setup.”
      """,
      style: bodyStyle,
    ),
    Text(
      "If you see screen above, you have successfully created your GitHub account! Be sure to check your email and verify your account.",
      style: bodyStyle,
    )
  ];

  final List<Text> exercise2Text = [
    Text(
      """
      Now that you have created your GitHub account, lets walk through some features.\n
      To view your account’s features, click the icon in the top right (this should be some sort of pixelated picture).
      Upon doing so, you will be presented with a dropdown like the one below.\n
      From now on this will be called the profile dropdown.
      """,
      style: bodyStyle,
    ),
    Text(
      """
      From the profile dropdown, you can navigate to different things relating to your account.\n
      For now, click on “Your profile.” Upon doing so, you will be presented with a page similar to the one below.
      Ignore the numbers and red boxes in the picture for now, those will be explained later.
      """,
      style: bodyStyle,
    ),
    Text(
      """
      From here, you can review your account activity, access repositories and projects, and modify your profile information.
      Your profile information is displayed on the left. The profile contains a profile picture (1), your name (if set) (2), your username (3), and a bio (4).
      You can edit your bio on this page by clicking on “Edit profile.”\n
      Go ahead and try it. Update your bio so that it gives an overview of you.\n\n
      Now you may be wondering “how can I change my profile picture?” To do this, you will need to go to the settings page.
      This can be accessed by clicking on your profile picture or by clicking on “Settings” in the profile dropdown.
      Upon completion of either of those actions, you should be presented with a screen like the one below.
      """,
      style: bodyStyle,
    ),
    Text(
      "Go ahead and enter your name and change your profile picture if you would like.",
      style: bodyStyle,
    )
  ];

  final Text additionAccountInfo = Text(
    """
    On the left of the screen there are some different tabs related to your account. 
    We won’t go into too much detail on these as there is quite a bit, but as a general overview:\n
    Profile – From here you can adjust the aspects of your public profile.\n
    Account – This allows you to change your username, export account data, change your mobile settings, and delete your account.\n
    Security – From here you can change your password and enable Two-factor authentication. It is recommended that you setup two-factor after you have completed this course; 
    however, do not do it before as you will not be able to complete the rest of the course with two-factor enabled.\n
    Emails - From here you can manage the emails associated with your account.\n
    Notifications – Manage notifications sent by GitHub.\n
    Billing – Manage your plan information.\n
    SSH and GPG keys – Create and manage SSH and GPG keys for your account (we will use this later).\n
    Blocked users – Manage users blocked from your account.\n
    Repositories – View and manage your repositories.\n
    Organizations – Create organizations or view organizations you are part of.\n
    Saved replies – View and create replies that can be used throughout GitHub in comment fields.\n
    Applications – View and manage applications associated with your account.\n
    Developer settings – Allows you to build applications that extend GitHub. 
    This includes building on the GitHub API, building OAuth Apps, and viewing personal access tokens.\n\n
    Now this may seem like a lot of information, but don’t worry, you do not need to know about all of the tabs for this course. 
    This section is intended to show you the power of a GitHub account and give you a taste of what you can do with GitHub. 
    The names of the tabs you need to focus on for this lesson are in bold, so be sure to review the information on those pages before you continue on to the quiz.
    """,
    style: bodyStyle,
  );

}