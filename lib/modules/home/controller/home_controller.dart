import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/modules/home/model/weather.dart';
import 'package:weather_app/shared/localization/localization.dart';

class HomeController {
  Future<Position> getMyLocation() async {
    return Localization.getLocation();
  }

  Future<Weather> getWeather() async {
    Position location = await getMyLocation();
    var key = '';
    var url = Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$key&lang=pt_br&units=metric');
    print(url);
    var response = await http.get(url);

    Weather weather = Weather.fromJson(response.body);
    return weather;
  }
}
