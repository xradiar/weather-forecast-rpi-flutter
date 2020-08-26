import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/logic/api.dart';
import 'package:myapp/podo/weatherforecast/DailyForecasts.dart';

import 'ForecastCard.dart';

class ForecastButton extends StatelessWidget {
  final int index;
  const ForecastButton({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        child: Container(
          padding: EdgeInsets.all(8.0),
          color: Colors.blueGrey[800],
          child: SizedBox.expand(
            child: FutureBuilder(
                future: fetchWeatherForecast(),
                builder: (buildContext, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  DailyForecasts forecastItems = snapshot.data;
                  return Builder(
                    builder: (
                      buildContext,
                    ) {
                      return Center(
                        child: RaisedButton(
                          color: Colors.blueGrey[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Align(
                            alignment: Alignment.center,
                            child: ForecastCard(
                              index: index,
                              dailyForecasts: forecastItems,
                            ),
                          ),
                          onPressed: () {
                            displayForecast(context);
                          },
                        ),
                      );
                    },
                  );
                }),
          ),
        ),
      ),
    );
  }

  void displayForecast(var context) {
    // TODO:Show details of forecast
    print(DateTime.now());
    Scaffold.of(context).openDrawer();
  }
}
