import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Colors.black,
    primaryContainer: Color.fromARGB(255, 115, 115, 115), // dark grey
    primaryFixed: Colors.grey, //grey
    secondary: Colors.white,
    secondaryContainer: Color.fromARGB(255, 245, 245, 245), //light grey
    inversePrimary: Color.fromARGB(255, 125, 173, 222), // light blue
  ),
);
