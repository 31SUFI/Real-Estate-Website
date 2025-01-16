import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle get heading1 => GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      );

  static TextStyle get body => GoogleFonts.plusJakartaSans(
        fontSize: 16,
        color: Colors.grey[600],
        height: 1.5,
      );

  static TextStyle get button => GoogleFonts.plusJakartaSans(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      );
}
