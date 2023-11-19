import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/weather_details_controller.dart';
import '../widgets/forecast_list_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final WeatherController controller = Get.find<WeatherController>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: () {},
        ),
        backgroundColor: const Color(0x0F16161E),
        title: const Text("7 days"),
        centerTitle: true,
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: controller.weather.value != null
              ? Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    SizedBox(
                      width: size.width * .8,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.cloud,
                                color: Colors.white,
                                size: 100,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Hoje",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF7C7C84),
                                    ),
                                  ),
                                  Text(
                                    "${((controller.weather.value!.main.temp) - 273.15).toStringAsFixed(0)}º",
                                    style: const TextStyle(
                                      fontSize: 80,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFF7C7C84),
                                    width: 0.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_pin,
                                  color: Colors.white, size: 20),
                              const SizedBox(width: 10),
                              Text(
                                "${controller.weather.value!.name} - ${controller.weather.value!.sys.country}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF7C7C84),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.calendar_month,
                                  color: Colors.white, size: 20),
                              SizedBox(width: 10),
                              Text(
                                "Sexta 03, Nov",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF7C7C84),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 100,
                      width: size.width * .9,
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1F2022),
                        borderRadius: BorderRadius.circular(
                            20), // Define o raio de curvatura das bordas
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.wind_power_sharp,
                                color: Color(0xFF404143),
                              ),
                              Text(
                                "${controller.weather.value!.wind.speed} km/h",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Wind",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF404143),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.water_drop,
                                color: Colors.blue,
                              ),
                              Text(
                                "${controller.weather.value!.main.humidity}%",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Heartly",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF404143),
                                ),
                              ),
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.water,
                                color: Color(0xFF404143),
                              ),
                              Text(
                                "87%",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Him",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF404143),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const ForecastListWidget(),
                    const SizedBox(height: 20),
                  ],
                )
              : Container(),
        ),
      ),
    );
  }
}
