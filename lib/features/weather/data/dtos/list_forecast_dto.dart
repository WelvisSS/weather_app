import 'package:weather_app/features/weather/data/dtos/wind_dto.dart';

import '../../domain/entities/list_forecast_entity.dart';
import '../../domain/entities/weather_element_entity.dart';
import 'clouds_dto.dart';
import 'main_dto.dart';
import 'weather_element_dto.dart';

extension ListForecastDto on ListForecastEntity {
  static ListForecastEntity fromJson(Map<String, dynamic> json) =>
      ListForecastEntity(
        dt: json["dt"],
        main: MainDto.fromJson(json["main"]),
        weather: List<WeatherElementEntity>.from(
            json["weather"].map((x) => WeatherElementDto.fromJson(x))),
        clouds: CloudsDto.fromJson(json["clouds"]),
        wind: WindDto.fromJson(json["wind"]),
        visibility: json["visibility"],
        pop: json["pop"]?.toDouble(),
        dtTxt: DateTime.parse(json["dt_txt"]),
      );

  Map<String, dynamic> toJson() => {
        "dt": dt,
        "main": main.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "clouds": clouds.toJson(),
        "wind": wind.toJson(),
        "visibility": visibility,
        "pop": pop,
        "dt_txt": dtTxt.toIso8601String(),
      };
}
