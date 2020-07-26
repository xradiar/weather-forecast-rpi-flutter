import 'weatherforecast/DailyForecasts.dart';
import 'weatherforecast/headline.dart';


class WeatherForecast{
  final List<DailyForecasts> dailyForecasts;
  WeatherForecast({this.dailyForecasts});
//  Need to get:
//    Today's forecast
//    Forecast for next 5 days

// TODO Match new JSON format
  factory WeatherForecast.fromJson(Map<String, dynamic> json){
    DailyForecast dailyForecast = DailyForecast();
    var weatherForecast = WeatherForecast(dailyForecasts: tempWeather);
        return weatherForecast;
  }

}
