import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/SetupWindowsQuiz.dart';

class SetupForWindows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Windows Setup',
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
          'Step 1 - Download Git Bash',
          style: headerStyle,
        ),
        step1Text,
        Text(
          'Step 2 - Generate SSH key',
          style: headerStyle,
        ),
        step2Text,
        Text(
          'Step 3 - Add SSH key to the SSH-agent',
          style: headerStyle,
        ),
        step3Text,
        Text(
          'Step 4 - Add the SSH key to GitHub',
          style: headerStyle,
        ),
        step4Text[0],
        //add image
        step4Text[1],
        //add image
        step4Text[2],
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
    );
  }

  Future quizPressed(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SetupWindowsQuizStatefulWidget())
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
    This lesson covers setup for Windows users. 
    If you are using a Mac, please click the back button and then select “Setup for Mac.” 
    This lesson will walk you through how to get setup for Git commands through Git Bash and will also show you how to generate SSH keys for your account. 
    SSH keys are needed to access GitHub through terminal commands which are used later in the course.
    """,
    style: bodyStyle,
  );

  final Text objectiveText = Text(
    """
    1)	The student will have generated and linked an SSH key to their account.\n
    2)	The student will have installed Git Bash on their computer.
    """,
    style: bodyStyle,
  );

  final Text step2Text = Text(
    """
    To begin, open Git Bash on your computer and enter the following command:\n
    \$ ssh-keygen -t rsa -b 4096 -C “your email address”\n
    Be sure you enter the same email associated with your GitHub account in the quotes ad press enter. This command generates a new SSH key using the email entered as a label. After some processing, you will be presented with the prompt:\n
    > Enter a file in which to save the key (C:/Users/username/.ssh/id_rsa): \n
    Do not enter any text here, just press enter.\n
    Next, you will be asked for a passphrase with the prompt below:\n
    > Enter passphrase (empty for no passphrase): \n
    You can either enter a passphrase or just press enter for no passphrase. 
    Be sure to remember the passphrase should you choose to enter it. 
    After pressing enter, you will be asked to confirm the passphrase. 
    Once this is done, you will have generated your SSH key.
    """,
    style: bodyStyle,
  );

  final Text step1Text = Text(
      """
      Navigate to https://git-scm.com/downloads and select “Windows download”. 
      This will either begin the download automatically or take you to a page where you can start the download yourself. 
      Once the file has been downloaded, go ahead and run it. 
      Just follow the setup steps presented by the application to install Git Bash.
      """,
      style: bodyStyle
  );

  final Text step3Text = Text(
    """
    Now that you have generated an SSH key, you need to add it to the SSH-Agent. 
    The SSH-Agent is just a helper program that keeps track of the user’s keys and passphrases and allows a user to log into external servers without needing to enter their passphrase every time. \n
    To begin, open Git Bash and enter the following command:\n
    \$ eval \$(ssh-agent -s)\n
    This command will start the SSH-Agent in the background. \n
    Next, enter the following command:\n
    \$ ssh-add ~/.ssh/id_rsa\n
    This command is what adds the key you generated in the last step to the SSH-Agent.\n
    If you encounter any issues with generating the SSH key or adding it to the SSH-Agent, 
    visit https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent for more information.
    """,
    style: bodyStyle,
  );

  final List<Text> step4Text = [
    Text(
      """
      Now that you have generated an SSH key and added it to the SSH-Agent, it is time to add an SSH key to your GitHub account. \n
      First, open Git Bash and enter the following command:\n
      \$ clip < ~/.ssh/id_rsa.pub\n
      This command just copies the SSH key to your clipboard.\n
      Note: If clip does not work, locate the hidden .ssh folder on your computer and then copy its contents\n
      Now, go on GitHub and navigate to the account settings page for your account. 
      Next, click on the SSH and GPG keys tab. Just as a quick check, your screen should look like this:
      """,
      style: bodyStyle,
    ),
    Text(
      """
      Click on the green button labeled “New SSH Key.” 
      In the Title box, enter a name specific to the key (such as “Windows Key.” 
      In the Key box, paste the key you copied from the Git Bash command earlier and then press the button “Add SSH Key.” 
      This will add the SSH key to your GitHub Account. \n
      Now, when you navigate to the SSH and GPG Keys tab you should see something like this:
      """,
      style: bodyStyle,
    ),
    Text(
      """
      Congratulations! You have finished this lesson. 
      You can either take the quiz to move on to the next lesson or review the material from this lesson.
      """,
      style: bodyStyle,
    )
  ];
}