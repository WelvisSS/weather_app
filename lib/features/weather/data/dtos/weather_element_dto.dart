import '../../domain/entities/weather_element_entity.dart';

extension WeatherElementDto on WeatherElementEntity {
  static WeatherElementEntity fromJson(Map<String, dynamic> json) =>
      WeatherElementEntity(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}
