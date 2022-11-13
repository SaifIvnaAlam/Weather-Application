import 'weather.dart';

abstract class IGetweather {
  Future<Weather> getWeather();
}
