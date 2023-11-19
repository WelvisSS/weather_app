import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../entities/forecast_entity.dart';
import '../entities/weather_entity.dart';

abstract class GetWeatherUseCase {
  Future<Either<Exception, WeatherEntity>> getWeatherByCityName(String city);
  Future<Either<Exception, WeatherEntity>> getWeatherByGeographPosition(
      Position position);
  Future<Either<Exception, ForecastEntity>>
      getWeatherByGeographPosition5DayForecast(Position position);
}
