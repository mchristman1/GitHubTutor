import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/WindowsCommandsQuiz.dart';

class WindowsCommands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        headers[0],
        introText,
        headers[1],
        objText,
        headers[2],
        ex1Text,
        headers[3],
        ex2Text,
        headers[4],
        ex3Text[0],
        //insert image
        ex3Text[1],
        headers[5],
        ex4Text,
        //insert image
        headers[6],
        ex5Text[0],
        //insert image
        ex5Text[1],
        headers[7],
        ex6Text,
        headers[8],
        ex7Text,
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
    ),
    Text(
      "Objectives",
      style: headerStyle,
    ),
    Text(
      "Exercise 1 - Create the repository",
      style: headerStyle,
    ),
    Text(
      "Exercise 2 - Your first commit",
      style: headerStyle,
    ),
    Text(
      "Exercise 3 - Linking to the remote repository",
      style: headerStyle,
    ),
    Text(
      "Exercise 4 - Push to the remote repository",
      style: headerStyle,
    ),
    Text(
      "Exercise 5 - Create a new branch",
      style: headerStyle,
    ),
    Text(
      "Exercise 6 - Cloning",
      style: headerStyle,
    ),
    Text(
      "Exercise 7 - Pulling",
      style: headerStyle,
    )
  ];

  final Text introText = Text(
    """
    This lesson is intended for Windows users. If you are a Mac user, please press the back button and then select “Commands for Mac.” 
    This lesson will cover some basic commands to add and manage files on a GitHub repository. 
    Throughout this lesson, you will create a repository and modify some files on it.
    """,
    style: bodyStyle,
  );

  final Text objText = Text(
    """
    1)	The student will be able to create a repository via Git Bash.\n
    2)	The student will be able to create commits with Git Bash.\n
    3)	The student will be able to pull files using Git Bash.\n
    4)	The student will be able to branch with Git Bash.\n
    5)	The student will be able to clone with Git Bash.
    """,
    style: bodyStyle,
  );

  final Text ex1Text = Text(
    """
    First, go to www.github.com, login, and create a repository called “GitHub-Commands.” 
    You can either make the repository public or private, it’s up to you.\n
    Next, create a new folder on your computer and name it “GitHub-Commands.”\n
    Create a text file in this folder with the text “Hello World,” and save it as hello.txt.\n
    Once that is done, open Git Bash and navigate to the folder you just created.\n
    Enter the following command to create the repository on your computer:\n
    \$ git init\n
    This command specifies that the current directory is to be used as a Git repository. 
    Note, you have not yet linked folder to the remote repository you created on GitHub; 
    that will be done later in the lesson.
    """,
    style: bodyStyle,
  );

  final Text ex2Text = Text(
    """
    Enter the command below to add the text file in the folder to the repository:\n
    \$ git add .\n
    This command will add any files in the directory to the repository.\n
    Now, you are ready to commit to the repository you just created. 
    A commit is what prepares the file to be added to the repository. \n
    Enter the command below to make your first commit:\n
    \$ git commit -m “First Commit”\n
    This command will commit any changes to the contents in the current directory. 
    The -m followed by the text enclosed in quotes is a message that will be posted to GitHub once the changes are added to the repository. 
    When committing changes, always include a message that provides a brief description of what you changed.
    """,
    style: bodyStyle,
  );

  final List<Text> ex3Text = [
    Text(
      """
      Now before you can add files to the repository you created, you need to specify the location of the remote repository (this is the repository you created on GitHub). 
      To do this, go to your repository’s home page (the tab titled “<> Code”) and look for a link towards the top of the page. 
      Click the SSH button and then the clipboard to copy the link (see picture below).
      """,
      style: bodyStyle,
    ),
    Text(
      """
      Now, pull up Git Bash and type the following commands:\n
      \$ git remote add origin link_you_copied\n
      \$ git remote -v\n
      The first command sets the repository with the link specified as the remote repository to be used. 
      The second command verifies the URL as your own. Note: you can also do this by using the https link, but since you set up the SSH key in an earlier lesson, why not use it. 
      If you have issues, try setting up your SSH key again or use the https link instead.
      """,
      style: bodyStyle,
    )
  ];

  final Text ex4Text = Text(
    """
    Now it is time to add the file you created to GitHub, this is known as a push. To do so, enter the following in Git Bash:\n
    \$ git push origin master\n
    This command “pushes” the default branch of your repository (origin in this case)\n
    If you get a prompt like the one below:\n
    > Are you sure you want to continue connecting (yes/no/[fingerprint])?\n
    Just enter yes and press enter.\n
    You should now be able to see the file on GitHub on the repository’s page.
    """,
    style: bodyStyle,
  );

  final List<Text> ex5Text = [
    Text(
      """
      Now it is time to learn about branching. Branches are sections in the repository where code is stored. 
      Each branch contains a version of the product on the master branch. 
      The master branch is the first branch created and should always have the latest, production ready version of the project (i.e. keep it free of bugs). 
      You should never push changes directly to the master branch. 
      Instead when you intend to make changes to the project, create a new branch and then add the changes there.\n
      Let’s get started by creating a new branch. Open Git Bash and enter the command below:\n
      \$ git checkout -b MyFirstBranch\n
      This command creates a branch on your computer and switches to it. 
      Note: you have not created the branch on GitHub yet as you have not pushed any changes. \n
      Open the file you created earlier (hello.txt) and change the text to something other than “Hello World.”\n
      Once you have done so, save the file and commit your changes. Before you commit, be sure to add the file with:\n
      \$ git add . \n
      Next, enter the following in Git Bash:\n
      \$ git push origin MyFirstBranch\n
      This command will create MyFirstBranch on GitHub and push your changes. 
      Notice how you entered “MyFirstBranch” instead of “master?” 
      This is because you needed to push to MyFirstBranch and not master. 
      Go onto GitHub and navigate to your repository’s home page. 
      Click on the button that says “Branch: master” and select the branch you just created. 
      """,
      style: bodyStyle,
    ),
    Text(
      """
      Click on “Hello.txt” and you can see that the text has changed. \n
      Now, select the master branch and navigate to “Hello.txt.” You can see the text is still the same as it was before. 
      This is because you only push to the branch specified. 
      """,
      style: bodyStyle,
    )
  ];

  final Text ex6Text = Text(
    """
    In this next exercise, you will learn how to clone a branch. 
    When cloning, you are downloading a branch of the repository and saving it to the current directory. 
    Cloning is also a good way to switch to new, existing branches. 
    Before you clone a new branch, make sure you have pushed your current changes.\n
    Before you can clone a branch, you need to go to the repository’s page on GitHub and click on the “Clone or download” button. 
    From here, click the clipboard to copy the SSH link.\n
    To clone the master branch enter the following in Git Bash:\n
    \$ git clone -b master link_you_copied\n
    This will clone the master branch to the current directory. 
    Go ahead and open up “Hello.txt” on your computer and you should see the text from when you first created the file. 
    Note: you can omit “-b master,” and the master branch will be downloaded by default. 
    You can also enter any other existing branch to clone it instead.
    """,
    style: bodyStyle,
  );

  final Text ex7Text = Text(
    """
    Now it is time to talk about the concept of pulling. Pulling is similar to cloning, except when you pull, you typically already have the repository and need to get the latest updates. 
    Switch to “Master” with the following command:\n
    \$ git checkout master \n
    This just switches to the master branch on your computer. 
    You should always commit any changes before switching branches. \n
    Next, enter the following command in Git Bash:\n
    \$ git pull origin MyFirstBranch\n
    This will pull the updates from MyFirstBranch and merge them with the current branch. 
    This command is typically used when multiple members are working together and need to get updates. \n
    Now, push directly to the master branch by entering the following in Git Bash:\n
    \$ git push\n
    This will push the changes to the master branch. When you don’t specify a branch, your changes will be pushed to the branch you are currently on.\n
    Now go to GitHub and look at “Hello.txt” on the master branch of your repository. 
    You should now see that the file’s contents have changed.\n\n
    This concludes this lesson. Be sure to review the contents of the lesson before moving on to the quiz.
    """,
    style: bodyStyle,
  );

}