import 'package:get/get.dart';

import '../../features/weather/presentation/bindings/weather_binding.dart';
import '../../features/weather/presentation/ui/pages/details_page.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.WEATHER_DETAILS,
      page: () => DetailsPage(),
      binding: WeatherBinding(),
    ),
  ];
}
