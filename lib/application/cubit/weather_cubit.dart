import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp/domain/i_getweather_repo.dart';
import 'package:weatherapp/domain/weather.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final IGetweatherRepo _getweatherRepo;

  WeatherCubit(this._getweatherRepo) : super(const WeatherState.loading());

  Future getAllWeather() async {
    var weatherList = await _getweatherRepo.getWeather();
    emit(WeatherState.loaded(weatherList));
  }
}
