
//This is wrap widget used for dynamic width container for every mobile size.

// import 'package:flutter/material.dart';

// class WrapTestPage extends StatelessWidget {
//   const WrapTestPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Wrap Widget Test Page")),
//       body: Container(
//         height: 280,
//         width: MediaQuery.of(context).size.width,
//         color: Color.fromARGB(255, 186, 247, 217),
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               height: 50,
//               color: Color.fromARGB(255, 128, 241, 184),
//               child: Text(
//                 "Document",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Wrap(
//                 alignment: WrapAlignment.start,
//                 runAlignment: WrapAlignment.start,
//                 spacing: 10,
//                 runSpacing: 10,
//                 children: [
//                   Container(
//                     height: 95,
//                     width: 117,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                       color: Color.fromARGB(255, 222, 243, 232),
//                       border: Border.all(
//                         color: Colors.grey.shade100,
//                         width: 1,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           blurRadius: 1.0, // soften the shadow
//                           spreadRadius: 1.0, //extend the shadow
//                           offset: Offset(
//                             0.0, // Move to right 5  horizontally
//                             1.0, // Move to bottom 5 Vertically
//                           ),
//                         )
//                       ],
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/images/more/document_scan.png",
//                           height: 40,
//                           width: 40,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "Document Scan",
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 95,
//                     width: 117,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                       color: Color.fromARGB(255, 222, 243, 232),
//                       border: Border.all(
//                         color: Colors.grey.shade100,
//                         width: 1,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           blurRadius: 1.0, // soften the shadow
//                           spreadRadius: 1.0, //extend the shadow
//                           offset: Offset(
//                             0.0, // Move to right 5  horizontally
//                             1.0, // Move to bottom 5 Vertically
//                           ),
//                         )
//                       ],
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/images/more/View_pdc_details.png",
//                           height: 35,
//                           width: 35,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "View PDC Details",
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 95,
//                     width: 117,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                       color: Color.fromARGB(255, 222, 243, 232),
//                       border: Border.all(
//                         color: Colors.grey.shade100,
//                         width: 1,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           blurRadius: 1.0, // soften the shadow
//                           spreadRadius: 1.0, //extend the shadow
//                           offset: Offset(
//                             0.0, // Move to right 5  horizontally
//                             1.0, // Move to bottom 5 Vertically
//                           ),
//                         )
//                       ],
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/images/more/Monthly_projection.png",
//                           height: 40,
//                           width: 40,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "Monthly Projection",
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 95,
//                     width: 117,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                       color: Color.fromARGB(255, 222, 243, 232),
//                       border: Border.all(
//                         color: Colors.grey.shade100,
//                         width: 1,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           blurRadius: 1.0, // soften the shadow
//                           spreadRadius: 1.0, //extend the shadow
//                           offset: Offset(
//                             0.0, // Move to right 5  horizontally
//                             1.0, // Move to bottom 5 Vertically
//                           ),
//                         )
//                       ],
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/images/more/Weekly_sales_report.png",
//                           height: 40,
//                           width: 40,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "Weekly Sales Report",
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 95,
//                     width: 117,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                       color: Color.fromARGB(255, 222, 243, 232),
//                       border: Border.all(
//                         color: Colors.grey.shade100,
//                         width: 1,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           blurRadius: 1.0, // soften the shadow
//                           spreadRadius: 1.0, //extend the shadow
//                           offset: Offset(
//                             0.0, // Move to right 5  horizontally
//                             1.0, // Move to bottom 5 Vertically
//                           ),
//                         )
//                       ],
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/images/more/Competitor_data.png",
//                           height: 40,
//                           width: 40,
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "Competitor Data",
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// This is Container widget of Dashboard Page in which Bank account is mentioned

//  Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 200,
//                   margin: EdgeInsets.symmetric(horizontal: 5.0),
//                   padding:
//                       EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 5),
// decoration: BoxDecoration(
//   borderRadius: BorderRadius.all(
//     Radius.circular(10),
//   ),
//   color: Colors.white,
//   border: Border.all(
//     color: Colors.grey.shade300,
//     width: 1,
//   ),
//   boxShadow: [
//     BoxShadow(
//       color: Colors.grey,
//       blurRadius: 8.0, // soften the shadow
//       spreadRadius: 2.0, //extend the shadow
//       offset: Offset(
//         1.0, // Move to right 5  horizontally
//         5.0, // Move to bottom 5 Vertically
//       ),
//     )
//   ],
// ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.account_balance,
//                                 color: Color.fromARGB(255, 198, 145, 22),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 "Bank Accunt",
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.teal),
//                               ),
//                             ],
//                           ),
//                           Text(
//                             "NRS. -56789.90",
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.red,
//                                 fontWeight: FontWeight.w400),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),

