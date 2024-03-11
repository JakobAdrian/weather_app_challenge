// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      cloud_pct: json['cloud_pct'] as int,
      temp: json['temp'] as int,
      feels_like: json['feels_like'] as int,
      humidity: json['humidity'] as int,
      min_temp: json['min_temp'] as int,
      max_temp: json['max_temp'] as int,
      wind_speed: (json['wind_speed'] as num).toDouble(),
      wind_degrees: json['wind_degrees'] as int,
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'cloud_pct': instance.cloud_pct,
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'humidity': instance.humidity,
      'min_temp': instance.min_temp,
      'max_temp': instance.max_temp,
      'wind_speed': instance.wind_speed,
      'wind_degrees': instance.wind_degrees,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
