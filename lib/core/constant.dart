import 'package:flutter/material.dart';

Widget kHeight(double height) {
  return SizedBox(
    height: height,
  );
}

Widget kWidth(double width) {
  return SizedBox(
    width: width,
  );
}

const Color mainColor = Color.fromARGB(224, 48, 166, 90);
const Color buttonColor = Color.fromARGB(255, 227, 225, 219);
const Color checkBoxClr = Color.fromARGB(255, 235, 234, 231);
const LinearGradient buttonColor1 = LinearGradient(
  colors: [Colors.blue, Colors.green],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