// This is TabBarView Widget

//  Container(
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
//                   child: DefaultTabController(
//                     length: 3,
//                     child: Column(
//                       children: [
//                         TabBar(
//                           indicatorColor: Colors.orange,
//                           indicatorWeight: 3,
//                           tabs: [
//                             Tab(
//                               child: Text(
//                                 "Summary",
//                                 style: TextStyle(
//                                     fontSize: 16, color: Colors.grey),
//                               ),
//                             ),
//                             Tab(
//                               child: Text(
//                                 "Sales Order",
//                                 style: TextStyle(
//                                     fontSize: 16, color: Colors.grey),
//                               ),
//                             ),
//                             Tab(
//                               child: Text(
//                                 "Purchase Order",
//                                 style: TextStyle(
//                                     fontSize: 16, color: Colors.grey),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           height: 400,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(10),
//                               bottomRight: Radius.circular(10),
//                             ),
//                             border: Border.all(
//                               color: Colors.grey.shade300,
//                               width: 1,
//                             ),
//                           ),
//                           child: TabBarView(
//                             children: [
//                               FirstTab(),
//                               SecondTab(),
//                               ThirdTab(),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//This is the listview.builder container widget which is in Daybook Page.
//  Padding(
//           padding: EdgeInsets.only(left: 12, right: 12, top: 15),
//           child: Container(
//             height: 180,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey,
//                   blurRadius: 2,
//                   spreadRadius: 1.0, //extend the shadow
//                   offset: Offset(
//                     1.0, // Move to right 5  horizontally
//                     1.0, // Move to bottom 5 Vertically
//                   ),
//                 ),
//               ],
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10)),
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   height: 40,
//                   color: Colors.grey.shade400,
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("0100000121"),
//                       Row(
//                         children: [
//                           IconButton(onPressed: () {}, icon: Icon(Icons.print)),
//                           IconButton(
//                               onPressed: () {}, icon: Icon(Icons.more_vert)),
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),

//This is the whole Container of Reports Page

// SizedBox(
//             height: 15,
//           ),
//           Container(
//             height: 300,
//             width: MediaQuery.of(context).size.width,
//             color: Color.fromARGB(255, 186, 247, 217),
//             child: Column(
//               children: [
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                   height: 50,
//                   color: Color.fromARGB(255, 106, 243, 174),
//                   child: Text(
//                     "Product",
//                     style:
//                         TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                             height: 100,
//                             width: 130,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(10),
//                               ),
//                               color: Color.fromARGB(255, 222, 243, 232),
//                               border: Border.all(
//                                 color: Colors.grey.shade100,
//                                 width: 1,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   blurRadius: 1.0, // soften the shadow
//                                   spreadRadius: 1.0, //extend the shadow
//                                   offset: Offset(
//                                     0.0, // Move to right 5  horizontally
//                                     1.0, // Move to bottom 5 Vertically
//                                   ),
//                                 )
//                               ],
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.calculate),
//                                 Text("Report name "),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             height: 100,
//                             width: 130,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(10),
//                               ),
//                               color: Color.fromARGB(255, 222, 243, 232),
//                               border: Border.all(
//                                 color: Colors.grey.shade100,
//                                 width: 1,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   blurRadius: 1.0, // soften the shadow
//                                   spreadRadius: 1.0, //extend the shadow
//                                   offset: Offset(
//                                     0.0, // Move to right 5  horizontally
//                                     1.0, // Move to bottom 5 Vertically
//                                   ),
//                                 )
//                               ],
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.calculate),
//                                 Text("Report name "),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             height: 100,
//                             width: 130,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(10),
//                               ),
//                               color: Color.fromARGB(255, 222, 243, 232),
//                               border: Border.all(
//                                 color: Colors.grey.shade100,
//                                 width: 1,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   blurRadius: 1.0, // soften the shadow
//                                   spreadRadius: 1.0, //extend the shadow
//                                   offset: Offset(
//                                     0.0, // Move to right 5  horizontally
//                                     1.0, // Move to bottom 5 Vertically
//                                   ),
//                                 )
//                               ],
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.calculate),
//                                 Text("Report name "),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 100,
//                         width: 130,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Color.fromARGB(255, 222, 243, 232),
//                           border: Border.all(
//                             color: Colors.grey.shade100,
//                             width: 1,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 1.0, // soften the shadow
//                               spreadRadius: 1.0, //extend the shadow
//                               offset: Offset(
//                                 0.0, // Move to right 5  horizontally
//                                 1.0, // Move to bottom 5 Vertically
//                               ),
//                             )
//                           ],
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.calculate),
//                             Text("Report name "),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
