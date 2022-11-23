import "package:freezed_annotation/freezed_annotation.dart";
import 'package:weatherapp/domain/current.dart';
import 'package:weatherapp/domain/location.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required Location location,
    required Current current,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
