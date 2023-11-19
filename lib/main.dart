import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'configs/routes/app_pages.dart';
import 'configs/routes/app_routes.dart';
import 'configs/theme/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: theme(),
      getPages: AppPages.routes,
      initialRoute: Routes.WEATHER_DETAILS,
    );
  }
}
