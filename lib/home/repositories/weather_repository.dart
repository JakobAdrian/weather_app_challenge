import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/home/models/weather.dart';

class WeatherRepository {
  

  static const _apiKey = 'T6TAVxg5YZfGUrrEk16H0Q==hENsMFUl3TZ3EtoB';
  List weather = [];
  Future<Weather> getWeather(String city) async {
    final url = 'https://api.api-ninjas.com/v1/weather?city=$city';
    print(url);
    final response =
        await http.get(Uri.parse(url), headers: {'X-Api-Key': _apiKey});
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print("response: $json");
      var cloud = json['cloud_pct'];
      var temp = json['temp'];
      var feels_like = json['feels_like'];
      var humidity = json['humidity'];
      var min_temp = json['min_temp'];
      var max_temp = json['max_temp'];
      var wind_speed = json['wind_speed'];
      var wind_degrees = json['wind_degrees'];
      var sunrise = json['sunrise'];
      var sunset = json['sunset'];
      print("cloud: $cloud");

      return Weather.fromJson(json);
    } else {
      throw Exception('$url failed with ${response.statusCode}');
    }
  }
}
