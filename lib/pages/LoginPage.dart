import 'package:flutter/material.dart';
import 'package:beehive/Tools/NavigationBar.dart';
import 'package:beehive/pages/SignUpPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 35, 35),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 35, 35),
        title: Center(
          child: Text(
            'BeeHive',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
              child: Container(
            height: 550,
            width: 314,
            decoration: BoxDecoration(
              //  color: Colors.grey.shade800,
              border: Border.all(
                color: Colors.amber,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: SizedBox(
                height: 470,
                width: 270,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 55,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  // fontFamily: 'Poppins',
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Enter your details to login',
                              style: TextStyle(
                                  // fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: SizedBox(
                        height: 184,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 68,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Username',
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SizedBox(
                                      height: 42,
                                      child: TextField(
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 45, 45, 45),
                                            fontFamily: 'Poppins'),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 9),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: const Color.fromARGB(
                                                      111, 255, 193, 7),
                                                  width: 2)),
                                          filled: true,
                                          fillColor: Color(0xffABABAB),
                                        ),
                                        cursorColor:
                                            Color.fromARGB(255, 45, 45, 45),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 93,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Password',
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                        height: 42,
                                        child: TextField(
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 45, 45, 45),
                                              fontFamily: 'Poppins'),
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 9),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: const Color.fromARGB(
                                                        111, 255, 193, 7),
                                                    width: 2)),
                                            filled: true,
                                            fillColor: Color(0xffABABAB),
                                          ),
                                          cursorColor:
                                              Color.fromARGB(255, 45, 45, 45),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: GestureDetector(
                                        onTap: () => print('hello world'),
                                        child: Text(
                                          'Forgot password?',
                                          style: TextStyle(
                                              color: Colors.amber,
                                              fontFamily: 'Poppins'),
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
                    Padding(
                      padding: EdgeInsets.only(top: 300),
                      child: SizedBox(
                        height: 158,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 130,
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () => {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                NavigationMenu()),
                                      )
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      height: 42,
                                      child: Center(
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              // fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      'OR',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        // fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: GestureDetector(
                                      onTap: () => print('hello world'),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: Colors.amber,
                                            )),
                                        height: 42,
                                        child: Center(
                                          child: Text(
                                            'Login as a guest',
                                            style: TextStyle(
                                                color: Colors.amber,
                                                fontSize: 16,
                                                // fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don\'t have an account yet?',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUpPage()),
                                      );
                                    },
                                    child: Text(
                                      ' Sign Up',
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
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
          )),
        ),
      ),
    );
  }
}
