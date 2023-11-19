import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/weather_details_controller.dart';

class ForecastListWidget extends GetView<WeatherController> {
  const ForecastListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: controller.forecast.value != null
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: controller.forecast.value!.list.length,
                itemBuilder: (BuildContext context, item) {
                  return Container(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${controller.forecast.value!.list[item].main.temp}º",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7C7C84),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.cloud,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              controller.forecast.value!.list[item].wind.speed
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF7C7C84),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.water_drop, color: Colors.blue),
                            Text(
                              controller
                                  .forecast.value!.list[item].main.humidity
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            : Container(),
      ),
    );
  }
}
