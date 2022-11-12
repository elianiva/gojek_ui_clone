import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/colors.dart';
import 'package:gojek_clone/themes/font_sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class GojekTextStyles {
  static TextStyle textBold = GoogleFonts.roboto(
    fontSize: GojekFontSize.medium1,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textButtonBlack = GoogleFonts.roboto(
    color: GojekColor.blackText,
    fontSize: GojekFontSize.medium2,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textButtonWhite = GoogleFonts.roboto(
    color: GojekColor.white,
    fontSize: GojekFontSize.medium2,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textTitleBlack = GoogleFonts.roboto(
    color: GojekColor.blackText,
    fontSize: GojekFontSize.large2,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textParagraphBlack = GoogleFonts.roboto(
    color: GojekColor.blackSoftText,
    fontSize: GojekFontSize.medium2,
  );
}
