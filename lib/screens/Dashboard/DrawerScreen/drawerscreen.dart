import 'package:clay_containers/clay_containers.dart';

import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color baseColor = Colors.lightBlue.shade100;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Color.fromARGB(255, 127, 239, 126),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Column(
              children: [
                ClayContainer(
                  color: baseColor,
                  height: 150,
                  width: 150,
                  borderRadius: 75,
                  curveType: CurveType.convex,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
