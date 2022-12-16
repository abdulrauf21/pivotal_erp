import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: Column(
        children: [
// -------------------------------------------------------------------------------------------------------------------------------------------
// This is Upper Container (Document). from More page.
          SizedBox(
            height: 15,
          ),
          Container(
            height: 280,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 186, 247, 217),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  color: Color.fromARGB(255, 128, 241, 184),
                  child: Text(
                    "Document",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.start,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Container(
                        height: 95,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 222, 243, 232),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/more/document_scan.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Document Scan",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 222, 243, 232),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/more/View_pdc_details.png",
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "View PDC Details",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 222, 243, 232),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/more/Monthly_projection.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Monthly Projection",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 222, 243, 232),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/more/Weekly_sales_report.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Weekly Sales Report",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 222, 243, 232),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/more/Competitor_data.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Competitor Data",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
// --------------------------------------------------------------------------------------------------------------------------------
// This is lower container (Sales) from More Page.
          SizedBox(
            height: 15,
          ),

          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 214, 234, 230),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  color: Color.fromARGB(255, 153, 230, 216),
                  child: Text(
                    "Sales",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Container(
                        height: 95,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 222, 243, 232),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/others/Sales_order.png",
                              height: 60,
                              width: 60,
                            ),
                            Text(
                              "Sales Order",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 222, 243, 232),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/others/Zero_sales_order.png",
                              height: 60,
                              width: 60,
                            ),
                            Text(
                              "Zero Sales Order",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 222, 243, 232),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/more/Petrol_pump_cash_sales.png",
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Petrol Pump Cash Sales",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
