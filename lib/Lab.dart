import 'package:flutter/material.dart';
import 'package:beehive/Tools/Weather.dart';

void main() {
  runApp(const Lab());
}

class Lab extends StatelessWidget {
  const Lab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WeatherWidget());
  }
}
