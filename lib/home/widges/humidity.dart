// // Feuchtigkeit in %
// import 'package:flutter/material.dart';
// import 'package:weather_app/home/models/weather.dart';
// import 'package:weather_app/home/repositories/weather_repository.dart';

// class Humidity extends StatelessWidget {
//   final WeatherRepository weatherRepository = WeatherRepository();

//   Humidity({Key? key}) : super(key: key);


//   WeatherRepository weatherRepo = WeatherRepository();
//   late Future<Weather> weather;

  
  


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       width: 150,
//       height: 150,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Color.fromARGB(255, 203, 148, 255)),
//       child: FutureBuilder<Weather>(
//         future: weather,
//         builder: (BuildContext context, AsyncSnapshot<Weather> snapshot) {
//           if (snapshot.hasData) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Luftfeuchtigkeit:",
//                     style: const TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("${snapshot.data!.humidity}",
//                     style: const TextStyle(
//                         fontSize: 50,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white)),
//               ],
//             );
//           } else if (snapshot.hasError) {
//             return Text("${snapshot.error}");
//           }

//           return CircularProgressIndicator();
//         },
//       ),
//     );
//   }
// }
