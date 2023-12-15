<<<<<<< HEAD
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark().copyWith(
      primary: Colors.orange, // Cambia el color primario para el tema oscuro
      secondary: Colors.deepOrangeAccent, // Cambia el color de acento para el tema oscuro
    )
  );
}
=======
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark().copyWith(
      primary: Colors.orange, // Cambia el color primario para el tema oscuro
      secondary: Colors.deepOrangeAccent, // Cambia el color de acento para el tema oscuro
    )
  );
}
>>>>>>> e69cf61b5795d290caa0b0cbecbced888b6c4822
