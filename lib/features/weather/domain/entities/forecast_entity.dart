import 'list_forecast_entity.dart';

class ForecastEntity {
  String cod;
  int message;
  int cnt;
  List<ListForecastEntity> list;

  ForecastEntity({
    required this.cod,
    required this.message,
    required this.cnt,
    required this.list,
  });
}
