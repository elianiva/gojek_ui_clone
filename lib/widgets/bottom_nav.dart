import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/colors.dart';
import 'package:gojek_clone/themes/text_styles.dart';

class FloatingBottomNav extends StatefulWidget {
  const FloatingBottomNav({super.key});

  @override
  State<FloatingBottomNav> createState() => FloatingBottomNavState();
}

class FloatingBottomNavState extends State<FloatingBottomNav> {
  final List<Widget> menu = [
    NavigationItem(text: "GoRide", iconPath: "assets/icons/ic_indoride.png"),
    NavigationItem(text: "GoCar", iconPath: "assets/icons/ic_indocar.png"),
    NavigationItem(text: "GoFood", iconPath: "assets/icons/ic_indofood.png"),
    NavigationItem(text: "GoSend", iconPath: "assets/icons/ic_indosend.png"),
  ]
      .map(
        (item) => Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 32.0,
              height: 32.0,
              child: Image.asset(
                item.iconPath,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(item.text, style: GojekTextStyles.textParagraphBlack)
          ],
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Card(
        color: GojekColor.white,
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(64.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: menu,
          ),
        ),
      ),
    );
  }
}

class NavigationItem {
  NavigationItem({required this.text, required this.iconPath});

  String text;
  String iconPath;
}
