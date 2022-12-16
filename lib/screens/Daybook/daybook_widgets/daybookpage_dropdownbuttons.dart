import 'package:flutter/material.dart';

class DayBookPageDropdownButtons extends StatefulWidget {
  const DayBookPageDropdownButtons({super.key});

  @override
  State<DayBookPageDropdownButtons> createState() =>
      _DayBookPageDropdownButtonsState();
}

class _DayBookPageDropdownButtonsState
    extends State<DayBookPageDropdownButtons> {
  String companyPeriod = '2078-2079';
  String branches = 'Main Branch';
  String vouchers = 'All vouchers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "DayBook",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6.0, // soften the shadow
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 20, right: 20, left: 15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.arrow_back),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Date Interval",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.cancel)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle_outlined),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Select Month",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle_outlined),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Quarterly",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle_outlined),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Half Yearly",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle_outlined),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Yearly",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle_outlined),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "All Time",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle_outlined),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Custom Date Range",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "1-1" + "to" + "12-31",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey.shade700,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                  DropdownButton<String>(
                    borderRadius: BorderRadius.circular(10),
                    value: companyPeriod,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                    ),
                    style: const TextStyle(color: Colors.blue),
                    underline: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                    onChanged: (String? companyPeriodValue) {
                      setState(() {
                        companyPeriod = companyPeriodValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        value: '2078-2079',
                        child: Text(
                          "2078-2079",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: '2079-2080',
                        child: Text(
                          "2079-2080",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton<String>(
                    borderRadius: BorderRadius.circular(10),
                    value: branches,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                    ),
                    style: const TextStyle(color: Colors.blue),
                    underline: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                    onChanged: (String? branchValue) {
                      setState(() {
                        branches = branchValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        value: 'Main Branch',
                        child: Text(
                          "Main Branch",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Birgunj Branch',
                        child: Text(
                          "Birgunj Branch",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  DropdownButton<String>(
                    borderRadius: BorderRadius.circular(10),
                    value: vouchers,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                    ),
                    style: const TextStyle(color: Colors.blue),
                    underline: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                    onChanged: (String? vouchersValue) {
                      setState(() {
                        vouchers = vouchersValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        value: 'All vouchers',
                        child: Text(
                          "All vouchers",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Receipt',
                        child: Text(
                          "Receipt",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Payment',
                        child: Text(
                          "Payment",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'PurchaseInvoice',
                        child: Text(
                          "PurchaseInvoice",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'SalesInvoice',
                        child: Text(
                          "SalesInvoice",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Purchase Return',
                        child: Text(
                          "Purchase Return",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Sales Return',
                        child: Text(
                          "Sales Return",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Delivery Note',
                        child: Text(
                          "Delivery Note",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
