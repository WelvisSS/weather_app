import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../../../core/utils/fake_position_teste.dart';
import '../../domain/entities/forecast_entity.dart';
import '../../domain/entities/weather_entity.dart';
import '../../domain/usecases/get_weather_usecase.dart';

class WeatherController extends GetxController {
  final GetWeatherUseCase _getWeatherUseCase = Get.find();
  Rx<WeatherEntity?> weather = Rx<WeatherEntity?>(null);
  Rx<ForecastEntity?> forecast = Rx<ForecastEntity?>(null);

  @override
  void onInit() async {
    weather.value = await getWeatherByCity(city: "Macaúbas");
    forecast.value =
        await getWeather5DayForecastByPosition(position: fakePosition);
    super.onInit();
  }

  Future<WeatherEntity> getWeatherByCity({required String city}) async {
    Either result = await _getWeatherUseCase.getWeatherByCityName(city);
    late WeatherEntity weatherSuccess;
    result.fold(
      (error) {
        debugPrint(error.toString());
      },
      (success) {
        weatherSuccess = success;
      },
    );
    return weatherSuccess;
  }

  Future<ForecastEntity> getWeather5DayForecastByPosition(
      {required Position position}) async {
    Either result = await _getWeatherUseCase
        .getWeatherByGeographPosition5DayForecast(position);
    late ForecastEntity forecastEntity;
    result.fold(
      (error) {
        debugPrint(error.toString());
      },
      (success) {
        forecastEntity = success;
      },
    );
    return forecastEntity;
  }
}
