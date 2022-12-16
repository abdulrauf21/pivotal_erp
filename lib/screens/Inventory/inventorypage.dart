import 'package:flutter/material.dart';
import 'package:pivotal_erp/screens/Inventory/items_page/inventory_items.dart';
import 'package:pivotal_erp/screens/Inventory/units_page/inventory_units.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Inventory'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'ITEMS',
                ),
                Tab(
                  text: 'UNIT',
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
          body: TabBarView(children: [
            InventoryItems(),
            InventoryUnits(),
          ]),
        ),
      );
}
