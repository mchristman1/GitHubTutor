import 'package:flutter/material.dart';
import 'package:github_tutor/Lessons/ImageExpandedView.dart';
import 'package:github_tutor/Quizzes/WindowsCommandsQuiz.dart';

class WindowsCommands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Windows Commands',
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 15.0),),
        headers[0],
        Container(
          padding: EdgeInsets.all(15.0),
          child: introText,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        headers[1],
        Container(
          padding: EdgeInsets.all(15.0),
          child: objText,
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.only(top: 15.0),),
        headers[2],
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex1Text,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        headers[3],
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex2Text,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        headers[4],
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex3Text[0],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: GestureDetector(
            child: Image.asset('imageAssets/Commands-1.png'),
            onTap: () {imageTapped(context, 'imageAssets/Commands-1.png');},
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex3Text[1],
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        headers[5],
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex4Text,
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: GestureDetector(
            child: Image.asset('imageAssets/Commands-2.png'),
            onTap: () {imageTapped(context, 'imageAssets/Commands-2.png');},
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        headers[6],
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex5Text[0],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: GestureDetector(
            child: Image.asset('imageAssets/Commands-3.png'),
            onTap: () { imageTapped(context, 'imageAssets/Commands-3.png');},
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex5Text[1],
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        headers[7],
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex6Text,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        headers[8],
        Container(
          padding: EdgeInsets.all(15.0),
          child: ex7Text,
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
        ),
      ],
    );
  }

  Future imageTapped(context, String imagePath) async {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ImageExpandedView(imagePath: imagePath))
    );
  }

  Future goToQuiz(context) async {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WindowsCommandsQStatefulWidget())
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

  final List<Text> headers = [
    Text(
      "Introduction",
      style: headerStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      "Objectives",
      style: headerStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      "Exercise 1 - Create the repository",
      style: headerStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      "Exercise 2 - Your first commit",
      style: headerStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      "Exercise 3 - Linking to the remote repository",
      style: headerStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      "Exercise 4 - Push to the remote repository",
      style: headerStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      "Exercise 5 - Create a new branch",
      style: headerStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      "Exercise 6 - Cloning",
      style: headerStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      "Exercise 7 - Pulling",
      style: headerStyle,
      textAlign: TextAlign.center,
    )
  ];

  final RichText introText = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'This lesson is intended for ',
          ),
          TextSpan(
              text: 'Windows',
              style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(
              text: ' users. If you are a Mac user, please press the back button and select '
          ),
          TextSpan(
            text: 'Commands for Mac',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
              text: '. This lesson will cover some basic commands to add and manage '
                  'files on a GitHub repository. Throughout this lesson, you will'
                  ' create a repository and modify some files on it.'
          )
        ]
    ),
  );

  final RichText objText = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'This lesson has the following objectives: \n\n'
                  '1)	The student will be able to create a repository via Git Bash.\n'
                  '2)	The student will be able to create commits through Git Bash.\n'
                  '3)	The student will be able to pull files with Git Bash.\n'
                  '4)	The student will be able to branch with Git Bash.\n'
                  '5)	The student will be able to clone with Git Bash.\n'
          )
        ]
    ),
  );

  final RichText ex2Text = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'Enter the command below to add the text file in the directory to the repository:\n\n'
          ),
          TextSpan(
            text: '\$ git add .',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
          ),
          TextSpan(
              text: '\n\nThis command will add any files in the directory to the repository.\n\n'
                  'Now, you are ready to commit to the repository you just created. A '
          ),
          TextSpan(
              text: 'commit',
              style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(
              text: ' is what prepares the file to be added to the repository. \n\n'
                  'Enter the command below to make your first commit:\n\n'
          ),
          TextSpan(
            text: '\$ git commit -m “First Commit”',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
          ),
          TextSpan(
              text: '\n\nThis command will commit any changes to the contents in '
                  'the current directory. The -m followed by the text enclosed '
                  'in quotes is a message that will be posted to GitHub once the '
                  'changes are added to the repository. When committing changes, '
                  'always include a message that provides a brief description of '
                  'what you changed.'
          ),
        ]
    ),
  );

  final RichText ex1Text = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'First, go to '
          ),
          TextSpan(
            text: 'www.github.com',
            style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
          ),
          TextSpan(
              text: ', login, and create a repository called “GitHub-Commands.” '
                  'You can either make the repository public or private, it’s up to you.\n\n'
                  'Next, create a new directory on your computer and name it “GitHub-Commands.”\n'
                  'Create a text file in this directory with the text “Hello World,” and save it as hello.txt.\n'
                  'Once that is done, open Git Bash and navigate to the folder you just created.\n\n'
                  'Enter the following command to create the repository on your computer:\n\n'
          ),
          TextSpan(
              text: '\$ git init',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
              text: '\n\nThis command specifies that the current directory is to be used as a Git repository. '
          ),
          TextSpan(
            text: 'Note, you have not yet linked folder to the remote repository you created on GitHub',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
              text: '; that will be done later in the lesson.'
          )
        ]
    ),
  );

  final List<RichText> ex3Text = [
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 17.0),
          children: [
            TextSpan(
                text: 'Now before you can add files to the repository you created, '
            ),
            TextSpan(
              text: 'you need to specify the location of the remote repository',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            TextSpan(
                text: '(this is the repository you created on GitHub). To do this, '
                    'go to your repository’s home page (the tab titled '
            ),
            TextSpan(
                text: '<> Code',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ') and look for a link towards the top of the page. Click the '
            ),
            TextSpan(
                text: 'SSH',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' button and then the clipboard to copy the link (see picture below).'
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
                text: 'Now, pull up Git Bash and type the following commands:\n\n'
            ),
            TextSpan(
              text: '\$ git remote add origin link_you_copied\n'
                  '\$ git remote -v',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
            ),
            TextSpan(
                text: '\n\nThe first command sets the repository with the link '
                    'specified as the remote repository to be used. The second '
                    'command verifies the URL as your own. Note: '
            ),
            TextSpan(
              text: 'you can also do this by using the https link',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            TextSpan(
                text: ', but since you set up the SSH key in an earlier lesson, '
                    'why not use it. If you have issues, try setting up your SSH '
                    'key again or use the https link instead.'
            )
          ]
      ),
    )
  ];

  final RichText ex4Text = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'Now it is time to add the file you created to GitHub, this is known as a '
          ),
          TextSpan(
            text: 'push',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
              text: ' . To do so, enter the following in Git Bash:\n\n'
          ),
          TextSpan(
              text: '\$ git push -u origin master',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
              text: '\n\nThis command “pushes” the default branch of your repository (origin in this case)\n'
                  'If you get a prompt like the one below:\n\n'
          ),
          TextSpan(
              text: '> Are you sure you want to continue connecting (yes/no/[fingerprint])?',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
              text: '\n\nJust enter yes and press enter.\n'
                  'You should now be able to see the file on GitHub on the repository’s page.'
          )
        ]
    ),
  );

  final List<RichText> ex5Text = [
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 17.0),
          children: [
            TextSpan(
                text: 'Now it is time to learn about branching. '
            ),
            TextSpan(
              text: 'Branches',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
                text: ' are sections in the repository where code is stored. '
                    'Each branch contains a version of the product on the master branch. '
            ),
            TextSpan(
                text: 'The master branch is the first branch created and should '
                    'always have the latest, production ready version of the project',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' (i.e. keep it free of bugs). You should never push changes'
                    ' directly to the master branch. Instead when you intend to make '
                    'changes to the project, create a new branch and then add the '
                    'changes there. Then you can merge those changes in (which is '
                    'what you’ll do in the next lesson).\n\n'
                    'Let’s get started by creating a new branch. '
                    'Open Git Bash and enter the command below:\n\n'
            ),
            TextSpan(
                text: '\$ git checkout -b MyFirstBranch',
                style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
            ),
            TextSpan(
                text: '\n\nThis command creates a branch on your computer and '
                    'switches to it. Note: you have not created the branch on '
                    'GitHub yet as you have not pushed any changes. \n\n'
                    'Open the file you created earlier (hello.txt) and change the'
                    ' text to something other than “Hello World.”\n'
                    'Once you have done so, save the file and commit your changes.'
                    ' Before you commit, be sure to add the file with:\n\n'
            ),
            TextSpan(
                text: '\$ git add . ',
                style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
            ),
            TextSpan(
                text: '\n\nNext, enter the following in Git Bash:\n\n'
            ),
            TextSpan(
                text: '\$ git push origin MyFirstBranch',
                style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
            ),
            TextSpan(
                text: '\n\nThis command will create '
            ),
            TextSpan(
                text: 'MyFirstBranch',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' on GitHub and push your changes. Notice how you entered '
                    '“MyFirstBranch” instead of “master?” This is because you '
                    'needed to push to '
            ),
            TextSpan(
                text: 'MyFirstBranch',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' and not master.\n\nGo onto GitHub and navigate to your '
                    'repository’s home page. Click on the button that says '
            ),
            TextSpan(
                text: 'Branch: master',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' and select the branch you just created.'
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
                text: 'Click on “Hello.txt” and you can see that the text has changed. \n\n'
                    'Now, select the '
            ),
            TextSpan(
                text: 'master',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' branch and navigate to “Hello.txt.” You can see the text is '
                    'still the same as it was before. This is because you only push '
                    'to the branch specified.\n\n'
                    'Once you have verified that the push was successful, delete '
                    'the project folder from your computer. Don’t worry, should the '
                    'push have been successful, the project will be stored on GitHub.'
            )
          ]
      ),
    )

  ];

  final RichText ex6Text = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'In this next exercise, you will learn how to clone a branch. When '
          ),
          TextSpan(
              text: 'cloning',
              style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(
              text: ', you are downloading a branch of the repository and saving it '
                  'to the current directory. Before you clone a new branch, make '
                  'sure you do not already have the project on your computer.\n\n'
                  'Before you can clone a branch, you need to go to the repository’s '
                  'page on GitHub and click on the '
          ),
          TextSpan(
              text: 'Clone or download',
              style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
              text: ' button. From here, click the clipboard to copy the SSH link.\n\n'
                  'To clone the master branch, switch to the directory you would like '
                  'to download the project to (ex: Desktop) and enter the following in Git Bash:\n\n'
          ),
          TextSpan(
              text: '\$ git clone -b master link_you_copied',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
              text: '\n\nThis will clone the master branch to the current directory. '
                  'Go ahead and open “Hello.txt” on your computer and you should see '
                  'the text from when you first created the file. '
          ),
          TextSpan(
              text: 'Note: you can omit “-b master,”',
              style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
              text: ' and the master branch will be downloaded by default. '
                  'You can also enter any other existing branch to clone it instead.'
          ),
        ]
    ),
  );

  final RichText ex7Text = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'Now it is time to talk about the concept of pulling. '
          ),
          TextSpan(
              text: 'Pulling',
              style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(
              text: ' is similar to cloning, except when you pull, you typically '
                  'already have the repository and need to get the latest updates. Switch to '
          ),
          TextSpan(
              text: 'master',
              style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
              text: ' with the following command:\n\n'
          ),
          TextSpan(
              text: '\$ git checkout master ',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
              text: '\n\nThis just switches to the master branch on your computer. '
                  'You should always commit any changes before switching branches. \n\n'
                  'Next, enter the following command in Git Bash:\n\n'
          ),
          TextSpan(
              text: '\$ git pull origin master',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
              text: '\n\nThis will update the '
          ),
          TextSpan(
              text: 'master branch',
              style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
              text: ' on your computer. This command is typically used when multiple '
                  'members are working together and need to get updates. However, it '
                  'is not good practice for members to work on the same branch as this '
                  'could cause conflicts. You should also not have any uncommitted '
                  'changes on this branch prior to this.\n\n'
                  'This concludes this lesson. Be sure to review the contents of the '
                  'lesson before moving on to the quiz.'
          ),
        ]
    ),
  );

}