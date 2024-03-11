import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/home/models/weather.dart';

class WeatherRepository {
  static const _apiKey = 'T6TAVxg5YZfGUrrEk16H0Q==hENsMFUl3TZ3EtoB';
  Future<Weather> getWeather(String city) async {
    final url = 'https://api.api-ninjas.com/v1/weather?city=$city';
    print(url);
    final response =
        await http.get(Uri.parse(url), headers: {'X-Api-Key': _apiKey});
    if (response.statusCode == 200) {
      print('Antwort: ${response.body}');
      final json = jsonDecode(response.body);

      return Weather.fromJson(json);
    } else {
      throw Exception('$url failed with ${response.statusCode}');
    }
  }
}
