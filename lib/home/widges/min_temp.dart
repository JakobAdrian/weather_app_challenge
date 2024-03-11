import 'package:flutter/material.dart';
import 'package:weather_app/home/models/weather.dart';
import 'package:weather_app/home/repositories/weather_repository.dart';

class MinTemp extends StatelessWidget {
  final WeatherRepository weatherRepository = WeatherRepository();

  MinTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Weather>(
      future: weatherRepository.getWeather('Berlin'), // Passen Sie den Stadtnamen an Ihre Anforderungen an
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Fehler: ${snapshot.error}');
        } else {
          return SizedBox(
            width: 200,
            height: 200,
            child: Text(
              'Min Temp: ${snapshot.data!.minTemp}',
              style: const TextStyle(fontSize: 30),
            ),
          );
        }
      },
    );
  }
}