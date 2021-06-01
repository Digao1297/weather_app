import 'package:flutter/material.dart';
import 'package:weather_app/modules/home/controller/home_controller.dart';
import 'package:weather_app/modules/home/model/weather.dart';
import 'package:weather_app/modules/home/screen/weather_screen.dart';
import 'package:weather_app/shared/theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: FutureBuilder<Weather>(
        future: _homeController.getWeather(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("unknown error ${snapshot.error}"));
          } else {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                );

              case ConnectionState.done:
                Weather data = snapshot.data as Weather;
                return WeatherScreen(
                  weather: data,
                );
              default:
                return Center(
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                );
            }
          }
        },
      ),
    );
  }
}
