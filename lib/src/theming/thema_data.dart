import 'package:flutter/material.dart';

Color get yellow => const Color(0xFFE8FC00);
Color get blue => const Color(0xFF0049FF);
Color get orange => const Color(0xFFDB640D);
Color get green => const Color(0xFF87DA00);
Color get nearlyBlack => const Color(0xFF121212);

final ThemeData appThemeData = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: nearlyBlack,
    useMaterial3: true,
    brightness: Brightness.dark);
