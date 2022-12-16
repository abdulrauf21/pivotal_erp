import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Daybook/daybookPage.dart';
import 'Inventory/inventorypage.dart';
import 'Menu/menupage.dart';
import 'Reports/reportspage.dart';
import 'Dashboard/dashboard.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  List<Widget> pages = [
    Dashboard(),
    DayBookPage(),
    ReportsPage(),
    InventoryPage(),
    MenuPage(),
  ];
  final items = <Widget>[
    Icon(
      Icons.dashboard,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.menu_book,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.analytics_rounded,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.inventory,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.menu_rounded,
      size: 30,
      color: Colors.white,
    ),
  ];
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: selectedPage,
        onTap: (pageno) {
          setState(() {
            selectedPage = pageno;
          });
        },
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        color: Colors.blue,
        backgroundColor: Colors.transparent,
        height: 60,
      ),
      body: pages[selectedPage],
    );
  }
}
