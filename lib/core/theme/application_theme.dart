import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        size: 32,
        color: Colors.black,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        size: 26,
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        )),
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: const Color(0xFFB7935F),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          size: 32,
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          size: 26,
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
      ));
}
