import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/text_styles.dart';

class LabeledButtonIcon extends StatelessWidget {
  LabeledButtonIcon({
    super.key,
    required this.label,
    required this.iconPath,
    this.labelStyle,
    this.iconWidth,
    this.iconHeight,
  });

  String label;
  TextStyle? labelStyle = GojekTextStyles.textParagraphBlack;
  String iconPath;
  double? iconWidth = 32.0;
  double? iconHeight = 32.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            minimumSize: MaterialStateProperty.all(Size(iconWidth!, iconHeight!))
          ),
          onPressed: () {},
          child: Container(
            alignment: Alignment.center,
            width: iconWidth,
            height: iconHeight,
            child: Image.asset(
              iconPath,
            ),
          ),
        ),
        const SizedBox(height: 2.0),
        Text(label, style: labelStyle)
      ],
    );
  }
}
