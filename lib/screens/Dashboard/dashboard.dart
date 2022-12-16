import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:pivotal_erp/screens/Dashboard/first_tabbarview_tabs/summary_tab.dart';
import 'package:pivotal_erp/screens/Dashboard/first_tabbarview_tabs/sales_order_tab.dart';
import 'package:pivotal_erp/screens/Dashboard/first_tabbarview_tabs/purchase_order_tab.dart';
import 'package:pivotal_erp/screens/Dashboard/second_tabbarview_tabs/top_payables_tab.dart';
import 'package:pivotal_erp/screens/Dashboard/second_tabbarview_tabs/top_receivables_tab.dart';
import 'package:pivotal_erp/screens/Dashboard/second_tabbarview_tabs/top_suppliers_tab.dart';

import '../Daybook/daybookPage.dart';
import '../Inventory/inventorypage.dart';

import '../Menu/menupage.dart';
import '../Reports/reportspage.dart';

import 'widgets/dashboard_widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedPage = 0;

  final screens = [
    DayBookPage(),
    ReportsPage(),
    InventoryPage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // final items = <Widget>[
    //   Icon(
    //     Icons.dashboard,
    //     size: 30,
    //     color: Colors.white,
    //   ),
    //   Icon(
    //     Icons.menu_book,
    //     size: 30,
    //     color: Colors.white,
    //   ),
    //   Icon(
    //     Icons.analytics_rounded,
    //     size: 30,
    //     color: Colors.white,
    //   ),
    //   Icon(
    //     Icons.inventory,
    //     size: 30,
    //     color: Colors.white,
    //   ),
    //   // Icon(
    //   //   Icons.menu_rounded,
    //   //   size: 30,
    //   //   color: Colors.white,
    //   // ),
    // ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Image.asset("assets/images/dynamic_logo.png"),
        ),
        title: Text(
          "Dynamic Technosoft Pvt Ltd",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active_rounded),
          ),
          DrawerIcon(),
          SizedBox(
            width: 12,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      endDrawer: Drawer(
        width: double.infinity,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              child: Text("Header"),
            ),
            ExpansionTile(
              title: Row(
                children: [
                  Icon(Icons.calendar_month),
                  Text(' Date'),
                ],
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: false,
                          groupValue: false,
                          onChanged: (value) {},
                        ),
                        Text("A.D"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: false,
                          onChanged: (value) {},
                        ),
                        Text("B.S."),
                      ],
                    ),
                  ],
                )
              ],
              // onExpansionChanged: (bool expanded) {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.blue,
                  alignment: Alignment.topCenter,
                  height: 100,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      height: 200.0,
                      autoPlay: true,
                    ),
                    items: [1, 2, 3, 4, 5].map(
                      (i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              padding: EdgeInsets.only(
                                  left: 12, right: 12, top: 20, bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey.shade400, width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.account_balance,
                                            color: Color.fromARGB(
                                                255, 198, 145, 22),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Bank Account",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.teal),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "NRS. 56789.90",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.play_arrow,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          "View summary",
                                          style: TextStyle(color: Colors.blue),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                )
              ],
            ),
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
//Customer Outstanding starts from here
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlue.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0, //extend the shadow
                      offset: Offset(
                        2, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Outstanding",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "NRS. 25699.00",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
//------------------------------------------------------------------------------
//From here the row of Sales and Received starts.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Color.fromARGB(255, 249, 253, 253),
                            border: Border.all(
                              color: Colors.grey.shade100,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 1.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 5  horizontally
                                  1.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 225, 244, 235),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage(
                                        "assets/images/icons/Sales_Green-Icon.png")),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Sales",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text("Rs 25699.00"),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Color.fromARGB(255, 251, 249, 248),
                            border: Border.all(
                              color: Colors.grey.shade100,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 1.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 5  horizontally
                                  1.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 242, 231, 231),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage(
                                        "assets/images/icons/sales red.png")),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Received",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text("Rs 0.00"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
//Vendor Outstanding starts from here
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlue.shade100,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 0, //extend the shadow
                      offset: Offset(
                        2, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vendor Outstanding",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    Text(
                      "NRS. -33000.00",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Color.fromARGB(255, 249, 253, 253),
                            border: Border.all(
                              color: Colors.grey.shade100,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 1.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 5  horizontally
                                  1.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 225, 244, 235),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage(
                                        "assets/images/icons/Sales_Green-Icon.png")),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Purchase",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text("Rs 33000.00"),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Color.fromARGB(255, 251, 249, 248),
                            border: Border.all(
                              color: Colors.grey.shade100,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 1.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 5  horizontally
                                  1.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 242, 231, 231),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage(
                                        "assets/images/icons/sales red.png")),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Payment",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text("Rs 0.00"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------
//Purchase and Sales Container with TAB BAR VIEW Starts from here.
            Container(
              height: 520,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      "Purchase And Sales",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          TabBar(
                            indicatorColor: Colors.orange,
                            indicatorWeight: 3,
                            tabs: [
                              Tab(
                                child: Text(
                                  "Summary",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Sales Order",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Purchase Order",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 1,
                              ),
                            ),
                            child: TabBarView(
                              children: [
                                FirstTab(),
                                SecondTab(),
                                ThirdTab(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//Top Payables , Top Receivables , and Top Suppliers starts here.
            Container(
              // decoration: BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey,
              //       blurRadius: 8.0, // soften the shadow
              //       spreadRadius: 2.0, //extend the shadow
              //       offset: Offset(
              //         5.0, // Move to right 5  horizontally
              //         5.0, // Move to bottom 5 Vertically
              //       ),
              //     )
              //   ],
              // ),
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.orange,
                      indicatorWeight: 3,
                      tabs: [
                        Tab(
                          child: Text(
                            "Top Payables",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Top Receivables",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Top Suppliers",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 800,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: TabBarView(
                        children: [
                          TopPayablesTab(),
                          TopReceivablesTab(),
                          TopSuppliersTab(),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "View More...",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(MaterialPageRoute(
                    //         builder: (context) => DrawerScreen()));
                    //   },
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text(
                    //         "Go to Drawer Screen page",
                    //         style: TextStyle(fontSize: 17),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
