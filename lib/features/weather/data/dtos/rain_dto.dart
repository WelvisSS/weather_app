import '../../domain/entities/rain_entity.dart';

extension RainDto on RainEntity {
  static RainEntity fromJson(Map<String, dynamic> json) => RainEntity(
        the1H: json["1h"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "1h": the1H,
      };
}
