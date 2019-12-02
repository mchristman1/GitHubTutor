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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 15.0),),
        Text(
          'Introduction',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
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
        Container(
          padding: EdgeInsets.all(15.0),
          child: objectiveText,
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.only(top: 15.0),),
        Text(
          'Step 1 - Download Git',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: step1Text,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text(
          'Step 2 - Generate SSH key',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: step2Text,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text(
          'Step 3 - Add SSH key to the SSH-agent',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: step3Text,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text(
          'Step 4 - Add the SSH key to GitHub',
          style: headerStyle,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: step4Text[0],
        ),
        //add image
        Container(
          padding: EdgeInsets.all(15.0),
          child: Image.asset('imageAssets/setup1.png'),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: step4Text[1],
        ),
        //add image
        Container(
          padding: EdgeInsets.all(15.0),
          child: Image.asset('imageAssets/setup2.png'),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: step4Text[2],
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

  final RichText introductionText = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'This lesson covers setup for '
          ),
          TextSpan(
              text: 'Windows', style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(
            text: ' users. If you are using a ',
          ),
          TextSpan(
            text: 'Mac', style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ', please click the back button and then select ',
          ),
          TextSpan(
            text: 'Setup for Mac', style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
              text: '. This lesson will walk you through how to get setup for Git commands '
                  'through Git Bash and will also show you how to generate SSH '
                  'keys for your account. SSH keys are needed to access GitHub '
                  'through terminal commands which are used later in the course.'
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
            text: '1)	The student will have generated and linked an SSH key to their account.\n'
        ),
        TextSpan(
            text: '2)	The student will have installed Git Bash on their computer.'
        )
      ],
    ),
  );

  final RichText step2Text = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
              text: 'To begin, open Git Bash and enter the following command:\n\n'
          ),
          TextSpan(
            text: '\$ ssh-keygen -t rsa -b 4096 -C “your email address”',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
          ),
          TextSpan(
              text: '\n\nBe sure you enter the same email associated with your '
                  'GitHub account in the quotes and press enter. '
                  'This command generates a new SSH key using the email '
                  'entered as a label. After some processing, you '
                  'will be presented with the prompt:\n\n'
          ),
          TextSpan(
            text: '> Enter a file in which to save the key (/C/Users/username/.ssh/id_rsa): ',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
          ),
          TextSpan(
              text: '\n\nDo not enter any text here, just press enter.\n'
                  'Next, you will be asked for a passphrase with the prompt below:\n\n'
          ),
          TextSpan(
            text: '> Enter passphrase (empty for no passphrase): ',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
          ),
          TextSpan(
              text: '\n\nYou can either enter a passphrase or just press enter for '
                  'no passphrase. Be sure to remember the passphrase should you '
                  'choose to enter it. After pressing enter, you will be asked to confirm'
                  ' the passphrase. Once this is done, you will have generated your SSH key.'
          )
        ]
    ),
  );

  final RichText step1Text = RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 17.0),
          children: [
            TextSpan(
                text: 'Navigate to '
            ),
            TextSpan(
                text: 'https://git-scm.com/downloads',
                style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)
            ),
            TextSpan(
              text: ' and select ',
            ),
            TextSpan(
              text: 'Windows download',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            TextSpan(
                text: '. This will either begin the download automatically or take you '
                    'to a page where you can start the download yourself. Once the file '
                    'has been downloaded, go ahead and run it. Just follow the setup '
                    'steps presented by the application to install Git Bash.'
            )
          ]
      )
  );

  final RichText step3Text = RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 17.0),
          children: [
            TextSpan(
                text: 'Now that you have generated an SSH key, you need to add it to the SSH-Agent. The '
            ),
            TextSpan(
              text: 'SSH-Agent',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
                text: ' is just a helper program that keeps track of the user’s keys '
                    'and passphrases and allows a user to log into external servers '
                    'without needing to enter their passphrase every time.\n\n'
                    'To begin, open Git Bash and enter the following command:\n\n'
            ),
            TextSpan(
              text: '\$ eval \$(ssh-agent -s)',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
            ),
            TextSpan(
                text: '\n\nThis command will start the SSH-Agent in the background. '
                    '\nNext, enter the following command:\n\n'
            ),
            TextSpan(
              text: '\$ ssh-add ~/.ssh/id_rsa',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
            ),
            TextSpan(
                text: '\n\nThis command is what adds the key you generated in the last step to the SSH-Agent.'
                    'If you encounter any issues with generating the SSH key or adding it to the SSH-Agent, visit '
            ),
            TextSpan(
              text: 'https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent',
              style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
            ),
            TextSpan(
                text: ' for more information.'
            ),
          ]
      )

  );

  final List<RichText> step4Text = [
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 17.0),
          children: [
            TextSpan(
                text: 'Now that you have generated an SSH key and added it to the '
                    'SSH-Agent, it is time to add an SSH key to your GitHub account.\n\n'
                    'First, open Git Bash and enter the following command:\n\n'
            ),
            TextSpan(
              text: '\$ clip < ~/.ssh/id_rsa.pub',
              style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1)),
            ),
            TextSpan(
                text: '\n\nThis command just copies the SSH key to your clipboard.\n\n'
                    'Now, go on GitHub and navigate to the account settings page for your account. '
                    'Next, click on the SSH and GPG keys tab. Just as a quick check, '
                    'your screen should look like this:'
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
                text: 'Click on the green button labeled '
            ),
            TextSpan(
              text: 'New SSH Key',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            TextSpan(
                text: '. In the '
            ),
            TextSpan(
                text: 'Title',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' box, enter a name specific to the key (such as “My PC’s Key.” In the '
            ),
            TextSpan(
                text: 'Key',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' box, paste the key you copied from the Git Bash command earlier '
                    'and then press the button '
            ),
            TextSpan(
                text: 'Add SSH Key',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: '. This will add the SSH key to your GitHub Account. \n\n'
                    'Now, when you navigate to the '
            ),
            TextSpan(
                text: 'SSH and GPG Keys',
                style: TextStyle(fontStyle: FontStyle.italic)
            ),
            TextSpan(
                text: ' tab you should see something like this:'
            ),
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
                text: 'Congratulations! You have finished this lesson. '
                    'You can either take the quiz to move on to the next lesson or '
                    'review the material from this lesson.'
            )
          ]
      ),
    )
  ];
}