import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
    scaffoldBackgroundColor: Colors.grey[200],
    cardColor: Colors.white,
    textTheme: TextTheme(
        displaySmall: TextStyle(fontSize: 40, color: Colors.black),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16)));

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.dark,
  ),
  cardColor: const Color.fromARGB(255, 74, 67, 67),
  textTheme: const TextTheme(
    displaySmall: TextStyle(fontSize: 40, color: Colors.white),
    bodyLarge: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
  ),
);
