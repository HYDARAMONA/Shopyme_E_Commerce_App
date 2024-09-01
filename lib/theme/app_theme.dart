import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  ThemeData lightTheme = ThemeData().copyWith(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.grey, fontSize: 18),
    ),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 51, 0, 255)),
    textTheme: GoogleFonts.mulishTextTheme(),
    // useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  ThemeData darkTheme = ThemeData().copyWith(
    brightness: Brightness.dark,
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 51, 0, 255)),
    textTheme: GoogleFonts.mulishTextTheme(),
    // useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
