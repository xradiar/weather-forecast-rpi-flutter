import 'package:flutter/material.dart';
import 'package:myapp/logic/api.dart';
import 'package:myapp/podo/weatherforecast/DailyForecasts.dart';
import 'package:myapp/podo/weatherforecast/Forecast.dart';
import 'package:myapp/resources/ForecastButton.dart';

import 'resources/WeatherCard.dart';

void main() {
  // Future<DailyForecasts> futureWeatherForecast;

  // futureWeatherForecast = fetchWeatherForecast();
  runApp(WeatherForecast());
}

class WeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(child: ForecastButton(index: 0)),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: ForecastButton(index: 1)),
                Expanded(child: ForecastButton(index: 2)),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: ForecastButton(index: 3)),
                Expanded(child: ForecastButton(index: 4)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
