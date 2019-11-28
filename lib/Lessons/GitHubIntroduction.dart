import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/IntroToGiHubQuiz.dart';

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

  Widget buildLesson(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          lessonHeaders[0],
          style: headerStyle,
        ),
        Text(
          lessonContent[0],
          style: bodyStyle,
        ),
        Text(
          lessonHeaders[1],
          style: headerStyle,
        ),
        Text(
          lessonContent[1],
          style: bodyStyle,
        ),
        Text(
          lessonHeaders[2],
          style: headerStyle,
        ),
        Text(
          lessonContent[2],
          style: bodyStyle,
        ),
        Text(
          lessonHeaders[3],
          style: headerStyle,
        ),
        Text(
          lessonContent[3],
          style: bodyStyle,
        ),
        Text(
          lessonHeaders[4],
          style: headerStyle,
        ),
        Text(
          lessonContent[4],
          style: bodyStyle,
        ),
        Text(
          lessonHeaders[5],
          style: headerStyle,
        ),
        Text(
          lessonContent[5],
          style: bodyStyle,
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
    'What is Github?',
    'How is Github Used?',
    'Real World Examples',
  ];

  final lessonContent = [
    "This lesson serves as an introduction to Github. This lesson will provide a general overview of Github to prepare you for the rest of the ccourse.",
    "This lesson has the following objectives:\n\n\t1) The student will have some general knowledge about Github.\n\t2) The student will be able to give some examples of what Github is used for.",
    """
    Now before getting into what Github is, it is important to note an important distinction between Git and Github. We will talk about both of these in detail later in this lesson, but it is important to note that Git and GitHub are NOT the same thing.
    GitHub is a hosting service whereas Git is a version-control system.
    In short, Git is how GitHub provides version control. Git is a version control system which enables developers to track changes in source code. Git is the most widely used version-control system today and many projects rely on it. The reason why Git is so popular compared to other version control systems is because Git is flexible, secure, and efficient. 
    In fact, many hosting services have adopted Git as their version control system. It is important to know what Git is since GitHub uses it to provide version control to its customers. Additionally, most of the information in this tutorial is for Git; GitHub is just the platform chosen to utilize the powerful version control system.
    As such, you will be able to take much of the information you learn in during the course and apply to other hosting services!     
    """,

    """
    Now that you know what Git is, it is time to discuss the platform used for this course. GitHub is a hosting service that provides version control using Git.
    Now with over 37 million users, GitHub is the largest host of source code in the world. Now you may be wondering, why is GitHub used by so many people?
    There are multiple answers to that question. One may argue the reason is because GitHub is largely used for open source project and because of that, developers are able to share and improve upon each others works.
    Another reason is GitHub makes version control easy and provides many features which include documentation, cloud hosting, and code reviewing.
    This course will only cover how to store and manage code, but these other features are good to know as they make project management easier.
    Checkout GitHub and all of its features at http://www.github.com.
    """,

    """
    GitHub is used in a variety of different ways. As mentioned in the previous section, GitHub provides many features. 
    Though most use it for version control and code management, GitHub can also be used for things such as documentation and website hosting.
    This course will only focus on version control and code management, but if you are interested, be sure to check out all of the features GitHub has to offer.
    Code on GitHub is stored in what is known as "repositories." These repositories can either be public or private. Those made private will remain so to the repositories owner and their collaborators.
    Those made public however are available for the world to see and use. This is part of the reason GitHub is so popular. Many developers host code publicly to get feedback from developers around the world. 
    To access public a public repository, just go to www.github.com/[username]/[repository name]. The [username] is the username of the developer who manages the GitHub account where the repository is located.
    The [repository name] is just the name the owner has given to the repository. Another great way to check out repositories is to click on the "Explore" tab on the main page. From here, you can browse public repositories from around the globe.
    """,

    """
    As you may have noticed, GitHub is huge and as such, many big companies use it. Companies such as Amazon, Apple, and Facebook constantly upload both public and private code. 
    For example, Amazon uses GitHub to host its Software Development Kit (SDK) for the Alexa Skills Kit. The repository can be found at https://github.com/alexa/alexa-skills-kit-sdk-for-nodejs.
    Specifically, this repository provides an SDK to help developers create skills for Amazon's Alexa using node.js. Since Amazon has decided to host this repository publically, people are able to easily create skills for Alexa without needing to worry about the boiler-plate code to set it up.
    Another advantage to hosting a public repository is developers are able to report any bugs directly to the host. This makes it so bugs can be found and then patched quickly.
    These are just some of the many ways people from around the world are using GitHub.    
    """
  ];
}