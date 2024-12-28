import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final String location = 'Timezrit, Boumerdes';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 45, 45, 45),
        body: Stack(
          children: [
            Positioned(
              top: 17,
              left: 17,
              child: SizedBox(
                height: 35,
                width: 145,
                child: Stack(
                  children: [
                    Image(image: AssetImage('Assets/Icons/Location.png')),
                    Positioned(
                      top: 2,
                      left: 40,
                      child: SizedBox(
                        height: 32,
                        width: 100,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Current Location',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff8A9094),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Timezrit, Boumerdes',
                                style: TextStyle(
                                  color: Color(0xff8A9094),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        child: Image.asset('Assets/Icons/Drop.png'),
                        height: 12,
                        width: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 17,
              right: 17,
              child: SizedBox(
                height: 45,
                // width: 45,
                child: Image.asset('Assets/Icons/ProfileFilled.png'),
              ),
              // child: Container(
              //     height: 32,
              //     width: 32,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(100),
              //       color: Color(0xff8A9094),
              //     ),
              //     child: Icon(
              //       Icons.person_rounded,
              //       size: 25,
              //       color: Color.fromARGB(255, 45, 45, 45),
              //     )),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 17,
                vertical: 117,
              ),
              child: Stack(
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Container(
                            height: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.amber)),
                            child: Padding(
                              padding: EdgeInsets.all(17),
                              child: Stack(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.temperatureLow,
                                    color: Colors.amber,
                                    size: 35,
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Text(
                                      "25°C",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 45,
                                    child: Text(
                                      'Optimal Temperature',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.temperatureEmpty,
                                            color: Colors.amber,
                                            size: 13,
                                          ),
                                          Text(
                                            "Min: 20°C  ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                          Icon(
                                            FontAwesomeIcons.temperatureFull,
                                            color: Colors.amber,
                                            size: 13,
                                          ),
                                          Text(
                                            "Max: 30°C  ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      )),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      MdiIcons.exclamationThick,
                                      color: Colors.amber,
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
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
