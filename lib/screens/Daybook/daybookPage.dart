import 'package:flutter/material.dart';

import 'package:pivotal_erp/screens/Daybook/daybook_widgets/daybookpage_dropdownbuttons.dart';

class DayBookPage extends StatelessWidget {
  const DayBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: Column(children: [
        //This below container widget is the above container of the DayBook Page. In which all the dropdownbuttons are coded.
        Container(
          height: 200,
          child: DayBookPageDropdownButtons(),
        ),
        //Below here all the transactional data like purchase and sales invoice, Receipt and payments will be coded in ListView.builder container
        Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 15),
          child: Container(
            height: 210,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 2,
                  spreadRadius: 1.0, //extend the shadow
                  offset: Offset(
                    1.0, // Move to right 5  horizontally
                    1.0, // Move to bottom 5 Vertically
                  ),
                ),
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                //This is the grey colored container in the main container.
                Container(
                  height: 40,
                  color: Colors.grey.shade300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.calendar_month_rounded)),
                          Text("0001-01-01T00:00:00"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.print)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                    ],
                  ),
                ),
                //This is the  container in which Purchase Invoice,  Primary and Ref no. is mentioned
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "PurchaseInvoice",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Primary",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ],
                      ),
                      Text(
                        "Ref No. 143",
                      )
                    ],
                  ),
                ),

                //This is the Container in which Transaction between data is shown
                Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.blue,
                          ),
                          Container(
                              height: 15,
                              child: VerticalDivider(
                                color: Colors.blue,
                                thickness: 2,
                              )),
                          Icon(
                            Icons.circle,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abdul Enterprises",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                          Text(
                            "Cash(Dipak)",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //This is the below line in which posted button and Transaction Amount is shown.
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        label: Text(
                          "Posted",
                          style: TextStyle(color: Colors.blue),
                        ),
                        backgroundColor: Colors.blue.shade100,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      Text(
                        "NPR 1000.00",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
