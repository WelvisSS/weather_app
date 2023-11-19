import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../../domain/entities/forecast_entity.dart';
import '../../domain/entities/weather_entity.dart';

abstract class GetWeatherDataSource {
  Future<Either<Exception, WeatherEntity>> getWeatherByCityName(String city);
  Future<Either<Exception, WeatherEntity>> getWeatherByGeographPosition(
      Position position);
  Future<Either<Exception, ForecastEntity>>
      getWeatherByGeographPosition5DayForecast(Position position);
}
