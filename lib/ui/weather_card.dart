import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';

class WeatherCard extends StatelessWidget {
  final Map forecastData;
  final Constants constants;

  const WeatherCard(
      {Key? key, required this.forecastData, required this.constants})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  forecastData["forecastDate"],
                  style: const TextStyle(
                    color: Color(0xff6696f5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          forecastData["minTemperature"].toString(),
                          style: TextStyle(
                            color: constants.greyColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'o',
                          style: TextStyle(
                              color: constants.greyColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontFeatures: const [FontFeature.enable('sups')]),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          forecastData["maxTemperature"].toString(),
                          style: TextStyle(
                            color: constants.blackColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'o',
                          style: TextStyle(
                              color: constants.blackColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontFeatures: const [FontFeature.enable('sups')]),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/' + forecastData["weatherIcon"],
                      width: 30,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      forecastData["weatherName"],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      forecastData["chanceOfRain"].toString() + "%",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      'assets/lightrain.png',
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
