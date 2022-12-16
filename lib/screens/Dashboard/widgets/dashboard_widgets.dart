import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Scaffold.of(context).openEndDrawer();
        },
        child: Icon(Icons.menu));
  }
}
