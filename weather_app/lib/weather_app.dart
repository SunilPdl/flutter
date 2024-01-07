import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/components/additional_info_card.dart';
import 'package:weather_app/components/custom_card_screen.dart';
import 'package:weather_app/components/weather_card_screen.dart';
import 'package:http/http.dart' as http;

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  late Future<Map<String, dynamic>> weather;

  Future<Map<String, dynamic>> getWeatherInfo() async {
    try {
      final apikey = dotenv.env['API_KEY'];
      String cityName = 'Pokhara';
      final url =
          'https://api.openweathermap.org/data/2.5/weather?q=$cityName&APPID=$apikey';
      final uri = Uri.parse(url);
      final res = await http.get(uri);
      final data = jsonDecode(res.body);
      // print(json['weather']);
      if (data['cod'] != 200) {
        throw 'An unexpected error occured';
      }
      return data;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  void initState() {
    super.initState();
    weather = getWeatherInfo();
  }

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
              setState(() {
                weather = getWeatherInfo();
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: FutureBuilder(
        future: weather,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final weatherData = snapshot.data!;
          print(weatherData);
          final temp = weatherData['main']['temp'];
          final weatherStatus = weatherData['weather'][0]['main'];
          final humidity = weatherData['main']['humidity'];
          final pressure = weatherData['main']['pressure'];
          final windSpeed = weatherData['wind']['speed'];

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //for main card
                SizedBox(
                  width: double.infinity,
                  child: WeatherCard(
                    temp: temp,
                    icon: weatherStatus == "Clouds" || weatherStatus == "Rain"
                        ? Icons.cloud
                        : Icons.sunny,
                    weatherStatus: weatherStatus,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Weather Forecast",
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: 6,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomCard(
                        time: "3:00",
                        text: "240.00",
                        icon: Icons.cloud,
                      ),
                      CustomCard(
                        time: "5:00",
                        text: "302.00",
                        icon: Icons.sunny,
                      ),
                      CustomCard(
                        time: "7:00",
                        text: "304.00",
                        icon: Icons.sunny,
                      ),
                      CustomCard(
                        time: "9:00",
                        text: "220.00",
                        icon: Icons.cloud,
                      ),
                      CustomCard(
                        time: "11:00",
                        text: "202.00",
                        icon: Icons.cloud,
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
                const SizedBox(
                  height: 6,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AdditionalInfo(
                        icon: Icons.water_drop,
                        text: "Humidity",
                        value: humidity.toString(),
                      ),
                      AdditionalInfo(
                        icon: Icons.air,
                        text: "Wind Speed",
                        value: windSpeed.toString(),
                      ),
                      AdditionalInfo(
                        icon: Icons.beach_access,
                        text: "Pressure",
                        value: pressure.toString(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
