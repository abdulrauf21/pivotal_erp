import 'package:flutter/material.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        title: Text(
          "Reports",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
//  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
            //This is the first container (Product)
            SizedBox(
              height: 15,
            ),
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 195, 237, 230),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    color: Color.fromARGB(255, 153, 230, 216),
                    child: Text(
                      "Product",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/Products_monthly_summary.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Product Monthly Summary",
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
                                "assets/images/Product_current_status.png",
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Product Current Status",
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
                                "assets/images/Product_voucher.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Product Voucher",
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
                                "assets/images/Product_group_summary.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Product Group Summary",
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
            SizedBox(
              height: 15,
            ),
//  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
            //This is the second container(Sales and Purchase).
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
                      "Sales and Purchase",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                                "assets/images/Sales_VAT_register.png",
                                height: 45,
                                width: 45,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Sales VAT Register",
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
                                "assets/images/Sales_Return_VAT_register.png",
                                height: 45,
                                width: 45,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Sales Return VAT Register",
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
                                "assets/images/Purchase_VAT_Register.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Purchase VAT Register",
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
                                "assets/images/Purchase_Return_VAT_Register.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Purchase Return VAT Register",
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
            SizedBox(
              height: 15,
            ),
//  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
            //This is the Third container (Group A)
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 243, 240, 221),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    color: Color.fromARGB(255, 245, 233, 167),
                    child: Text(
                      "Group A",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                                "assets/images/Ledger_voucher.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Ledger Voucher",
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
                                "assets/images/View_bg_details.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "View BG Details",
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
                                "assets/images/Credit_limit_expiry_party.png",
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Current Limit Expiry Party",
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
                                "assets/images/Get_party_ageing_report.png",
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Get Party Ageing",
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
            SizedBox(
              height: 15,
            ),

//  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
            // This is the fourth container(Group B)
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 198, 222, 235),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    color: Color.fromARGB(255, 161, 205, 229),
                    child: Text(
                      "Group B",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                                "assets/images/Ledger_group_summary.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Ledger Group Summary",
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
                                "assets/images/Statutory_report.png",
                                height: 45,
                                width: 45,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Statutory Reports",
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
                                "assets/images/Bill_wise_ageing.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Bill Wise Ageing",
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
      ),
    );
  }
}
