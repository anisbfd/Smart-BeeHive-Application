import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final String location = 'Timezrit, Boum ...';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 45, 45, 45),
          body: ListView(
            padding: EdgeInsets.all(15),
            children: [
              SizedBox(
                height: 50,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 75, 75, 75),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 170,
                        child: Center(
                          child: SizedBox(
                            height: 32,
                            width: 140,
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      'Assets/Icons/Location.png',
                                    )),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: 100,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Hive Location',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 160, 160, 160),
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            "Timezrit, Bo...",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.white,
                                            size: 13,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 75, 75, 75),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                        child: Center(
                          child: SizedBox(
                              height: 32,
                              child: Image.asset('Assets/Icons/Settings.png')),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 290,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hive Overview',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 255,
                        child: Stack(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Display(
                                  unit: '°C',
                                  icon: FontAwesomeIcons.thermometerHalf,
                                  title: 'Temperature',
                                  value: 25,
                                  max: 30,
                                  min: 20,
                                )),
                            Align(
                                alignment: Alignment.topRight,
                                child: Display(
                                  unit: '°C',
                                  icon: FontAwesomeIcons.thermometerHalf,
                                  title: 'Temperature',
                                  value: 2,
                                  max: 3,
                                  min: 2,
                                )),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Display(
                                unit: '°C',
                                icon: FontAwesomeIcons.thermometerHalf,
                                title: 'Temperature',
                                value: 2,
                                max: 3,
                                min: 2,
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Display(
                                  unit: '°C',
                                  icon: FontAwesomeIcons.thermometerHalf,
                                  title: 'Temperature',
                                  value: 2,
                                  max: 3,
                                  min: 2,
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.amber,
                height: 100,
              ),
            ],
          )),
    );
  }
}

class Display extends StatelessWidget {
  final String title;
  final IconData icon;
  final int value;
  final int max;
  final int min;
  final String unit;
  const Display({
    required this.title,
    required this.icon,
    required this.value,
    required this.max,
    required this.min,
    required this.unit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 157,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 75, 75, 75),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          bottom: 15,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: Color.fromARGB(255, 160, 160, 160),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                icon,
                color: Color.fromARGB(255, 160, 160, 160),
                size: 55,
              ),
            ),
            Positioned(
              top: 15,
              child: Text(
                '$value$unit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Text(
                    'Max: $max$unit',
                    style: TextStyle(
                      color: Color.fromARGB(255, 160, 160, 160),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Min: $min°C',
                    style: TextStyle(
                      color: Color.fromARGB(255, 160, 160, 160),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
