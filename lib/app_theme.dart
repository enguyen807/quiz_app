import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.green.shade300,
    textTheme: Typography.whiteHelsinki,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        padding: const MaterialStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0)
        ),
        foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.pink.shade100;
            }
            return Colors.pink.shade300; // Use the component's default.
          },
        ),
      ),
    ),
  );
}
