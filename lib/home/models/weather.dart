import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable()
class Weather {
  final int cloud_pct;
  final int temp;
  final int feels_like;
  final int humidity;
  final int min_temp;
  final int max_temp;
  final double wind_speed;
  final int wind_degrees;
  final int sunrise;
  final int sunset;

  Weather({
    required this.cloud_pct,
    required this.temp,
    required this.feels_like,
    required this.humidity,
    required this.min_temp,
    required this.max_temp,
    required this.wind_speed,
    required this.wind_degrees,
    required this.sunrise,
    required this.sunset,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  
}  
  
  



      


 

 

// "cloud_pct": 31,
//   "temp": 8,
//   "feels_like": 6,
//   "humidity": 69,
//   "min_temp": 6,
//   "max_temp": 10,
//   "wind_speed": 2.24,
//   "wind_degrees": 139,
//   "sunrise": 1709876443,
//   "sunset": 1709917702