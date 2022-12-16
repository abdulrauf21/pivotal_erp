import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
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
      child: Column(
        children: [
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------
//This is the upper row i.e Sales and Purchase in Summary Tab in TabBARVIEW
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white,
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
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Image(
                            height: 30,
                            width: 30,
                            image: AssetImage(
                                "assets/images/more/Cart_1_for_sales_order.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sales",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w300),
                          ),
                          Text("Rs 25699.00"),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white,
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
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Image(
                            height: 33,
                            width: 33,
                            image: AssetImage(
                                "assets/images/more/Cart_2_for_zero_sales_order.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Purchase",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w300),
                          ),
                          Text("Rs 33000.00"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        ],
      ),
    );
  }
}
