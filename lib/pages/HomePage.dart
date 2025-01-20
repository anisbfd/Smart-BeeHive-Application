import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
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
                              fit: StackFit.loose,
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
                              child:
                                  Image.asset('Assets/Designs/Centered.png')),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 285,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hive Overview',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 240,
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
                                  sz: 40,
                                )),
                            Align(
                                alignment: Alignment.topRight,
                                child: Display(
                                  unit: '',
                                  icon: MdiIcons.beeFlower,
                                  title: 'Population',
                                  value: 2570,
                                  max: 300,
                                  min: 200,
                                  sz: 45,
                                )),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Display(
                                unit: '%',
                                icon: MdiIcons.hexagonSlice4,
                                title: 'Nurition Level',
                                value: 20,
                                max: 30,
                                min: 20,
                                sz: 40,
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Display(
                                  unit: '%',
                                  icon: FontAwesomeIcons.droplet,
                                  title: 'Humidity',
                                  value: 20,
                                  max: 30,
                                  min: 20,
                                  sz: 35,
                                )),
                          ],
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
                height: 160,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sonsors',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Settings',
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.amber,
                              size: 13,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 120,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Sensor(
                                  iconPath: 'Assets/Icons/temsensor.png',
                                  sensor: 'DHT22',
                                  title: 'temp/hum',
                                ),
                                SizedBox(width: 15),
                                Sensor(
                                  iconPath: 'Assets/Icons/irsensor.png',
                                  sensor: 'Infrared Sensor',
                                  title: 'Population',
                                  size: 35,
                                  padding: 6,
                                ),
                                SizedBox(width: 15),
                                Sensor(
                                  iconPath: 'Assets/Icons/watersensor.png',
                                  sensor: 'SEN18',
                                  title: 'Nurition Level',
                                  size: 25,
                                  padding: 10,
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Today\'s Tasks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class Sensor extends StatefulWidget {
  final String sensor;
  final String iconPath;
  final String title;
  final int size;
  final double padding;
  const Sensor({
    required this.sensor,
    required this.title,
    required this.iconPath,
    this.size = 45,
    this.padding = 0,
    super.key,
  });

  @override
  State<Sensor> createState() => _SensorState();
}

bool sstatus = true;

class _SensorState extends State<Sensor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 150,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 75, 75, 75),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.only(top: 15, left: 5, right: 10, bottom: 15),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 30,
                width: 52,
                child: FlutterSwitch(
                  onToggle: (value) {
                    setState(() {
                      sstatus = value;
                    });
                  },
                  value: sstatus,
                  activeColor: Colors.amber,
                  inactiveColor: Color.fromARGB(255, 160, 160, 160),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: widget.padding,
              child: SizedBox(
                  height: widget.size.toDouble(),
                  child: Image.asset(widget.iconPath)),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: SizedBox(
                height: 46,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          color: Color.fromARGB(255, 160, 160, 160),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      widget.sensor,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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
  final int sz;

  const Display({
    required this.title,
    required this.icon,
    required this.value,
    required this.max,
    required this.min,
    required this.unit,
    this.sz = 50,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      width: 183,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 75, 75, 75),
          borderRadius: BorderRadius.circular(20)),
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
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                icon,
                color: Color.fromARGB(255, 160, 160, 160),
                size: sz.toDouble(),
              ),
            ),
            Positioned(
              top: 15,
              child: Text(
                '$value$unit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              top: 60,
              child: Container(
                height: 1,
                width: 150,
                color: Color.fromARGB(255, 160, 160, 160),
              ),
            ),
            // Positioned(
            //   top: 43,
            //   right: 30,
            //   child: Container(
            //     height: 15,
            //     width: 40,
            //     decoration: BoxDecoration(
            //       color: Colors.amber,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            // ),
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
                    width: 15,
                  ),
                  Text(
                    'Min: $min$unit',
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
