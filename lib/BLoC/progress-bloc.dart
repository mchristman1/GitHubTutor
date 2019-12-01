//This is the file used for updating the outline screen to unlock
// lessons as the student progresses through the course

import 'dart:async';
import 'package:github_tutor/BLoC/bloc.dart';
import 'package:github_tutor/ProgressStorage.dart';



class ProgressBloc implements Bloc {

  final ProgressStorage storage;

  ProgressBloc(this.storage) {
    storage.readProgress().then((Map<int,bool> values) {
      setInitialLessons(values);
    });
  }

  Map<int, bool> unlockedLessons;

  Map<int, bool> get currentUnlockedLessons => unlockedLessons;

  final lessonController = StreamController<Map<int, bool>>.broadcast();

  Stream<Map<int, bool>> get lessonStream => lessonController.stream;

  void setInitialLessons(Map<int, bool> lessons) {
    unlockedLessons = lessons;

    lessonController.sink.add(unlockedLessons);
  }

  void unlockNextLesson(int nextLesson) {
    unlockedLessons[nextLesson] = true;

    storage.writeProgress(unlockedLessons);

    lessonController.sink.add(unlockedLessons);
  }

  //used to prevent memory leaks
  @override
  void dispose() {
    lessonController.close();
  }
}