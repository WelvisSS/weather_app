import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../../core/domain/services/http_service.dart';
import '../../../../../core/utils/api.utils.dart';
import '../../../domain/entities/forecast_entity.dart';
import '../../../domain/entities/weather_entity.dart';
import '../../dtos/forecast_dto.dart';
import '../../dtos/weather_dto.dart';
import '../get_weathers_datasource.dart';

class GetWeatherRemoteDataSourceImp implements GetWeatherDataSource {
  final HttpService _httpService;
  GetWeatherRemoteDataSourceImp(this._httpService);

  @override
  Future<Either<Exception, WeatherEntity>> getWeatherByCityName(
      String city) async {
    try {
      var result = await _httpService.get(API.REQUEST_WEATHER_BY_CITY(city));
      return Right(WeatherDto.fromJson(result.data));
    } catch (e) {
      return Left(
          Exception('Falha no datasource weather getWeatherByCityName'));
    }
  }

  @override
  Future<Either<Exception, WeatherEntity>> getWeatherByGeographPosition(
      Position position) async {
    try {
      var result =
          await _httpService.get(API.REQUEST_WEATHER_BY_POSITION(position));
      return Right(WeatherDto.fromJson(result.data));
    } catch (e) {
      return Left(Exception(
          'Falha no datasource weather getWeatherByGeographPosition'));
    }
  }

  @override
  Future<Either<Exception, ForecastEntity>>
      getWeatherByGeographPosition5DayForecast(Position position) async {
    try {
      var result =
          await _httpService.get(API.REQUEST_WEATHER_5_DAY_FORECAST(position));
      return Right(ForecastDto.fromJson(result.data));
    } catch (e) {
      return Left(Exception(
          'Falha no datasource weather getWeatherByGeographPosition5DayForecast'));
    }
  }
}
