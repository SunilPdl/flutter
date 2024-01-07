import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String time;
  final String text;
  final IconData icon;
  const CustomCard({
    required this.time,
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
