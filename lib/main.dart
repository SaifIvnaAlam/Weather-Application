import 'package:flutter/material.dart';
import 'package:weatherapp/application/cubit/weather_cubit.dart';
import 'package:weatherapp/infrastructure/get_weather_repo.dart';
import 'package:weatherapp/view/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (context) {
        return WeatherCubit(GetWeatherRepo());
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
