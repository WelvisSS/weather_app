import '../../domain/entities/sys_entity.dart';

extension SysDto on SysEntity {
  static SysEntity fromJson(Map<String, dynamic> json) => SysEntity(
        country: json["country"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
      };
}
