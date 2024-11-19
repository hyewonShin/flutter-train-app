import 'package:flutter/material.dart';

final lightTheme = ThemeData();

final darkTheme = ThemeData(
    brightness: Brightness.dark, // 밝기 설정
    scaffoldBackgroundColor: const Color.fromARGB(221, 42, 40, 40),
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
      labelMedium: TextStyle(color: Colors.white, fontSize: 16),
      bodyLarge: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    ));
