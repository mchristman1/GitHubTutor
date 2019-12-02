import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Links',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Here are some helpful links relating to the Tutor.',
            style: TextStyle(fontSize: 17.0, color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('GitHub:', style: TextStyle(fontSize: 17, color: Colors.black), textAlign: TextAlign.left,),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: githubLink,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('Git:', style: TextStyle(fontSize: 17, color: Colors.black), textAlign: TextAlign.left,),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: gitLink,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('The GitHub Tutor is built upon Flutter:', style: TextStyle(fontSize: 17, color: Colors.black), textAlign: TextAlign.left,),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: flutterLink,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('Android Studio was used to build and test the GitHub Tutor:', style: TextStyle(fontSize: 17, color: Colors.black), textAlign: TextAlign.left,),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: androidStudioLink,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('Checout the GitHub Tutor\'s GitHub at:', style: TextStyle(fontSize: 17, color: Colors.black), textAlign: TextAlign.left,),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: tutorGithubLink,
        ),
      ],
    );
  }

  InkWell githubLink = InkWell (
    child: Text('https://github.com/', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 17.0),),
    onTap: () async {
      if(await canLaunch('https://github.com/')) {
        await launch('https://github.com/');
      }
    },
  );

  InkWell gitLink = InkWell (
    child: Text('https://git-scm.com/', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 17.0),),
    onTap: () async {
      if(await canLaunch('https://git-scm.com/')) {
        await launch('https://git-scm.com/');
      }
    },
  );

  InkWell flutterLink = InkWell (
    child: Text('https://flutter.dev/', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 17.0),),
    onTap: () async {
      if(await canLaunch('https://flutter.dev/')) {
        await launch('https://flutter.dev/');
      }
    },
  );

  InkWell androidStudioLink = InkWell (
    child: Text('https://developer.android.com/studio', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 17.0),),
    onTap: () async {
      if(await canLaunch('https://developer.android.com/studio')) {
        await launch('https://developer.android.com/studio');
      }
    },
  );

  InkWell tutorGithubLink = InkWell (
    child: Text('https://github.com/mchristman1/GitHubTutor', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 17.0),),
    onTap: () async {
      if(await canLaunch('https://github.com/mchristman1/GitHubTutor')) {
        await launch('https://github.com/mchristman1/GitHubTutor');
      }
    },
  );
}