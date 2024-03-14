// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:weather_app/home/models/weather.dart';
// import 'package:weather_app/home/repositories/weather_repository.dart';

// class TempNow extends StatelessWidget {
//   final WeatherRepository weatherRepository = WeatherRepository();

//   TempNow({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<Weather>(
//       future: weatherRepository.getWeather('Berlin'), // Passen Sie den Stadtnamen an Ihre Anforderungen an
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         } else if (snapshot.hasError) {
//           return Text('Fehler: ${snapshot.error}');
//         } else {
//           return Container(
//             width: 150,
//             height: 150,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Column(
            
//             children:[ 
//               Text("min. Temp:"),
              
//               Text("${snapshot.data!.temp}", style: TextStyle(fontSize: 15),),
              
//             ],
//             ),
//           );
//         }
//       },
//     );
//   }
// }