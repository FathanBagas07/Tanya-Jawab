import 'package:flutter/foundation.dart';
import '../data/questions.dart';
import '../models/question.dart';

class QuizProvider with ChangeNotifier {
  int currentIndex = 0;
  Map<int, int> selectedAnswers = {};

  List<Question> get allQuestions => questions;
  Question get currentQuestion => questions[currentIndex];

  void selectAnswer(int index) {
    selectedAnswers[currentIndex] = index;
    notifyListeners();
  }

  void nextQuestion() {
    if (currentIndex < questions.length - 1) {
      currentIndex++;
      notifyListeners();
    }
  }

  void prevQuestion() {
    if (currentIndex > 0) {
      currentIndex--;
      notifyListeners();
    }
  }

  int get correctCount {
    int correct = 0;
    selectedAnswers.forEach((qIndex, answer) {
      if (questions[qIndex].answerIndex == answer) correct++;
    });
    return correct;
  }

  void reset() {
    currentIndex = 0;
    selectedAnswers.clear();
    notifyListeners();
  }
}
