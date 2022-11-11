import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/colors.dart';
import 'package:gojek_clone/themes/font_sizes.dart';

class GojekTextStyles {
  static const TextStyle textBold = TextStyle(
    fontSize: GojekFontSize.medium1,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle textButtonBlack = TextStyle(
    color: GojekColor.blackText,
    fontSize: GojekFontSize.medium2,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle textButtonWhite = TextStyle(
    color: GojekColor.white,
    fontSize: GojekFontSize.medium2,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle textTitleBlack = TextStyle(
    color: GojekColor.blackText,
    fontSize: GojekFontSize.large2,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle textParagraphBlack = TextStyle(
    color: GojekColor.blackSoftText,
    fontSize: GojekFontSize.medium2,
  );
}
