// import 'package:get_it/get_it.dart';

// import '../../features/weather/data/datasources/get_movies_datasource.dart';
// import '../../features/weather/data/datasources/remote/get_weather_remote_datasource_imp.dart';
// import '../../features/weather/data/repositories/get_weather_repository_imp.dart';
// import '../../features/weather/domain/repositories/get_weather_repository.dart';
// import '../../features/weather/domain/usecases/get_weather_usecase.dart';
// import '../../features/weather/domain/usecases/get_weather_usecase_imp.dart';
// import '../../features/weather/presentation/controllers/weather_details_controller.dart';
// import '../data/services/dio_http_service_imp.dart';
// import '../domain/services/http_service.dart';

// class Inject {
//   static initialize() {
//     GetIt getIt = GetIt.instance;
//     // core
//     getIt.registerLazySingleton<HttpService>(() => DioHttpServiceImp());

//     // datasources
//     getIt.registerLazySingleton<GetWeatherDataSource>(
//       () => GetWeatherRemoteDataSourceImp(getIt()),
//     );

//     getIt.registerLazySingleton<GetWeatherByLocationDataSource>(
//       () => GetWeatherByLocationRemoteDataSourceImp(getIt()),
//     );

//     // repositories
//     getIt.registerLazySingleton<GetWeatherRepository>(
//       () => GetWeatherRepositoryImp(getIt()),
//     );
//     // usecases
//     getIt.registerLazySingleton<GetWeatherUseCase>(
//       () => GetWeatherUseCaseImp(getIt()),
//     );
//     // controllers
//     getIt.registerLazySingleton<WeatherController>(
//       () => WeatherController(getIt()),
//     );
//   }
// }
