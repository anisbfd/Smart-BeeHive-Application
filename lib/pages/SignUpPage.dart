import 'package:beehive/pages/LoginPage.dart';
import 'package:beehive/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:beehive/Tools/designs.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            bottom: 100,
          ),
          child: Center(
            child: Container(
              height: 690,
              width: 314,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.amber,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: SizedBox(
                  height: 595,
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
                                'Sign UP',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.amber,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Create new account',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
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
                          height: 320,
                          child: Column(
                            children: [
                              CostumeTextField(label: 'Username'),
                              SizedBox(
                                height: 16,
                              ),
                              CostumeTextField(label: 'Email Address'),
                              SizedBox(
                                height: 16,
                              ),
                              CostumeTextField(
                                  label: 'Password', obscureText: true),
                              SizedBox(
                                height: 16,
                              ),
                              CostumeTextField(
                                  label: 'Confirm Password', obscureText: true),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 435),
                        child: SizedBox(
                          height: 160,
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 125,
                                child: Stack(
                                  children: [
                                    CostumeFilledButton(
                                      label: 'Sign Up',
                                    ),
                                    Center(
                                      child: Text(
                                        'OR',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: CostumeEmptButton(
                                        label: 'Sign Up with Google',
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
                                      'Already have an account?',
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
                                              builder: (context) =>
                                                  MyHomePage()),
                                        );
                                      },
                                      child: Text(
                                        ' Login',
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
            ),
          ),
        ),
      ),
    );
  }
}

class CostumeEmptButton extends StatelessWidget {
  final String label;
  final Color outlinecolor;

  const CostumeEmptButton({
    Key? key,
    required this.label,
    this.outlinecolor = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('hello world'),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.amber,
            )),
        height: 42,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: Colors.amber,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class CostumeFilledButton extends StatelessWidget {
  final String label;
  const CostumeFilledButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        )
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(8)),
        height: 42,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
