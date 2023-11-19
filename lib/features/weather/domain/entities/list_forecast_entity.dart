import 'clouds_entity.dart';
import 'main_entity.dart';
import 'weather_element_entity.dart';
import 'wind_entity.dart';

class ListForecastEntity {
  int dt;
  MainEntity main;
  List<WeatherElementEntity> weather;
  CloudsEntity clouds;
  WindEntity wind;
  int visibility;
  double pop;
  DateTime dtTxt;

  ListForecastEntity({
    required this.dt,
    required this.main,
    required this.weather,
    required this.clouds,
    required this.wind,
    required this.visibility,
    required this.pop,
    required this.dtTxt,
  });
}
