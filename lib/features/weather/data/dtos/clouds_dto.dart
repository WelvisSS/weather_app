import '../../domain/entities/clouds_entity.dart';

extension CloudsDto on CloudsEntity {
  static CloudsEntity fromJson(Map<String, dynamic> json) => CloudsEntity(
        all: json["all"],
      );

  Map<String, dynamic> toJson() => {
        "all": all,
      };
}
