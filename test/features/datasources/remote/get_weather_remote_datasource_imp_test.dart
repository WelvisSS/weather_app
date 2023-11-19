import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/core/data/services/dio_http_service_imp.dart';
import 'package:weather_app/core/utils/fake_position_teste.dart';
import 'package:weather_app/features/weather/data/datasources/remote/get_weather_remote_datasource_imp.dart';
import 'package:weather_app/features/weather/data/repositories/get_weather_repository_imp.dart';
import 'package:weather_app/features/weather/domain/entities/forecast_entity.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/domain/usecases/get_weather_usecase.dart';
import 'package:weather_app/features/weather/domain/usecases/get_weather_usecase_imp.dart';

main() {
  group('This group tests the return of climate data by querying by city name',
      () {
    late Either getWeatherByCityNameRequest;
    late Either getWeatherByGeographPositionRequest;
    late Either getWeatherByGeographPosition5DayForecastResquest;

    setUp(() async {
      // this code will be executed before each test
      final GetWeatherUseCase getWeatherUseCase = GetWeatherUseCaseImp(
        GetWeatherRepositoryImp(
          GetWeatherRemoteDataSourceImp(
            DioHttpServiceImp(),
          ),
        ),
      );

      getWeatherByCityNameRequest =
          await getWeatherUseCase.getWeatherByCityName('Macaúbas');

      getWeatherByGeographPositionRequest =
          await getWeatherUseCase.getWeatherByGeographPosition(fakePosition);
      getWeatherByGeographPosition5DayForecastResquest = await getWeatherUseCase
          .getWeatherByGeographPosition5DayForecast(fakePosition);
    });

    test('Verify if it is a WeatherEntity instance', () async {
      getWeatherByCityNameRequest.fold(
        (error) => expect(false, true),
        (weatherSuccess) => expect(weatherSuccess, isA<WeatherEntity>()),
      );
    });

    test('Verify if it is a WeatherEntity instance', () async {
      getWeatherByGeographPositionRequest.fold(
        (error) => expect(false, true),
        (weatherSuccess) => expect(weatherSuccess, isA<WeatherEntity>()),
      );
    });

    test('Verify if it is a WeatherEntity instance', () async {
      getWeatherByGeographPosition5DayForecastResquest.fold(
        (error) => expect(false, true),
        (weatherSuccess) => expect(weatherSuccess, isA<ForecastEntity>()),
      );
    });

    tearDown(() {
      // CThis code will be executed after each test
    });
  });
}
