import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.time,
    required this.text,
    Key? key,
  }) : super(key: key);

  String time;
  String text;
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
            const Icon(
              Icons.cloud,
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
