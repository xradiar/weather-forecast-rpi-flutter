class Forecast {
  // final String date;
  final DateTime date;

  final String minTemp;
  final String maxTemp;

  final String dayPrecipitationProbability;
  final String dayIcon;
  final String dayIconPhrase;
  final String dayLongPhrase;

  Forecast(
      {this.date,
      this.minTemp,
      this.maxTemp,
      this.dayPrecipitationProbability,
      this.dayIcon,
      this.dayIconPhrase,
      this.dayLongPhrase});

  factory Forecast.generateForecast(Map<String, dynamic> dailyForecast) {
    Forecast forecast = Forecast(
        // date: dailyForecast["Date"],
        date: DateTime.parse(dailyForecast["Date"]).toLocal(),
        minTemp: dailyForecast["Temperature"]["Minimum"]["Value"].toString(),
        maxTemp: dailyForecast["Temperature"]["Maximum"]["Value"].toString(),
        dayPrecipitationProbability:
            dailyForecast["Day"]["PrecipitationProbability"].toString(),
        dayIcon: dailyForecast["Day"]["Icon"].toString(),
        dayIconPhrase: dailyForecast["Day"]["IconPhrase"],
        dayLongPhrase: dailyForecast["Day"]["LongPhrase"]);
    return forecast;
  }
}
