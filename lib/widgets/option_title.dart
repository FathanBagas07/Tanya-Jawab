import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const OptionTile({
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? Colors.purple : Colors.grey.shade300,
            width: selected ? 2 : 1,
          ),
          color: selected ? Colors.purple.shade50 : Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Icon(
              selected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: selected ? Colors.purple : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
