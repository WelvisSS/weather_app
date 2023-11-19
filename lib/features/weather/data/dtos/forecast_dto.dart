import '../../domain/entities/forecast_entity.dart';
import '../../domain/entities/list_forecast_entity.dart';
import 'list_forecast_dto.dart';

extension ForecastDto on ForecastEntity {
  static ForecastEntity fromJson(Map<String, dynamic> json) => ForecastEntity(
        cod: json["cod"],
        message: json["message"],
        cnt: json["cnt"],
        list: List<ListForecastEntity>.from(
            json["list"].map((x) => ListForecastDto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cod": cod,
        "message": message,
        "cnt": cnt,
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
      };
}
