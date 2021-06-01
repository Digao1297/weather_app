import 'package:flutter/material.dart';
import 'package:weather_app/modules/app_widget.dart';
import 'package:weather_app/shared/localization/localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Localization.hasPermission();
    runApp(AppWidget());
  } catch (e) {
    print(e);
  }
}
