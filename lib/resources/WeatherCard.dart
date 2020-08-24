import 'package:flutter/widgets.dart';
import 'package:myapp/podo/weatherforecast/DailyForecasts.dart';

class WeatherCard extends StatelessWidget {
  final int index;
  final DailyForecasts dailyForecasts;
  const WeatherCard({
    Key key,
    this.index,
    this.dailyForecasts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Date : ${dailyForecasts.forecastList[index].date}"),
          Image.asset(
            '${dailyForecasts.forecastList[index].dayIcon}-s.png',
            scale: 0.5,
          ),
          Text(dailyForecasts.forecastList[index].dayIconPhrase),
          RichText(
            textScaleFactor: 6.0,
            text: TextSpan(
              text:
                  "${dailyForecasts.forecastList[index].dayPrecipitationProbability}%",
              style: DefaultTextStyle.of(context).style,
            ),
          ),
          Text(dailyForecasts.forecastList[index].dayLongPhrase),
        ],
      ),
    );
  }
}
