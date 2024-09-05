import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  ThemeData lightTheme = ThemeData().copyWith(
    appBarTheme: appBarTheme(),

    inputDecorationTheme: inputDecorationTheme(),

    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 51, 0, 255)),
    textTheme: GoogleFonts.mulishTextTheme(),
    // useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.grey, fontSize: 18),
    );
  }

  static InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      suffixIconColor: Colors.grey,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: Colors.grey),
          gapPadding: 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: Colors.grey),
          gapPadding: 10),
    );
  }

  // ThemeData darkTheme = ThemeData().copyWith(
  //   brightness: Brightness.dark,
  //   colorScheme:
  //       ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 51, 0, 255)),
  //   textTheme: GoogleFonts.mulishTextTheme(),
  //   // useMaterial3: true,
  //   visualDensity: VisualDensity.adaptivePlatformDensity,
  // );
}
