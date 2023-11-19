import 'clouds_entity.dart';
import 'coord_entity.dart';
import 'main_entity.dart';
import 'rain_entity.dart';
import 'sys_entity.dart';
import 'weather_element_entity.dart';
import 'wind_entity.dart';

class WeatherEntity {
  CoordEntity coord;
  List<WeatherElementEntity> weather;
  String base;
  MainEntity main;
  int visibility;
  WindEntity wind;
  RainEntity? rain;
  CloudsEntity clouds;
  int dt;
  SysEntity sys;
  int timezone;
  int id;
  String name;
  int cod;

  WeatherEntity({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.rain,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });
}
