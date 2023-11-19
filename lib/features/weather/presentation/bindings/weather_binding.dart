import 'package:get/get.dart';

import '../../../../core/data/services/dio_http_service_imp.dart';
import '../../../../core/domain/services/http_service.dart';
import '../../data/datasources/get_weathers_datasource.dart';
import '../../data/datasources/remote/get_weather_remote_datasource_imp.dart';
import '../../data/repositories/get_weather_repository_imp.dart';
import '../../domain/repositories/get_weather_repository.dart';
import '../../domain/usecases/get_weather_usecase.dart';
import '../../domain/usecases/get_weather_usecase_imp.dart';
import '../controllers/weather_details_controller.dart';

class WeatherBinding implements Bindings {
  @override
  void dependencies() {
    // core
    Get.lazyPut<HttpService>(() => DioHttpServiceImp());

    // datasources
    Get.lazyPut<GetWeatherDataSource>(
      () => GetWeatherRemoteDataSourceImp(Get.find()),
    );

    // repositories
    Get.lazyPut<GetWeatherRepository>(
      () => GetWeatherRepositoryImp(Get.find()),
    );
    // usecases
    Get.lazyPut<GetWeatherUseCase>(
      () => GetWeatherUseCaseImp(Get.find()),
    );
    // controllers
    Get.lazyPut<WeatherController>(() => WeatherController());
  }
}
