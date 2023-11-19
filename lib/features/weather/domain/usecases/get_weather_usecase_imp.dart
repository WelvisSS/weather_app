import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../entities/forecast_entity.dart';
import '../entities/weather_entity.dart';
import '../repositories/get_weather_repository.dart';
import 'get_weather_usecase.dart';

class GetWeatherUseCaseImp implements GetWeatherUseCase {
  final GetWeatherRepository _getWeatherRepository;
  GetWeatherUseCaseImp(this._getWeatherRepository);

  @override
  Future<Either<Exception, WeatherEntity>> getWeatherByCityName(
      String city) async {
    return await _getWeatherRepository.getWeatherByCityName(city);
  }

  @override
  Future<Either<Exception, WeatherEntity>> getWeatherByGeographPosition(
      Position position) async {
    return await _getWeatherRepository.getWeatherByGeographPosition(position);
  }

  @override
  Future<Either<Exception, ForecastEntity>>
      getWeatherByGeographPosition5DayForecast(Position position) async {
    return await _getWeatherRepository
        .getWeatherByGeographPosition5DayForecast(position);
  }
}
