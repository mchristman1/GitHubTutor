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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 15.0),),
        Text('Introduction', style: headerStyle, textAlign: TextAlign.center,),
        Container(
          padding: EdgeInsets.all(15.0),
          child: introduction,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text('Objectives', style: headerStyle, textAlign: TextAlign.center),
        Container(
          padding: EdgeInsets.all(15.0),
          child: objectives,
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.only(top: 15.0),),
        Text('What is a merge?', style: headerStyle, textAlign: TextAlign.center),
        Container(
          padding: EdgeInsets.all(15.0),
          child: mergeDefinition,
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text('Exercise - Merge a branch into master', style: headerStyle, textAlign: TextAlign.center),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise1[0],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: Image.asset('imageAssets/MergeRequest1.png'),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise1[1],
        ),
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text('Exercise 2 - Resolve the conflict', style: headerStyle, textAlign: TextAlign.center),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise2[0],
        ),
        //insert image
        Container(
          padding: EdgeInsets.all(15.0),
          child: Image.asset('imageAssets/MergeRequest2.png'),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise2[1],
        ),
        //insert image,
        Container(
          padding: EdgeInsets.all(15.0),
          child: Image.asset('imageAssets/MergeRequest3.png'),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: exercise2[2],
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

  final RichText introduction = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      text: 'This is the final lesson of the course. In the previous lesson, '
          'you created a branch in your repository. Now, it is time to show '
          'you how to merge the new branch into master, a technique known as merging.'
    ),
  );

  final RichText objectives = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      text: 'This lesson has the following objectives:\n\n'
          '1)	The student will be able to merge branches\n'
          '2)	The student will be able to explain the concept of merging'
    ),
  );

  final RichText mergeDefinition = RichText(
    textAlign: TextAlign.left,
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 17.0),
      children: [
        TextSpan(
          text: 'Simply put, a '
        ),
        TextSpan(
          text: 'merge',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: ' is when you take two branches and combine them. Now, this does '
              'not create new files or copy all the code to the bottom of the '
              'file. When two branches are merged, '
        ),
        TextSpan(
          text: 'their commit history is also merged',
          style: TextStyle(fontStyle: FontStyle.italic)
        ),
        TextSpan(
          text: '. Git tries to merge the history '
        ),
        TextSpan(
          text: 'automatically',
          style: TextStyle(fontStyle: FontStyle.italic)
        ),
        TextSpan(
          text: '; however, if there is an issue where Git cannot do so, the '
              'user will need to fix the discrepancy. In the following exercises, '
              'you will merge the branch you created in the previous lesson into master.'
        )
      ]
    )
  );

  final List<RichText> exercise1 = [
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Before you begin this exercise, go on to GitHub and make '
                'sure the text files contain different data. For example, have '
                'the file in the master branch say “master” and have the file in '
                'the other branch say, “merge me.” If you don’t quite remember '
                'how to do this, check the exercises in the previous lesson.\n\n'
                'First, open Terminal (Mac) or Git Bash (Windows) and navigate to '
                'the project folder you created in the last lesson.\n\n'
                'Next, switch to master with the following command:\n\n'
          ),
          TextSpan(
            text: '\$ git checkout master',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
            text: '\n\nWhen merging, you start on the branch you want to merge into (in this case master).\n'
                'Next, type this command to begin the merge process:\n\n'
          ),
          TextSpan(
            text: '\$ git merge branch-you-created',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
            text: '\n\nOnce you’ve done so, you should see a message like the one below:'
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
            text: 'This is because we changed the same file on two branches and '
                'Git cannot automatically determine which version to keep. '
                'This is known as a '
          ),
          TextSpan(
            text: 'merge conflict',
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(
            text: '. In the next exercise, you will learn how to resolve a '
                'merge conflict.'
          ),
        ]
      ),
    )
  ];

  final List<RichText> exercise2 = [
    RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 17.0),
        children: [
          TextSpan(
            text: 'Now, we have a common issue when merging. Type this command '
                'in Git Bash or Terminal:\n\n'
          ),
          TextSpan(
            text: '\$ git status',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
            text: '\n\nThis command will display the names of the files that are '
                'unmerged after a conflict has been detected.\n\n'
                'Open the text file in the repository on your computer. You '
                'should see something like this:'
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
            text: 'Let’s walk through this weird looking mess. '
                'The first line of the file (HEAD) states that the current branch '
                '(master in our case) is everything above the line of =. '
                'This means the bottom part of the file is what we are trying '
                'to merge in and where the conflict occurred. There are two '
                'options when resolving this conflict:\n\n'
                '1)	Merge the contents yourself\n'
                '2)	Choose which version to keep\n\n'
                'You can either make the changes directly in the file, or you '
                'can use a tool included in the Git download. We will just change '
                'the file directly. To resolve the conflict, open the text file '
                'and delete everything except what you want to keep. In this case '
                'we want to keep the line in the second block. The file should '
                'look like this when you are done:'
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
            text: 'Save the file and close it. To officially resolve the conflict, '
                'add the file to the commit with the following:\n\n'
          ),
          TextSpan(
            text: '\$ git add filename',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
            text: '\n\nIf you run git status, you should see that the conflict has been resolved.\n'
                ' Now, open the Terminal or Git Bash and type the following:\n\n'
          ),
          TextSpan(
            text: '\$ git commit',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
            text: '\n\nThis will generate commit message and open the message in '
                'the terminal. If you would like, you can edit the message, but '
                'for now just type, '
          ),
          TextSpan(
            text: 'qa!',
            style: TextStyle(fontStyle: FontStyle.italic)
          ),
          TextSpan(
            text: ' to exit. Now, push the commit to GitHub with\n\n'
          ),
          TextSpan(
            text: '\$ git push',
            style: TextStyle(backgroundColor: Color.fromRGBO(215, 215, 215, 1))
          ),
          TextSpan(
            text: '\n\nThis will finalize the merge and push the changes to master. '
                'If you look at the file on the master branch in GitHub, you '
                'will see the merge has been completed.\n\n'
                'This is the end of this lesson, you can now continue to the '
                'quiz when you are ready.'
          )
        ]
      ),
    )
  ];
}