import 'package:flutter/material.dart';

ThemeData appTheme() {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(),
        )
      )
    );
  }