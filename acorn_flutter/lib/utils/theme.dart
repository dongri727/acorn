import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcornTheme {
  static TextTheme textTheme = TextTheme(
    titleLarge:GoogleFonts.kalam(
        fontSize: 100, fontWeight: FontWeight.bold, color: const Color(0xFF006400)),//green
    titleMedium: GoogleFonts.kalam(
        fontSize: 80, fontWeight: FontWeight.bold, color: const Color(0xFFf5f5f5)),//white
    titleSmall: GoogleFonts.kalam(
        fontSize: 60, fontWeight: FontWeight.bold, color: const Color(0xFF006400)),//green
    headlineLarge: GoogleFonts.kalam(
        fontSize: 50, fontWeight: FontWeight.bold, color: const Color(0xFF006400)),//green
    headlineMedium: GoogleFonts.kalam(
        fontSize: 18, fontWeight: FontWeight.normal, color: const Color(0xFFf5f5f5)),//white
    headlineSmall: GoogleFonts.kalam(
        fontSize: 16, fontWeight: FontWeight.normal, color: const Color(0xFFa9a9a9)),//gray
    bodyLarge: GoogleFonts.kalam(
        fontSize: 30, fontWeight: FontWeight.normal, color: const Color(0xFFf5f5f5)),//white
    bodyMedium: GoogleFonts.kalam(
        fontSize: 20, fontWeight: FontWeight.normal, color: const Color(0xFF006400)),//green
    bodySmall: GoogleFonts.kalam(
      fontSize: 20, fontWeight: FontWeight.normal, color: const Color(0xFFf5f5f5)),//white
  );
}
