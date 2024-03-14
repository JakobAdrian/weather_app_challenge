// // Windgeschwindigkeit

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:weather_app/home/models/weather.dart';
// import 'package:weather_app/home/repositories/weather_repository.dart';

// class WindSpeed extends StatefulWidget {
//   @override
//   _WindSpeedState createState() => _WindSpeedState();
// }

// class _WindSpeedState extends State<WindSpeed> {
//   double? windSpeed;

//   @override
//   void initState() {
//     super.initState();
//     fetchWindSpeed();
//   }

//   void fetchWindSpeed() async {
//     final WeatherRepository weatherRepository = WeatherRepository();
//     final Weather weather = await weatherRepository.getWeather('Berlin');
//     setState(() {
//       windSpeed = weather.wind_speed;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       height: 150,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         children: [
//           Text(
//             "Windgeschwindigkeit: ${windSpeed ?? 'Laden...'}",
//             style: const TextStyle(fontSize: 15),
//           ),
//         ],
//       ),
//     );
//   }
// }
