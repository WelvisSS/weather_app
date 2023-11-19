import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../../domain/entities/forecast_entity.dart';
import '../../domain/entities/weather_entity.dart';
import '../../domain/repositories/get_weather_repository.dart';
import '../datasources/get_weathers_datasource.dart';

class GetWeatherRepositoryImp implements GetWeatherRepository {
  final GetWeatherDataSource _getWeatherDataSource;
  GetWeatherRepositoryImp(this._getWeatherDataSource);

  @override
  Future<Either<Exception, WeatherEntity>> getWeatherByCityName(
      String city) async {
    return await _getWeatherDataSource.getWeatherByCityName(city);
  }

  @override
  Future<Either<Exception, WeatherEntity>> getWeatherByGeographPosition(
      Position position) async {
    return await _getWeatherDataSource.getWeatherByGeographPosition(position);
  }

  @override
  Future<Either<Exception, ForecastEntity>>
      getWeatherByGeographPosition5DayForecast(Position position) async {
    return await _getWeatherDataSource
        .getWeatherByGeographPosition5DayForecast(position);
  }
}
