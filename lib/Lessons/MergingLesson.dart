import 'package:flutter/material.dart';
import 'package:github_tutor/Quizzes/MergingQuiz.dart';

class MergingLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Merging',
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Introduction', style: headerStyle,),
        introduction,
        Text('Objectives', style: headerStyle,),
        objectives[0],
        objectives[1],
        Text('What is a merge?', style: headerStyle,),
        mergeDefinition[0],
        mergeDefinition[1],
        mergeDefinition[2],
        Text('Exercise - Merge a branch into master', style: headerStyle,),
        exercise1[0],
        exercise1[1],
        //insert image
        exercise1[2],
        exercise1[3],
        exercise1[4],
        Text('Exercise 2 - Resolve the conflict', style: headerStyle,),
        exercise2[0],
        //insert image
        exercise2[1],
        //insert image,
        exercise2[2],
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
      MaterialPageRoute(builder: (context) => MergingQStatefulWidget())
    );
  }

  static final TextStyle headerStyle = TextStyle(
      fontFamily: 'Arial',
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: Colors.black
  );

  final Text introduction = Text(
      'This is the final lesson of the course. In the previous lesson, you created a branch in your repository. Now, it is time to show you how to merge the new branch into master, a technique known as merging.'
  );

  final List<ListTile> objectives = [
    ListTile(
      leading: Text('1)'),
      title: Text('The student will be able to merge branches'),
    ),
    ListTile(
      leading: Text('2)'),
      title: Text('The student will be able to explain the concept of merging'),
    ),
  ];

  final List<Text> mergeDefinition = [
    Text('Simply put, a ', textAlign: TextAlign.left,),
    Text('merge', style: TextStyle(fontWeight: FontWeight.bold),),
    Text(' is when you take two branches and combine them. '
        'Now, this does not create new files or copy all the code to the bottom of the file. '
        'When two branches are merged, their commit history is also merged. '
        'Git tries to merge the history automatically; however, if there is an issue where '
        'Git cannot do so, the user will need to fix the discrepancy. '
        'In the following exercise, you will merge the branch you created in the '
        'previous lesson into master.'
    )
  ];

  final List<Text> exercise1 = [
    Text('Before you begin this exercise, '
        'go on to GitHub and make sure the text files contain different data. '
        'For example, have the file in the master branch say “master” and have the file in the other branch say, '
        '“merge me.” If you don’t quite remember how to do this, check the exercises in the previous lesson.\n'
    ),
    Text('First, open Terminal (Mac) or Git Bash (Windows) and navigate to the project folder you created in the last lesson. \n'
        'Next, switch to master with the following command: \n'
        '\$ git checkout master \n'
        'When merging, you start on the branch you want to merge into (in this case master). \n'
        'Next, type this command to begin the merge process: \n'
        '\$ git merge branch-you-created \n'
        'Once you’ve done so, you should see a message like the one below'
    ),
    Text('This is because we changed the same file on two branches and Git cannot automatically determine which version to keep. This is known as a '),
    Text('merge conflict', style: TextStyle(fontWeight: FontWeight.bold),),
    Text('. In the next exercise, you will learn how to resolve a merge conflict.')
  ];

  final List<Text> exercise2 = [
    Text('Now, we have a common issue when merging. Type this command in Git Bash or Terminal: \n'
        '\$ git status \n'
        'This command will display the names of the files that are unmerged after a conflict has been detected. \n'
        'Open the text file in the repository on your computer. You should see something like this:'
    ),
    Text('Let’s walk through this weird looking mess. The first line of the file (HEAD) states that the current '
        'branch (master in our case) is everything above the line of =. This means the bottom part of the file '
        'is what we are trying to merge in and where the conflict occurred. There are two options when '
        'resolving this conflict:'
        '\t1) Merge the contents yourself\n'
        '\t2) Choose which version to keep\n'
        'You can either make the changes directly in the file, '
        'or you can use a tool included in the Git download. '
        'We will just change the file directly. To resolve the conflict, '
        'open the text file and delete everything except what you want to keep. '
        'In this case we want to keep the line in the second block. The file should look like this when you are done:'
    ),
    Text('Save the file and close it. To officially resolve the conflict, add the file to the commit with the following:\n'
        '\$ git add filename \n'
        'If you run git status, you should see that the conflict has been resolved. \n'
        ' Now, open the Terminal or Git Bash and type the following: \n'
        '\$ git commit \n'
        'This will generate commit message and open the message in the terminal. If you would like, '
        'you can edit the message, but for now just type, :qa! to exit. Now, push the commit to GitHub with \n'
        '\$ git push \n'
        'This will finalize the merge and push the changes to master. '
        'If you look at the file on the master branch in GitHub, you will see the merge has been completed.\n'
        'This is the end of this lesson, you can now continue to the quiz when you are ready.'
    )

  ];
}