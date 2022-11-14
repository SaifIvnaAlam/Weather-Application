import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/application/cubit/weather_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<WeatherCubit>().getAllWeather();
    return Scaffold(
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return state.map(loading: (_) {
            return const Center(child: CircularProgressIndicator());
          }, loaded: (value) {
            var weather = value.weather;
            return Column(
              children: [Text(weather.location.name)],
            );
          }, error: (value) {
            return Text(value.error);
          });
        },
      ),
    );
  }
}
