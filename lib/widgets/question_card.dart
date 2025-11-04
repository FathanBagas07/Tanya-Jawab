import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final int index;
  final int total;
  final String question;

  const QuestionCard({
    Key? key,
    required this.index,
    required this.total,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            "Pertanyaan ${index + 1} / $total",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            question,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              height: 1.4,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
