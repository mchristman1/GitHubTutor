import 'dart:async';

import 'package:github_tutor/BLoC/bloc.dart';

class QuizBloc implements Bloc {

  bool allQuestionsAnswered = false;

  bool get currentStatus => allQuestionsAnswered;

  final quizController = StreamController<bool>.broadcast();

  Stream<bool> get quizStream => quizController.stream;

  void setStatus(bool status) {
    allQuestionsAnswered = status;

    quizController.sink.add(allQuestionsAnswered);
  }


  @override
  void dispose() {
    quizController.close();
  }
}