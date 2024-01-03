import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  "140°F",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.cloud,
                  size: 64,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Rain",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
