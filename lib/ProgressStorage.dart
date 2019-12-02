//ProgressStorage.dart
//Provides access to file where lesson progress is stored

import 'dart:io';

import 'package:github_tutor/Constants.dart';
import 'package:path_provider/path_provider.dart';

class ProgressStorage {
  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future <File> get localFile async {
    final path = await localPath;

    return File('$path/lessonProgress.txt');
  }

  Future <Map<int, bool>> readProgress() async {
    try {
      final file = await localFile;

      //read the file
      String contents = await file.readAsString();
      List<String> splitString = contents.split(', ');

      Map<int, bool> contentMap = {};

      for(String i in splitString) {
        List<String> valuePair = i.split(': ');
        int key;

        if(valuePair[0][0] == '{') {
          key = key = int.parse(valuePair[0].substring(1, valuePair[0].length));
        } else {
          key = int.parse(valuePair[0]);
        }

        List<String> splitValue = valuePair[1].split('}');
        bool value = splitValue[0] == 'true';

        contentMap[key] = value;
      }

      return contentMap;
    } catch (error) {
      print(error.toString());
      return initialLessonSetup;
    }
  }

  Future<File> writeProgress(Map<int, bool> progress) async {
    final file = await localFile;
    return file.writeAsString(progress.toString());
  }
}