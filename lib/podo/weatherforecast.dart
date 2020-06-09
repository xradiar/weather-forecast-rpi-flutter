import 'weatherforecast/weather.dart';
import 'weatherforecast/temperature.dart';


class WeatherForecast{
  final Temperature temperature;
  final Weather weather;

  WeatherForecast({this.temperature, this.weather});

// TODO Match new JSON format
  factory WeatherForecast.fromJson(Map<String, dynamic> json){
    Temperature tempTemp = Temperature(maxTemperature: json['daily'][0]['temp']['max'].toString(),minTemperature: json['daily'][0]['temp']['min'].toString());
    Weather tempWeather = Weather(weatherStatus: json['daily'][0]['weather'][0]['main'].toString(), description: json['daily'][0]['weather'][0]['description'].toString(), icon: json['daily'][0]['weather'][0]['icon'].toString());
    var weatherForecast = WeatherForecast(temperature: tempTemp, weather: tempWeather);
        return weatherForecast;
  }

}
