import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quiz_provider.dart';
import '../widgets/option_tile.dart';
import '../widgets/question_card.dart';
import 'result_screen.dart';

class QuizScreen extends StatelessWidget {
  final String name;
  final String nim;

  const QuizScreen({required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Pertanyaan"),
      ),
      body: Consumer<QuizProvider>(
        builder: (context, quiz, child) {
          final question = quiz.currentQuestion;
          final selected = quiz.selectedAnswers[quiz.currentIndex];

          return Column(
            children: [
              QuestionCard(
                index: quiz.currentIndex,
                total: quiz.allQuestions.length,
                question: question.question,
              ),
              ...List.generate(question.options.length, (i) {
                return OptionTile(
                  text: question.options[i],
                  selected: selected == i,
                  onTap: () => quiz.selectAnswer(i),
                );
              }),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: quiz.prevQuestion,
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      if (quiz.currentIndex == quiz.allQuestions.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ResultScreen(
                              name: name,
                              nim: nim,
                            ),
                          ),
                        );
                      } else {
                        quiz.nextQuestion();
                      }
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}