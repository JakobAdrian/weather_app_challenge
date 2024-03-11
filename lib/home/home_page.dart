import 'package:flutter/material.dart';
import 'package:weather_app/home/repositories/weather_repository.dart';
import 'package:weather_app/home/widges/min_temp.dart';
import 'package:weather_app/home/widges/temp_now.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Weather App'), iconTheme: const IconThemeData()),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter city',
                      contentPadding: EdgeInsets.all(15)),
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 20),
                FilledButton(
                  child: const Text('fetch weather'),
                  onPressed: () {
                    WeatherRepository().getWeather(myController.text);
                  },
                ),
                Row(
                  children: [
                    Text('Temperature: '),
                    Text(''),
                  ],
                ),
                Row(
                  children: [
                    MinTemp(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
