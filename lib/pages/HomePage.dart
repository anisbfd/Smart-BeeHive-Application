import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

final String location = 'Timezrit, Boum ...';
int population = 35673;
int bin = 342;
int bout = 322;
int freq = 10;
String connection = 'Connected';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 35, 35, 35),
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
                            // color: Color.fromARGB(255, 75, 75, 75),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.amber,
                              width: 1,
                            )),
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
                          // color: Color.fromARGB(255, 75, 75, 75),
                          borderRadius: BorderRadius.circular(20),
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
                      child: Container(
                        width: double.infinity,
                        height: 240,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.amber,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.amber,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Overal Status ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          '  OPTIMAL',
                                          style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 115,
                                child: Container(
                                  width: 1,
                                  height: 220,
                                  color: Colors.amber,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  width: 100,
                                  child: Column(
                                    // itemExtent: 70,
                                    // squeeze: 1.7,
                                    children: [
                                      Display(
                                        scolor: Colors.red,
                                        title: 'Temperture',
                                        value: 35,
                                        unit: '°C',
                                      ),
                                      Container(
                                        height: 1,
                                        color:
                                            Color.fromARGB(255, 160, 160, 160),
                                        margin: EdgeInsets.all(5),
                                      ),
                                      Display(
                                        scolor: Colors.green,
                                        title: 'Humidity',
                                        value: 65,
                                      ),
                                      Container(
                                        height: 1,
                                        color:
                                            Color.fromARGB(255, 160, 160, 160),
                                        margin: EdgeInsets.all(5),
                                      ),
                                      Display(
                                        title: 'Nurition Level',
                                        value: 75,
                                        scolor: Colors.red,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                  height: 170,
                                  width: 170,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Bee Count',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 160, 160, 160),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Positioned(
                                        top: 17.5,
                                        left: 20,
                                        child: Text(
                                          '${population + bin - bout}',
                                          style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 75,
                                        left: 20,
                                        child: SizedBox(
                                          height: 40,
                                          width: 130,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'In: $bin',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              160,
                                                              160,
                                                              160),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .arrow_downward_rounded,
                                                      color: Colors.white,
                                                      size: 12,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Out: $bout',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              160,
                                                              160,
                                                              160),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .arrow_upward_rounded,
                                                      color: Color.fromARGB(
                                                          255, 160, 160, 160),
                                                      size: 12,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  'Total: ${bin - bout}',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 160, 160, 160),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: SizedBox(
                                          height: 42.5,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Reading Frequency:  ',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      '${freq}s ',
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.edit,
                                                      color: Colors.amber,
                                                      size: 12,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Text(
                                                      "Status:  ",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Text(
                                                      connection,
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
                                  sensor: ' DHT-22',
                                  title: 'temp/hum',
                                ),
                                SizedBox(width: 15),
                                Sensor(
                                  iconPath: 'Assets/Icons/irsensor.png',
                                  sensor: ' Infrared',
                                  title: 'Population',
                                  size: 35,
                                  padding: 6,
                                ),
                                SizedBox(width: 15),
                                Sensor(
                                  iconPath: 'Assets/Icons/watersensor.png',
                                  sensor: ' SEN-18',
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
                    Align(
                      alignment: Alignment.topLeft,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class Display extends StatelessWidget {
  final String title;
  final int value;
  final String unit;
  final Color scolor;
  const Display({
    required this.title,
    required this.value,
    required this.scolor,
    this.unit = '%',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: Stack(
        children: [
          // Positioned(
          //   right: 0,
          //   top: 5,
          //   child: Container(
          //     height: 7,
          //     width: 7,
          //     decoration: BoxDecoration(
          //       color: scolor,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Color.fromARGB(255, 160, 160, 160),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: 15,
            child: Text(
              '$value$unit',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Text(
                  'Min: 20        Max: 40',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
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
      height: 110,
      width: 130,
      decoration: BoxDecoration(
        // color: Color.fromARGB(255, 75, 75, 75),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.amber,
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 5, right: 10, bottom: 8),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 27,
                width: 48,
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
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      widget.sensor,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontSize: 18,
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
