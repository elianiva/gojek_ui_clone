import 'package:flutter/material.dart';
import 'package:gojek_clone/screens/chat.dart';
import 'package:gojek_clone/screens/home.dart';
import 'package:gojek_clone/screens/order.dart';
import 'package:gojek_clone/screens/promo.dart';
import 'package:gojek_clone/themes/text_styles.dart';

import 'layouts/tab_bar_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Widget> tabs = [
    "Beranda",
    "Promo",
    "Pesanan",
    "Chat",
  ]
      .map(
        (label) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
          child: Text(label, style: GojekTextStyles.textBold),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Clone',
      home: TabBarLayout(
        tabs: tabs,
        screens: const [
          HomeScreen(),
          PromoScreen(),
          OrderScreen(),
          ChatScreen(),
        ],
      ),
    );
  }
}
