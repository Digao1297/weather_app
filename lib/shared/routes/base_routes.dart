import 'package:flutter/material.dart';
import 'package:weather_app/modules/home/screen/home_screen.dart';

Route<dynamic> baseRoutes(RouteSettings settings) {
  late var route;

  switch (settings.name) {
    case '/':
      route = (context) => HomeScreen();
      break;
    default:
      route = (context) => HomeScreen();
      break;
  }
  return MaterialPageRoute(builder: route);
}
