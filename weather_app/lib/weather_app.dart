import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/components/additional_info_card.dart';
import 'package:weather_app/components/custom_card_screen.dart';
import 'package:weather_app/components/weather_card_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("refresh");
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //for main card
            const SizedBox(
              width: double.infinity,
              child: WeatherCard(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Weather Forecast",
              style: TextStyle(fontSize: 22),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCard(
                    time: "3:00",
                    text: "320.00",
                  ),
                  CustomCard(
                    time: "5:00",
                    text: "340.00",
                  ),
                  CustomCard(
                    time: "7:00",
                    text: "360.00",
                  ),
                  CustomCard(
                    time: "9:00",
                    text: "380.00",
                  ),
                  CustomCard(
                    time: "11:00",
                    text: "420.00",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Additional Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInfo(
                    icon: Icons.water_drop,
                    text: "Humidity",
                    value: 50.0,
                  ),
                  AdditionalInfo(
                    icon: Icons.air,
                    text: "Wind Speed",
                    value: 8.76,
                  ),
                  AdditionalInfo(
                    icon: Icons.beach_access,
                    text: "Pressure",
                    value: 1050,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
