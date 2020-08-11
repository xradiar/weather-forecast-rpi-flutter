import 'package:myapp/podo/weatherforecast/Forecast.dart';

class DailyForecasts{
  final List<Forecast> forecastList;
  
  DailyForecasts({this.forecastList});


  factory DailyForecasts.generateList(Map<String, dynamic> json){
   List<Forecast> forecastList = List<Forecast>();
     for (var dailyForecast in json["DailyForecasts"]) {
      Forecast dayForecast = Forecast.generateForecast(dailyForecast);
      forecastList.add(dayForecast);
     }   

    DailyForecasts dailyForecasts = DailyForecasts(forecastList: forecastList);

    return dailyForecasts;
  }
}