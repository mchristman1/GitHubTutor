import 'package:flutter/material.dart';

enum Q1 { True, False, NULL}
enum Q2 { A, B, C, NULL}
enum Q3 { A, B, C, NULL}
enum Q4 { A, B, C, NULL}
enum Q5 { A, B, C, NULL}
enum Q6 { A, B, C, NULL}
enum Q7 { True, False, NULL}
enum Q8 { True, False, NULL}
enum Q9 { True, False, NULL}
enum Q10 { A, B, C, NULL}
enum Q11 { A, B, C, NULL}
enum Q12 { A, B, C, NULL}
enum Q13 { A, B, C, NULL}
enum Q14 { True, False, NULL}
enum Q15 { A, B, C, NULL}


class MidCourseQStatefulWidget extends StatefulWidget {
  MidCourseQStatefulWidget({Key key}) : super(key : key);

  @override
  MidCourseQuizState createState() => MidCourseQuizState();
}

class MidCourseQuizState extends State<MidCourseQStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Mid-Course Quiz',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: buildQuiz()),
    );
  }

  Q1 answer1 = Q1.NULL;
  Q2 answer2 = Q2.NULL;
  Q3 answer3 = Q3.NULL;
  Q4 answer4 = Q4.NULL;
  Q5 answer5 = Q5.NULL;
  Q6 answer6 = Q6.NULL;
  Q7 answer7 = Q7.NULL;
  Q8 answer8 = Q8.NULL;
  Q9 answer9 = Q9.NULL;
  Q10 answer10 = Q10.NULL;
  Q11 answer11 = Q11.NULL;
  Q12 answer12 = Q12.NULL;
  Q13 answer13 = Q13.NULL;
  Q14 answer14 = Q14.NULL;
  Q15 answer15 = Q15.NULL;

  Widget buildQuiz() {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Quiz Introduction',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'This is the Mid-Course Quiz. There are a total of 15 questions. Some are multiple choice are some are true false. You must get at least 12 questions correct to move on to the last half of the course.',
          style: TextStyle(
            fontSize: 17,
          ),
          textAlign: TextAlign.left,
        ),
        Padding(padding: EdgeInsets.all(10),),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 1 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: Source control and version control are NOT the same thing.' ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q1.True,
            groupValue: answer1,
            onChanged: (Q1 value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q1.False,
            groupValue: answer1,
            onChanged: (Q1 value) {
              setState(() {
                answer1 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 2 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is source control?' ),
        ListTile(
          title: Text('Management of changes to documents, programs, and other collections of information.'),
          leading: Radio(
            value: Q2.A,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Management of documentation only.'),
          leading: Radio(
            value: Q2.B,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Controlling the amount of resources for a project.'),
          leading: Radio(
            value: Q2.C,
            groupValue: answer2,
            onChanged: (Q2 value) {
              setState(() {
                answer2 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 3 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is GitHub?' ),
        ListTile(
          title: Text('A software hosting service.'),
          leading: Radio(
            value: Q3.A,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A version control system.'),
          leading: Radio(
            value: Q3.B,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A website for hosting documentation.'),
          leading: Radio(
            value: Q3.C,
            groupValue: answer3,
            onChanged: (Q3 value) {
              setState(() {
                answer3 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 4 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'How does GitHub provide source control?' ),
        ListTile(
          title: Text('Through a custom system.'),
          leading: Radio(
            value: Q4.A,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('GitHub does not provide source control.'),
          leading: Radio(
            value: Q4.B,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Through a system called Git.'),
          leading: Radio(
            value: Q4.C,
            groupValue: answer4,
            onChanged: (Q4 value) {
              setState(() {
                answer4 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 5 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is Git?' ),
        ListTile(
          title: Text('A version control system.'),
          leading: Radio(
            value: Q5.A,
            groupValue: answer5,
            onChanged: (Q5 value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A software hosting company.'),
          leading: Radio(
            value: Q5.B,
            groupValue: answer5,
            onChanged: (Q5 value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A security software.'),
          leading: Radio(
            value: Q5.C,
            groupValue: answer5,
            onChanged: (Q5 value) {
              setState(() {
                answer5 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 6 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'Which account plan should you use for this course?' ),
        ListTile(
          title: Text('Team Plan.'),
          leading: Radio(
            value: Q6.A,
            groupValue: answer6,
            onChanged: (Q6 value) {
              setState(() {
                answer6 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Pro Plan.'),
          leading: Radio(
            value: Q6.B,
            groupValue: answer6,
            onChanged: (Q6 value) {
              setState(() {
                answer6 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Free Plan.'),
          leading: Radio(
            value: Q6.C,
            groupValue: answer6,
            onChanged: (Q6 value) {
              setState(() {
                answer6 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 7 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: Your email should be an email you check often.' ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q7.True,
            groupValue: answer7,
            onChanged: (Q7 value) {
              setState(() {
                answer7 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q7.False,
            groupValue: answer7,
            onChanged: (Q7 value) {
              setState(() {
                answer7 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 8 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: Your username should be whatever you want it to be.' ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q8.True,
            groupValue: answer8,
            onChanged: (Q8 value) {
              setState(() {
                answer8 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q8.False,
            groupValue: answer8,
            onChanged: (Q8 value) {
              setState(() {
                answer8 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 9 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: GitHub offers free plans for teams.' ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q9.True,
            groupValue: answer9,
            onChanged: (Q9 value) {
              setState(() {
                answer9 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q9.False,
            groupValue: answer9,
            onChanged: (Q9 value) {
              setState(() {
                answer9 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 10 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'Why do you need to download Git (Mac) or Git Bash (Windows)?' ),
        ListTile(
          title: Text('To interact with GitHub from your computer.'),
          leading: Radio(
            value: Q10.A,
            groupValue: answer10,
            onChanged: (Q10 value) {
              setState(() {
                answer10 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('To create projects.'),
          leading: Radio(
            value: Q10.B,
            groupValue: answer10,
            onChanged: (Q10 value) {
              setState(() {
                answer10 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('To create a GitHub account.'),
          leading: Radio(
            value: Q10.C,
            groupValue: answer10,
            onChanged: (Q10 value) {
              setState(() {
                answer10 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 11 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What should you do after you download Git or Git Bash?' ),
        ListTile(
          title: Text('Create a repository.'),
          leading: Radio(
            value: Q11.A,
            groupValue: answer11,
            onChanged: (Q11 value) {
              setState(() {
                answer11 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Create a GitHub account.'),
          leading: Radio(
            value: Q11.B,
            groupValue: answer11,
            onChanged: (Q11 value) {
              setState(() {
                answer11 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Generate an SSH key'),
          leading: Radio(
            value: Q11.C,
            groupValue: answer11,
            onChanged: (Q11 value) {
              setState(() {
                answer11 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 12 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is the last step for setup?' ),
        ListTile(
          title: Text('Add the SSH key to GitHub.'),
          leading: Radio(
            value: Q12.A,
            groupValue: answer12,
            onChanged: (Q12 value) {
              setState(() {
                answer12 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Create a new repository on GitHub.'),
          leading: Radio(
            value: Q12.B,
            groupValue: answer12,
            onChanged: (Q12 value) {
              setState(() {
                answer12 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Copy the SSH key to your clipboard.'),
          leading: Radio(
            value: Q12.C,
            groupValue: answer12,
            onChanged: (Q12 value) {
              setState(() {
                answer12 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 13 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What is a repository?' ),
        ListTile(
          title: Text('A project on GitHub.'),
          leading: Radio(
            value: Q13.A,
            groupValue: answer13,
            onChanged: (Q13 value) {
              setState(() {
                answer13 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A place where a project is hosted on GitHub.'),
          leading: Radio(
            value: Q13.B,
            groupValue: answer13,
            onChanged: (Q13 value) {
              setState(() {
                answer13 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('A chatroom for collaborators.'),
          leading: Radio(
            value: Q13.C,
            groupValue: answer13,
            onChanged: (Q13 value) {
              setState(() {
                answer13 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 14 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'True or False: Private repositories do NOT allow collaborators.' ),
        ListTile(
          title: Text('True'),
          leading: Radio(
            value: Q14.True,
            groupValue: answer14,
            onChanged: (Q14 value) {
              setState(() {
                answer14 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('False'),
          leading: Radio(
            value: Q14.False,
            groupValue: answer14,
            onChanged: (Q14 value) {
              setState(() {
                answer14 = value;
              });
            },
          ),
        ),
        Divider(height: 3, thickness: 3,),
        Padding(padding: EdgeInsets.all(10),),
        Text(
          'Question 15 of 15',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text( 'What are the default permissions for collaborators?' ),
        ListTile(
          title: Text('Read and Write.'),
          leading: Radio(
            value: Q15.A,
            groupValue: answer15,
            onChanged: (Q15 value) {
              setState(() {
                answer15 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Read only.'),
          leading: Radio(
            value: Q15.B,
            groupValue: answer15,
            onChanged: (Q15 value) {
              setState(() {
                answer15 = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Write only.'),
          leading: Radio(
            value: Q15.C,
            groupValue: answer15,
            onChanged: (Q15 value) {
              setState(() {
                answer15 = value;
              });
            },
          ),
        ),
      ],
    );
  }
}