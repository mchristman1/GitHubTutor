import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/RepositoryQuiz.dart';

import 'ImageExpandedView.dart';

class RepositoryLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Repositories',
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
        Container (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 15.0),),
              Text(
                'Introduction',
                textAlign: TextAlign.center,
                style: headerStyle
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: lessonIntro,
              ),
              Text(
                'Objectives',
                textAlign: TextAlign.center,
                style: headerStyle,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: objectives,
              ),
              Divider(height: 3, thickness: 3,),
              Padding(padding: EdgeInsets.only(top: 15.0),),
              Text(
                'What is a repository?',
                style: headerStyle,
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: section1Text,
              ),
              Padding(padding: EdgeInsets.only(top: 25.0),),
              Text(
                'What is a collaborator?',
                style: headerStyle,
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: section2Text,
              ),
              Padding(padding: EdgeInsets.only(top: 25.0),),
              Text(
                'Exercise 1 - Create a repository',
                style: headerStyle,
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise1Text[0],
              ),
              //insert image
              Container(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                    child: Image.asset('imageAssets/Repo-1.png'),
                  onTap: () {imageTapped(context, 'imageAssets/Repo-1.png');},
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise1Text[1],
              ),
              //insert image
              Container(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                    child: Image.asset('imageAssets/Repo-2.png'),
                  onTap: () {imageTapped(context, 'imageAssets/Repo-2.png');},
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise1Text[2],
              ),
              //insert image
              Container(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                    child: Image.asset('imageAssets/Repo-3.png'),
                  onTap: () {imageTapped(context, 'imageAssets/Repo-3.png');},
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise1Text[3],
              ),
              Padding(padding: EdgeInsets.only(top: 25.0),),
              Text(
                'Exercise 2 - Add Collaborators',
                style: headerStyle,
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise2Text[0],
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise2Text[1],
              ),
              //insert image
              Container(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                    child: Image.asset('imageAssets/Repo-4.png'),
                  onTap: () {imageTapped(context, 'imageAssets/Repo-4.png');},
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise2Text[2],
              ),
              //insert image
              Container(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                    child: Image.asset('imageAssets/Repo-7.png'),
                  onTap: () {imageTapped(context, 'imageAssets/Repo-7.png');},
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise2Text[3],
              ),
              Padding(padding: EdgeInsets.only(top: 25.0),),
              Text(
                'Exercise 3 - Manage your repository',
                style: headerStyle,
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise3Text[0],
              ),
              //insert image
              Container(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                    child: Image.asset('imageAssets/Repo-5.png'),
                  onTap: () {imageTapped(context, 'imageAssets/Repo-5.png');},
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise3Text[1],
              ),
              //insert image
              Container(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                    child: Image.asset('imageAssets/Repo-6.png'),
                  onTap: (){imageTapped(context, 'imageAssets/Repo-6.png');},
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: exercise3Text[2],
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
              ),
            ],
          ),
        )
      ],
    );
  }

  Future imageTapped(context, String imagePath) async {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ImageExpandedView(imagePath: imagePath))
    );
  }

  Future quizPressed(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RepoQuizStatefulWidget())
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

  final RichText lessonIntro = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      children: [
        TextSpan(
          text: 'This lesson will show students how to create and manage a '
        ),
        TextSpan(
          text: 'repository',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: ' through GitHub’s web interface. The lesson will also show students how to add '
        ),
        TextSpan(
          text: 'collaborators',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: ' to their repository and manage their permissions.'
        )
      ]
    )
  );

  final RichText objectives = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      children: [
        TextSpan(
          text: 'This lesson has the following objectives: \n\n'
        ),
        TextSpan(
          text: '1)	The student will have a firm grasp on the concept of a repository.\n'
              '2)	The student will be able to create and manage a repository through GitHub’s web interface.\n'
              '3)	The student will be able to add and manage collaborators for their repository.'
        )
      ]
    ),
  );

  final RichText section1Text = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      children: [
        TextSpan(
          text: 'Simply put, a '
        ),
        TextSpan(
          text: 'repository',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: ' is where project files on GitHub is stored. '
              'Repositories can either be public or private. A '
        ),
        TextSpan(
          text: 'public repository',
          style: TextStyle(fontStyle: FontStyle.italic)
        ),
        TextSpan(
          text: ' allows anyone to view and download the repository. A '
        ),
        TextSpan(
          text: 'private repository',
          style: TextStyle(fontStyle: FontStyle.italic)
        ),
        TextSpan(
          text: ' can only be viewed by those specified by the owner. '
              'GitHub provides a simple web interface that allows users to '
              'make and manage repositories.'
        ),
      ]
    ),
  );

  final RichText section2Text = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      children: [
        TextSpan(
          text: 'Collaborators',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: ' are those who have been given permissions to be able to '
              'contribute to the repository in some way. By default, '
              'when a collaborator is added to a repository, they are given '
        ),
        TextSpan(
          text: 'read and write permissions',
          style: TextStyle(fontStyle: FontStyle.italic)
        ),
        TextSpan(
          text: ' for the entire repository. There is a way to limit i'
              'nteractions to the repository; however, this can only '
              'be implemented for a 24-hour period.'
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
          TextSpan(
            text: 'Alright, it’s time to create your first repository. '
                'To get started go to GitHub.com and log in to your account. '
                'Now, look at the left pane on the screen titled '
          ),
          TextSpan(
            text: 'Repositories',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: '. GitHub will list all your repositories here on the home screen of your profile.'
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
            text: 'When you are ready, click on the green button with the book labeled ',
          ),
          TextSpan(
            text: 'New',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: '. Upon doing so you should be presented with a screen like the one below.'
          ),
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
            text: 'Here, you will enter all the information to define the new '
                'repository. Enter “My-First-Repository” in the '
          ),
          TextSpan(
            text: 'Repository name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: ' field (note: if you enter spaces, GitHub automatically '
                'converts the spaces to -). Next enter a description. This can '
                'be anything you like to describe the repository’s purpose. \n\n'
                'Next, you will need to choose whether you want the repository '
                'to be public or private. As stated earlier, a '
                'public repository allows anyone to see the '
                'repository whereas a private repository is private to '
                'you and you control who can see it. \n\nFor this lesson select '
          ),
          TextSpan(
            text: 'Private',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: '. \n\nNext, check the box that says, '
          ),
          TextSpan(
            text: 'Initialize this repository with a README',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(text: '.\n\nA '),
          TextSpan(
            text: 'README',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' is just a text file that includes information about the '
                'project and how someone would get setup if they would like '
                'to use or work on the project. We won’t mess with the README '
                'much during this course, but it is good to know about. \n\n'
                'Should you have completed all steps your screen should look like this:'
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
            text: 'Congrats, you have just created your first repository!'
          ),
        ],
      ),
    )
  ];

  final List<RichText> exercise2Text = [
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Now that you have created your repository, '
                'it is time to add a collaborator. '
          ),
          TextSpan(
            text: 'Collaborators',
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(
            text: ' are people who can contribute to the project. Since '
                'this is a private repository, the collaborator you add '
                'will also be the only person (besides you) who can view the repository.\n\n'
                'To get started click on the '
          ),
          TextSpan(
            text: 'Settings',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: ' tab on screen (outlined in red in the next screenshot below).'
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
            text: 'From the settings page you can manage the repository you '
                'just created. For this course, we will only focus on the '
          ),
          TextSpan(
            text: 'Options, Collaborators, and Branches',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: ' tabs; however, you are encouraged to check out the rest of '
                'the tabs and see what their corresponding pages have to offer. \n\n'
                'For now, go ahead and click on the ',
          ),
          TextSpan(
            text: 'Collaborators',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: ' tab to be taken to the screen below.'
          ),
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
            text: ' This page is where you can add contributors to your repository. '
                'For a free-tier account, the user is limited to 3 collaborators '
                'for private repositories. You should only add people you trust '
                'to positively contribute to the repository. There are two '
                'ways to add collaborators to the repository: '
          ),
          TextSpan(
            text: 'by email and by username',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: '. You can add a collaborator by email if the user has listed '
                'their email publicly. If not, you will need to add the user by '
                'their username.\n\nEnter a friend’s username or email in the repository and click '
          ),
          TextSpan(
            text: 'Add collaborator',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: '. This will send an invite to the person entered and you will see a screen like the one below.'
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
            text: 'You can also copy the invite link and send it to the person '
                'should you need to. To cancel the invite, click the '
          ),
          TextSpan(
            text: 'Cancel invite',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: ' button next to the person. Go ahead and cancel that invite.'
          )
        ]
      ),
    )
  ];

  final List<RichText> exercise3Text = [
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Now it is time to talk about the '
          ),
          TextSpan(
            text: 'Options',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: ' tab on the settings page for the repository. '
                'Navigate to the settings page for the repository you created '
                'earlier and click on the '
          ),
          TextSpan(
              text: 'Options',
              style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: ' tab.'
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
            text: 'On the options page, you are able to mange aspects of your '
                'repository. You can adjust the name of your repository, '
                'add a public image for your repository (since your repository '
                'is private this doesn’t really apply), and much more. Take'
                ' some time to review this page and explore your options before moving on.\n\n'
                'Now, scroll to the bottom of the page to the section titled '
          ),
          TextSpan(
            text: 'Danger Zone.',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
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
            text: 'This section is labeled as so because of the affects the options here have. From this section you can ',
          ),
          TextSpan(
            text: 'make your repository public, transfer ownership, archive the repository, and delete the repository.\n\n',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: 'In the next couple steps, you will make your repository public and then delete the repository. Click on the ',
          ),
          TextSpan(
            text: 'Make public',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: ' button. \n\n'
                'As the name suggests, this will make your repository public, '
                'meaning anyone can view it. Type the name of the repository where '
                'indicated in the popup and then click the button at the bottom of the form.\n\n'
                'Now that the repository is public, anyone can view it and '
                'download the project. If you want, you can make the repository '
                'private again by scrolling back down to the '
          ),
          TextSpan(
            text: 'Danger Zone',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: ' and click the '
          ),
          TextSpan(
            text: 'Make private',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: ' button.\n\n'
                'Now, scroll down to the '
          ),
          TextSpan(
            text: 'Danger Zone',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: ' and click on the button titled ',
          ),
          TextSpan(
            text: 'Delete this repository',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: 'to begin the process of deleting your repository. Similar to '
                'changing the privacy of the repository, a form will popup where '
                'you will need to enter the name of the repository and then click '
                'the button. Do this now.\n\n'
                'Congrats! You have completed this lesson. '
                'You can either review the lesson content or take the quiz. '
          )
        ]
      ),
    )
  ];
}