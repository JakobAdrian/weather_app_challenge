// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:weather_app/home/models/weather.dart';
// import 'package:weather_app/home/models/weather_repository.dart';
// import 'package:json_annotation/json_annotation.dart';


// class Cloud extends StatelessWidget {
//    Cloud({super.key});
   
  
// Map<String, dynamic> jsonData = {
//     'cloud_pct': 50,
//     'temp': 25,
//     'feels_like': 28,
//     'humidity': 80,
//     'min_temp': 20,
//     'max_temp': 30,
//     'wind_speed': 10.5,
//     'wind_degrees': 180,
//     'sunrise': 1629876543,
//     'sunset': 1629912345,
//   };

//   // Konvertieren Sie JSON in ein Weather-Objekt
//   Weather weather = _$WeatherFromJson(json);

//   // Greifen Sie auf die cloud_pct-Eigenschaft zu
//   int cloudPct = weather.cloud_pct;

  
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Text(
//         'Cloud: $cloudPct%',
//         style: const TextStyle(fontSize: 20),
//       ),
//     );
//   }
// }