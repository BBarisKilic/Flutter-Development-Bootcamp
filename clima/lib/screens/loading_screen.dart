import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
  }

  getWeatherData() async {
    Uri url = Uri.https('samples.openweathermap.org', 'data/2.5/weather', {
      'lat': '35',
      'lon': '139',
      'appid': '439d4b804bc8187953eb36d2a8c26a02'
    });

    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);

      double temp = decodedData['main']['temp'];
      int condition = decodedData['weather'][0]['id'];
      String name = decodedData['name'];

      print(name);
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
    getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
