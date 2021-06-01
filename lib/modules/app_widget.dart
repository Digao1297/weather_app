import 'package:flutter/material.dart';
import 'package:weather_app/shared/shared.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: baseRoutes,
    );
  }
}
