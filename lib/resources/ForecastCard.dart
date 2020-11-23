import 'package:flutter/widgets.dart';
import 'package:myapp/podo/weatherforecast/DailyForecasts.dart';
import 'package:intl/intl.dart';

class ForecastCard extends StatelessWidget {
  final int index;
  final DailyForecasts dailyForecasts;

  const ForecastCard({
    Key key,
    this.index,
    this.dailyForecasts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('MMMM dd');
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
                textScaleFactor: 4.0,
                text: TextSpan(
                  text: dateFormat
                      .format(dailyForecasts.forecastList[index].date),
                  style: DefaultTextStyle.of(context).style,
                )),
          ),
          Image.asset(
            '${dailyForecasts.forecastList[index].dayIcon}-s.png',
            scale: 0.2,
          ),
          RichText(
              textScaleFactor: 2.0,
              text: TextSpan(
                text: dailyForecasts.forecastList[index].dayIconPhrase,
                style: DefaultTextStyle.of(context).style,
              )),
          RichText(
              textScaleFactor: 8.0,
              text: TextSpan(
                text:
                    '${dailyForecasts.forecastList[index].dayPrecipitationProbability}%',
                style: DefaultTextStyle.of(context).style,
              )),
        ],
      ),
    );
  }
}
