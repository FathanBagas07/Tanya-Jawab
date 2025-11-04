import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quiz_provider.dart';
import 'home_screen.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final String name;
  final String nim;

  const ResultScreen({required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    final quiz = Provider.of<QuizProvider>(context);
    final total = quiz.allQuestions.length;
    final correct = quiz.correctCount;

    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Skor Kamu", style: TextStyle(fontSize: 20)),
            Text(
              "${(correct / total * 100).round()}",
              style: const TextStyle(
                fontSize: 64,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              margin: const EdgeInsets.all(24),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(name, style: const TextStyle(fontSize: 18)),
                    Text(nim, style: const TextStyle(color: Colors.grey)),
                    const SizedBox(height: 12),
                    Text("Benar: $correct | Salah: ${total - correct}"),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    quiz.reset();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()),
                    );
                  },
                  icon: const Icon(Icons.home),
                  label: const Text("Beranda"),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    quiz.reset();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => QuizScreen(name: name, nim: nim)),
                    );
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text("Mulai Ulang"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
