import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/RepositoryQuiz.dart';

class RepositoryLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Introduction',
                textAlign: TextAlign.center,
                style: headerStyle
              ),
              lessonIntro,
              Text(
                'Objectives',
                textAlign: TextAlign.center,
                style: headerStyle,
              ),
              objectives,
              Text(
                'What is a repository?',
                style: headerStyle,
              ),
              section1Text[0],
              section1Text[1],
              section1Text[2],
              Text(
                'What is a collaborator?',
                style: headerStyle,
              ),
              section2Text[0],
              section2Text[1],
              Text(
                'Exercise 1 - Create a repository',
                style: headerStyle,
              ),
              exercise1Text[0],
              //insert image
              exercise1Text[1],
              //insert image
              exercise1Text[2],
              exercise1Text[3],
              exercise1Text[4],
              //insert image
              exercise1Text[5],
              Text(
                'Exercise 2 - Add Collaborators',
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
                'Exercise 3 - Manage your repository'
              ),
              exercise3Text[0],
              //insert image
              exercise3Text[1],
              //insert image
              exercise3Text[2],
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

  final Text lessonIntro = Text(
      """
      This lesson will show students how to create and manage a repository through GitHub’s web interface. 
      The lesson will also show students how to add collaborators to their repository and manage their permissions. 
      """,
      style: bodyStyle,
    );

  final Text objectives = Text(
    """
     1)	The student will have a firm grasp on the concept of a repository.
     2)	The student will be able to create and manage a repository through GitHub’s web interface.
     3)	The student will be able to add and manage collaborators for their repository.
     """,
    style: bodyStyle,
  );

  final List<Text> section1Text = [
    Text(
      """
      Simply put, a
      """,
      style: bodyStyle,
    ),
    Text(
      """
      repository
      """,
      style: boldText
    ),
    Text(
      """
       is where project files on GitHub are stored. Repositories can either be public or private. 
       A public repository allows anyone to view and download the repository, but not contribute to it. 
       A private repository can only be viewed by those specified by the owner. GitHub provides a simple web interface that allows users to make and manage repositories.
      """,
      style: bodyStyle,
    )
  ];

  final List<Text> section2Text = [
    Text(
      "Collaborator",
      style: boldText,
    ),
    Text(
      """
      are those who have been given permissions to be able to contribute to the repository in some way. 
      By default, when a collaborator is added to a repository, they are given read and write permissions for the entire repository. 
      There is a way to limit interactions to the repository interaction; however, this can only be implemented for a 24-hour period.
      """,
      style: bodyStyle,
    )
  ];

  final List<Text> exercise1Text = [
    Text(
      """
      Alright, it’s time to create your first repository. To get started go to GitHub.com and log in to your account.
      Now, look at the left pane on the screen titled “Repositories.” GitHub will list all your repositories here on the home screen of your profile. 
      """,
      style: bodyStyle,
    ),
    Text(
      """
      When you are ready, click on the green button with the book labeled “New.” 
      Upon doing so you should be presented with a screen like the one below.
      """,
      style: bodyStyle,
    ),
    Text(
      """
      Here, you will enter all the information to define the new repository. Enter “My-First-Repository” in the “Repository name” field (note: if you enter spaces, GitHub automatically converts the spaces to -). 
      Next enter a description. This can be anything you like to describe the repository’s purpose. 
      Next, you will need to choose whether you want the repository to be public or private. 
      As stated earlier, a public repository allows anyone to see the repository whereas a private repository is private to you and you control who can see it. 
      For this lesson select “Private.” Next, check the box that says, “Initialize this repository with a README.” 
      A 
      """,
      style: bodyStyle,
    ),
    Text(
      "README",
      style: boldText,
    ),
    Text(
      """
       is just a text file that includes information about the project and how someone would get setup if they would like to use or work on the project. 
      We won’t mess with the README much during this course, but it is good to know about.\n
      Should you have completed all steps your screen should look like this:
      """,
      style: bodyStyle,
    ),
    Text(
      "Congrats, you have just created your first repository!",
      style: bodyStyle,
    )
  ];

  final List<Text> exercise2Text = [
    Text(
        """
        Now that you have created your repository, it is time to add a collaborator. 
        Collaborators are people who can contribute to the project. 
        Since this is a private repository, the collaborator you add will also be the only person (besides you) who can view the repository.\n
        To get started click on the “Settings” tab on screen (outlined in red below).
        """,
      style: bodyStyle,
    ),
    Text(
      """
      From the settings page you can manage the repository you just created. For this course, we will only focus on the “Options,” 
      “Collaborators,” and “Branches” tabs; however, you are encouraged to check out the rest of the tabs and see what their corresponding pages have to offer.\n
      For now, go ahead and click on the “Collaborators” tab to be taken to the screen below.
      """,
      style: bodyStyle,
    ),
    Text(
      """
      This page is where you can add contributors to your repository. 
      For a free-tier account, the user is limited to 3 collaborators for private repositories. 
      You should only add people you trust to positively contribute to the repository. 
      There are two ways to add collaborators to the repository: by email and by username. 
      You can add a collaborator by email if the user has listed their email publicly. 
      If not, you will need to add the user by their username.\n
      Enter a friend’s username or email in the repository and click “Add collaborator.” 
      This will send an invite to the person entered and you will see a screen like the one below.
      """,
      style: bodyStyle,
    ),
    Text(
      """
      You can also copy the invite link and send it to the person should you need to. 
      To cancel the invite, click the “Cancel invite” button next to the person.\n
      Go ahead and cancel that invite.
      """,
      style: bodyStyle,
    )
  ];

  final List<Text> exercise3Text = [
    Text(
      """
      Now it is time to talk about the “Options” tab on the settings page for the repository.\n
      Navigate to the settings page for the repository you created earlier and click on the “Options” tab.
      """,
      style: bodyStyle,
    ),
    Text(
      """
      On the options page, you are able to mange aspects of your repository. 
      You can adjust the name of your repository, add a public image for your repository (since your repository is private this doesn’t really apply), and much more. 
      Take some time to review this page and explore your options before moving on.\n
      Now, scroll to the bottom of the page to the section titled “Danger Zone.”
      """,
      style: bodyStyle,
    ),
    Text(
      """
      This section is labeled as so because of the affects the options here have. 
      From this section you can make your repository public, transfer ownership, archive the repository, and delete the repository.\n
      In the next couple steps, you will make your repository public and then delete the repository. 
      Click on the “Make public” button. As the name suggests, this will make your repository public, meaning anyone can view it.
      Type the name of the repository where indicated in the popup and then click the button at the bottom of the form.\n
      Now that the repository is public, anyone can view it and download the project. 
      If you want, you can make the repository private again by scrolling back down to the “Danger Zone” and click the “Make private” button.\n
      Now, scroll down to the “Danger Zone” and click on the button titled “Delete this repository” to begin the process of deleting your repository. 
      Similar to changing the privacy of the repository, a form will popup where you will need to enter the name of the repository and then click the button.\n
      Do this now.\n
      Congrats! You have completed this lesson. You can either review the lesson content or take the quiz. 
      """,
      style: bodyStyle,
    )
  ];
}