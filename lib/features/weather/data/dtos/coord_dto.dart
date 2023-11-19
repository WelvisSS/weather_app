import '../../domain/entities/coord_entity.dart';

extension CoordDto on CoordEntity {
  static CoordEntity fromJson(Map<String, dynamic> json) => CoordEntity(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
      };
}
