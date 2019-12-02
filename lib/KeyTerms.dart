import 'package:flutter/material.dart';

class KeyTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Key Terms',
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
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                        text: 'Source Control\n',
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'The management of changes to document, programs, and '
                            'other collections of information.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'GitHub\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'A software hosting service that provides source control.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'Git\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'A source control software.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'Repository\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'Where project files are stored. This can be local and remote.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'Collaborator\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'A person given permission to contribute to a repository.'
                            ' This person has both read and write permissions.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'README\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'A text file that contains information about the project '
                            'and how to set it up.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'Commit\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'An action that prepares files to be added to a remote '
                            'repository.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'Push\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'An action that adds the changes made to the remote repository.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'Branch\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'A section of a repository that contains a version of the project.'
                      )
                    ]
                ),
              )
          ),
          Divider(height: 3, thickness: 3,),
          Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    children: [
                      TextSpan(
                          text: 'Merge\n',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: 'The action that combines two branches and their commit histories.'
                      )
                    ]
                ),
              )
          ),
        ],
      );
    }
}