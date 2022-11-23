import 'dart:convert';
import 'package:weatherapp/domain/i_getweather_repo.dart';
import 'package:weatherapp/domain/weather.dart';
import 'package:http/http.dart' as http;

class GetWeatherRepo implements IGetweatherRepo {
  @override
  Future<Weather> getWeather() async {
    var response = await http.get(Uri.parse(
        "https://api.weatherapi.com/v1/current.json?key=735401ddc5ff4f57b4e162606221211&q=Bangladesh&aqi=no"));

    var data = jsonDecode(response.body);
    var weatherResponse = Weather.fromJson(data as Map<String, dynamic>);

    return (weatherResponse);
  }
}
