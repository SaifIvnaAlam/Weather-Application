import 'weather.dart';

abstract class IGetweatherRepo {
  Future<Weather> getWeather();
}
