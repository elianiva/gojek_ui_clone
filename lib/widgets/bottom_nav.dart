import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/colors.dart';
import 'package:gojek_clone/widgets/labeled_button_icon.dart';

class FloatingBottomNav extends StatefulWidget {
  const FloatingBottomNav({super.key});

  @override
  State<FloatingBottomNav> createState() => FloatingBottomNavState();
}

class FloatingBottomNavState extends State<FloatingBottomNav> {
  late final List<Widget> menu = [
    LabeledButtonIcon(
      label: "GoRide",
      iconPath: "assets/icons/ic_indoride.png",
      iconHeight: 42,
      iconWidth: 42,
    ),
    LabeledButtonIcon(
      label: "GoCar",
      iconPath: "assets/icons/ic_indocar.png",
      iconHeight: 42,
      iconWidth: 42,
    ),
    LabeledButtonIcon(
      label: "GoFood",
      iconPath: "assets/icons/ic_indofood.png",
      iconHeight: 42,
      iconWidth: 42,
    ),
    LabeledButtonIcon(
      label: "GoSend",
      iconPath: "assets/icons/ic_indosend.png",
      iconHeight: 42,
      iconWidth: 42,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Card(
        color: GojekColor.white,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(64.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: GojekColor.grey,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: menu,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
