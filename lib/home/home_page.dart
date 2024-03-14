import 'package:flutter/material.dart';
import 'package:weather_app/home/models/weather.dart';
import 'package:weather_app/home/repositories/weather_repository.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myController = TextEditingController();
  
  WeatherRepository weatherRepo = WeatherRepository();
  late Future<Weather> weather;

  @override
  void initState() {
    super.initState();
    weather = weatherRepo.getWeather("werther");
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Weather App'), iconTheme: const IconThemeData()),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myController.text, style: const TextStyle(fontSize: 30)),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "bitte Ort eingeben",
                  contentPadding: EdgeInsets.all(15)),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 203, 133, 133),
                alignment: Alignment.center,
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.all(15),
              ),
              child: const Text("Wetter abfragen"),
              onPressed: () {
                WeatherRepository().getWeather(myController.text);
                setState(() {});
              },
            ),
            const SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: FutureBuilder<Weather>(
                    future: weather,
                    builder: (BuildContext context,
                        AsyncSnapshot<Weather> snapshot) {
                      if (snapshot.hasData) {
                        setState() { };
                        
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("wolkig:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("${snapshot.data!.cloud_pct}",
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: FutureBuilder<Weather>(
                    future: weather,
                    builder: (BuildContext context,
                        AsyncSnapshot<Weather> snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Luftfeuchtigkeit:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("${snapshot.data!.humidity}%",
                            
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: FutureBuilder<Weather>(
                    future: weather,
                    builder: (BuildContext context,
                        AsyncSnapshot<Weather> snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("akt. Temperatur:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("${snapshot.data!.temp}°C",
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: FutureBuilder<Weather>(
                    future: weather,
                    builder: (BuildContext context,
                        AsyncSnapshot<Weather> snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("gefühlte Temperatur:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("${snapshot.data!.feels_like}°C ",
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: FutureBuilder<Weather>(
                    future: weather,
                    builder: (BuildContext context,
                        AsyncSnapshot<Weather> snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("max. Temperatur:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("${snapshot.data!.max_temp}°C",
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: FutureBuilder<Weather>(
                    future: weather,
                    builder: (BuildContext context,
                        AsyncSnapshot<Weather> snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("min. Temperatur:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("${snapshot.data!.min_temp}°C",
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: FutureBuilder<Weather>(
                    future: weather,
                    builder: (BuildContext context,
                        AsyncSnapshot<Weather> snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Wind Geschw.:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("${snapshot.data!.wind_speed} km/h",
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0)),
                  child: FutureBuilder<Weather>(
                    future: weather,
                    builder: (BuildContext context,
                        AsyncSnapshot<Weather> snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Windrichtung:",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("${snapshot.data!.wind_degrees}°",
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
