import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class FooderlichTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black
    )
  );
}