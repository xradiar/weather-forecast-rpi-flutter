import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/podo/weatherforecast/DailyForecasts.dart';
import 'package:myapp/resources/hidden.dart';


    Future<DailyForecasts> fetchWeatherForecast() async{
      Map<String, dynamic> assetKey = await loadAsset();
      final response = await http.get('http://dataservice.accuweather.com/forecasts/v1/daily/5day/226396?apikey=${assetKey['api_key']}&details=true&metric=true');


  if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return DailyForecasts.generateList(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to get data from API');
    }
    

  }

