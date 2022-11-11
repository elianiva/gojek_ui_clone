import 'package:flutter/material.dart';
import 'package:gojek_clone/themes/colors.dart';

class TabBarLayout extends StatefulWidget {
  TabBarLayout({super.key, required this.tabs, required this.screens});

  List<Widget> tabs;
  List<Widget> screens;

  @override
  State<TabBarLayout> createState() => _TabBarLayoutState();
}

class _TabBarLayoutState extends State<TabBarLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: GojekColor.green,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: GojekColor.darkGreen,
                ),
                child: TabBar(
                  tabs: widget.tabs,
                  labelPadding: const EdgeInsets.all(4.0),
                  labelColor: GojekColor.green,
                  unselectedLabelColor: GojekColor.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: GojekColor.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(children: widget.screens),
      ),
    );
  }
}
