// // gefühlte Temperatur
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:weather_app/home/models/weather.dart';
// import 'package:weather_app/home/repositories/weather_repository.dart';

// class FeelsLike extends StatefulWidget {
//   FeelsLike({Key? key}) : super(key: key);

//   @override
//   State<FeelsLike> createState() => _FeelsLikeState();
// }

// class _FeelsLikeState extends State<FeelsLike> {
//   final WeatherRepository weatherRepository = WeatherRepository();
//   late Future<Weather> weather;

//   @override
//   void initState() {
//     super.initState();
//     weather = weatherRepository.getWeather('Bali');
//   }

  
//   void updateWeather() {
//     super.setState(() {
//       weather = weatherRepository.getWeather('Berlin');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<Weather>(
//       future: weather,
//       builder: (BuildContext context, AsyncSnapshot<Weather> snapshot) {
//         if (snapshot.hasData) {
//           return SizedBox(
//             width: 150,
//             height: 150,
//             child: Text(
//               'Feels like: ${snapshot.data!.feels_like}',
//               style: const TextStyle(fontSize: 15),
//             ),
            
//           );
//         } else if (snapshot.hasError) {
//           return Text('Fehler: ${snapshot.error}');
//         } else {
//           return CircularProgressIndicator();
          
//         }
        
//       },
      
//     );
    
//   }
  
// }
