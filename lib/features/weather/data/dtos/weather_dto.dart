import '../../domain/entities/weather_element_entity.dart';
import '../../domain/entities/weather_entity.dart';
import 'clouds_dto.dart';
import 'coord_dto.dart';
import 'main_dto.dart';
import 'rain_dto.dart';
import 'sys_dto.dart';
import 'weather_element_dto.dart';
import 'wind_dto.dart';

extension WeatherDto on WeatherEntity {
  static WeatherEntity fromJson(Map<String, dynamic> json) => WeatherEntity(
        coord: CoordDto.fromJson(json["coord"]),
        weather: List<WeatherElementEntity>.from(
            json["weather"].map((x) => WeatherElementDto.fromJson(x))),
        base: json["base"],
        main: MainDto.fromJson(json["main"]),
        visibility: json["visibility"],
        wind: WindDto.fromJson(json["wind"]),
        rain: json["rain"] == null ? null : RainDto.fromJson(json["rain"]),
        clouds: CloudsDto.fromJson(json["clouds"]),
        dt: json["dt"],
        sys: SysDto.fromJson(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
      );

  Map<String, dynamic> toJson() => {
        "coord": coord.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "base": base,
        "main": main.toJson(),
        "visibility": visibility,
        "wind": wind.toJson(),
        "rain": rain?.toJson(),
        "clouds": clouds.toJson(),
        "dt": dt,
        "sys": sys.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };
}
