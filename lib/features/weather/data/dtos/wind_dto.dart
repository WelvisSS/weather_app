import '../../domain/entities/wind_entity.dart';

extension WindDto on WindEntity {
  static WindEntity fromJson(Map<String, dynamic> json) => WindEntity(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
        gust: json["gust"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
        "gust": gust,
      };
}
