import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/colors.dart';
import 'package:gojek_clone/widgets/labeled_button_icon.dart';

class FloatingBottomNav extends StatefulWidget {
  const FloatingBottomNav({super.key});

  @override
  State<FloatingBottomNav> createState() => FloatingBottomNavState();
}

class FloatingBottomNavState extends State<FloatingBottomNav> {
  final List<Widget> menu = [
    LabeledButtonIcon(label: "GoRide", iconPath: "assets/icons/ic_indoride.png"),
    LabeledButtonIcon(label: "GoCar", iconPath: "assets/icons/ic_indocar.png"),
    LabeledButtonIcon(label: "GoFood", iconPath: "assets/icons/ic_indofood.png"),
    LabeledButtonIcon(label: "GoSend", iconPath: "assets/icons/ic_indosend.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Card(
        color: GojekColor.white,
        elevation: 8.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(64.0)),
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
