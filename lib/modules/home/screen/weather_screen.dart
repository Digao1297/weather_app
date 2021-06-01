import 'package:flutter/material.dart';

import 'package:weather_app/modules/home/model/weather.dart';
import 'package:weather_app/shared/theme/app_colors.dart';

class WeatherScreen extends StatelessWidget {
  final Weather weather;
  const WeatherScreen({
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.0),
                ),
              ),
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'Weather',
                  style: TextStyle(
                    color: AppColors.background,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weather.city,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24.0,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${weather.temp}',
                      style: TextStyle(color: AppColors.white, fontSize: 72),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        '°C',
                        style: TextStyle(color: AppColors.white, fontSize: 24),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0, right: 48.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Icon(
                            Icons.water,
                            color: AppColors.white,
                          ),
                          title: Text(
                            '${weather.humidity}',
                            style: TextStyle(
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          leading: Icon(
                            Icons.air,
                            color: AppColors.white,
                          ),
                          title: Text(
                            '${weather.windSpeed}  km/h',
                            style: TextStyle(
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  weather.description,
                  style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 24,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
