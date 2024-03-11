// import 'package:flutter/material.dart';
// import 'package:weather_app/home/models/weather.dart';
// import 'package:weather_app/home/repositories/weather_repository.dart';

// class TempNow extends StatefulWidget {

//   final WeatherRepository weatherRepository = WeatherRepository();
//   final TextEditingController myController;

//   TempNow({Key? key, required this.myController}) : super(key: key);

//   @override
//   State<TempNow> createState() => _TempNowState();
// }

// class _TempNowState extends State<TempNow> {
//   final WeatherRepository weatherRepository = WeatherRepository();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<Weather>(
//       future: weatherRepository.getWeather("$TempNow"), // Passen Sie den Stadtnamen an Ihre Anforderungen an
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         } else if (snapshot.hasError) {
//           return Text('Fehler: ${snapshot.error}');
//         } else {
//           return SizedBox(
//             width: 200,
//             height: 200,
//             child: Text(
//               'Temp: ${snapshot.data!.temp}',
//               style: const TextStyle(fontSize: 30),
//             ),
//           );
//         }
//       },
//     );
//   }
// }