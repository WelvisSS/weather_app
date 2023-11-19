// ignore_for_file: non_constant_identifier_names

import 'package:geolocator/geolocator.dart';

class API {
  static String REQUEST_WEATHER_BY_CITY(String city) =>
      'weather?appid=9e1280f88eef9db700e867bb898fd3ec&q=$city';

  static String REQUEST_WEATHER_BY_POSITION(Position position) =>
      'weather?lat=${position.latitude}&lon=${position.longitude}&units=metric&appid=9e1280f88eef9db700e867bb898fd3ec';

  static String REQUEST_WEATHER_5_DAY_FORECAST(Position position) =>
      'forecast?lat=${position.latitude}&lon=${position.longitude}&units=metric&appid=9e1280f88eef9db700e867bb898fd3ec';
  static String REQUEST_WEATHER_AIR_POLLUTION(Position position) =>
      // 'http://api.openweathermap.org/data/2.5/forecast?lat=-42.689624&lon=-13.018095&units=metric&appid=9e1280f88eef9db700e867bb898fd3ec';

      'air_pollution?lat=${position.latitude}&lon=${position.longitude}&units=metric&appid=9e1280f88eef9db700e867bb898fd3ec';
}
