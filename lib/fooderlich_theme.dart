import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class FooderlichTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black
    )
  );
  
  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.white
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: Colors.white
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white
    )
  );

  static ThemeData light(){
    return ThemeData(
      brightness: Brightness.light,

      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white
      ),

      textTheme: lightTextTheme,

      bottomNavigationBarTheme: const BottomNavigationBarThemeData( 
        selectedItemColor: Colors.green,
      )
    );
  }

  static ThemeData dark(){
    return ThemeData(
      brightness: Brightness.dark,

      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey,
      ),

      textTheme: darkTextTheme,
      
      bottomNavigationBarTheme: const BottomNavigationBarThemeData( 
        selectedItemColor: Colors.green,
      )
    );
  }
}