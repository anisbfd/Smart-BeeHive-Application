import 'package:flutter/material.dart';

class CostumeTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;
  const CostumeTextField({
    Key? key,
    required this.label,
    this.hint = '',
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              label,
              style: TextStyle(color: Colors.amber, fontFamily: 'Poppins'),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 42,
              child: TextField(
                style: TextStyle(
                    color: Color.fromARGB(255, 45, 45, 45),
                    fontFamily: 'Poppins'),
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: hint,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(111, 255, 193, 7),
                          width: 2)),
                  filled: true,
                  fillColor: Color(0xffABABAB),
                ),
                cursorColor: Color.fromARGB(255, 45, 45, 45),
              ),
            ),
          )
        ],
      ),
    );
  }
}
