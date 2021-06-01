import 'dart:convert';

class Weather {
  int temp;
  int windSpeed;
  int humidity;
  String description;
  String city;

  Weather({
    required this.temp,
    required this.windSpeed,
    required this.humidity,
    required this.description,
    required this.city,
  });

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      temp: map['main']['temp'].round().toInt(),
      windSpeed: (map['wind']['speed'] * 3.6).round().toInt(),
      humidity: map['main']['humidity'].round().toInt(),
      description: map['weather'][0]['description'],
      city: map['name'],
    );
  }

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source));
}
