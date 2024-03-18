import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
part "appbar_theme.dart";
part "theme_extension.dart";

ThemeData createMainTheme(){
  return ThemeData(
    appBarTheme: createAppBarTheme(),
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.roboto(fontSize: 18),
      bodyMedium: GoogleFonts.roboto(fontSize: 15),
      bodySmall: GoogleFonts.roboto(fontSize: 12),
    )
  );
}