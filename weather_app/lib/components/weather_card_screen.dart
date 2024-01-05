import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  double temp;
  IconData icon;
  final String weatherStatus;

  WeatherCard({
    required this.temp,
    required this.icon,
    required this.weatherStatus,
    Key? key,
  }) : super(key: key);

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
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  '$temp k',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  icon,
                  size: 64,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  weatherStatus,
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
