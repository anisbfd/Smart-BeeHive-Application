import 'package:flutter/material.dart';

final String location = 'Timezrit, Boumerdes';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 39,
              left: 17,
            ),
            child: GestureDetector(
              onTap: () => print("Coming Soon"),
              child: SizedBox(
                height: 36,
                child: Stack(
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 45, 45, 45),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 42),
                      child: SizedBox(
                        height: 28,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Hive Location',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 8),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                children: [
                                  Text(
                                    location,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.amber,
                                    size: 12,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 39,
              right: 17,
            ),
            child: GestureDetector(
              onTap: () => print("Coming Soon"),
              child: SizedBox(
                height: 36,
                child: Stack(
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.notifications,
                        color: Color.fromARGB(255, 45, 45, 45),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 42),
                      child: SizedBox(
                        height: 28,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Notifications',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 8),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.amber,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
