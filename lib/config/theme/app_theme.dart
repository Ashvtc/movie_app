import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0x00000000);
  static const Color bgWhite = Color(0XFFFFFFFF);

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: const Color(0x00000000),
    scaffoldBackgroundColor: bgWhite,
    highlightColor: const Color(0x00000000),

    //TEXT THEME
    textTheme: const TextTheme(

    //SIDEBAR
      //USER
        labelLarge: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF000000),
        ),

      //OPTIONS
        displaySmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF000000),
        ),

    //HOME
      //TITLE APPBAR
      displayLarge: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),

      //HOME TITLE MOVIE
      bodyLarge: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),

      //HOME RATING MOVIE
      bodyMedium: TextStyle(
        fontSize: 8.0,
        fontWeight: FontWeight.normal,
        color: Color(0xFFFFFFFF),
      ),


    //DETAIL
      //DETAIL TITLE MOVIE
      headlineLarge: TextStyle(
        fontSize: 42.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),

      //DETAIL RATING MOVIE
      headlineMedium: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: Color(0xFFFFFFFF),
      ),

      //DETAIL ACTOR'S NAME
      titleSmall: TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),

      //DETAIL ACTOR'S ROLE
      labelSmall: TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.normal,
        color: Color(0xFFFFFFFF),
      ),


    //PROFILE
      //ACTOR'S NAME
      titleMedium: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),

      //ACTOR'S DESCRIIPTION
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Color(0xFF000000),
      ),

      //CASTED ON
      titleLarge: TextStyle(
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),

    ),
  );
}
