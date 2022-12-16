import 'package:flutter/material.dart';

class InventoryItems extends StatefulWidget {
  const InventoryItems({super.key});

  @override
  State<InventoryItems> createState() => _InventoryItemsState();
}

class _InventoryItemsState extends State<InventoryItems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //This is the blue container in which Text Item name and Unit Left
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 15),
            color: Color.fromARGB(255, 146, 210, 255),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item Name"),
                Text("Unit Left"),
              ],
            ),
          ),

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          //From Here all the Product group and Products nam with Unit left is coded.
          //     Cigarette Group
          ExpansionTile(
            collapsedBackgroundColor: Color.fromARGB(255, 223, 242, 255),
            title: Text('Cigarette'),
            children: [
              //From here, the Product name unit left is started
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Surya Ice"),
                    Row(
                      children: [
                        Text(
                          "980 Packets",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pilot"),
                    Row(
                      children: [
                        Text(
                          "15 Packets",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sikhar"),
                    Row(
                      children: [
                        Text(
                          "91 Packets",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Black"),
                    Row(
                      children: [
                        Text(
                          "-14 Packets",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("MarlBoro"),
                    Row(
                      children: [
                        Text(
                          "5 Packets",
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              )
            ],
            // onExpansionChanged: (bool expanded) {},
          ),

//--------------------------------------------------------------------------------------------------------------------------------------------------------------
          //Biscuits Group

          ExpansionTile(
            title: Text('Biscuits'),
            collapsedBackgroundColor: Color.fromARGB(255, 223, 242, 255),
            children: [
              //From here, the Product name unit left is started
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Parle G"),
                    Row(
                      children: [
                        Text(
                          "200 CTN",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Butter Bake"),
                    Row(
                      children: [
                        Text(
                          "50 CTN",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Yummy Chocolate"),
                    Row(
                      children: [
                        Text(
                          "0 CTN",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("OREO"),
                    Row(
                      children: [
                        Text(
                          "88 CTN",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            // onExpansionChanged: (bool expanded) {},
          ),
          //------------------------------------------------------------------------------------------------------------------
          //From here,  Chips group start
          ExpansionTile(
            title: Text('Chips'),
            collapsedBackgroundColor: Color.fromARGB(255, 223, 242, 255),
            children: [
              //From here, the Product name unit left is started
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pran Aalu Chips"),
                    Row(
                      children: [
                        Text(
                          "1000 Pcs",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Lays Tomato"),
                    Row(
                      children: [
                        Text(
                          "30 CTN",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kurkure"),
                    Row(
                      children: [
                        Text(
                          "97 CTN",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Lays Chilli"),
                    Row(
                      children: [
                        Text(
                          "3 Box",
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Moong Dal"),
                    Row(
                      children: [
                        Text(
                          "51 CTN",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            // onExpansionChanged: (bool expanded) {},
          ),
//---------------------------------------------------------------------------------------------------------------------
          //From here Chocolates group starts
          ExpansionTile(
            title: Text('Chocolates'),
            collapsedBackgroundColor: Color.fromARGB(255, 223, 242, 255),
            children: [
              //From here, the Product name unit left is started
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("KitKat"),
                    Row(
                      children: [
                        Text(
                          "650 Pcs",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dairy Milk small"),
                    Row(
                      children: [
                        Text(
                          "20 CTN",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Diary Milk Big"),
                    Row(
                      children: [
                        Text(
                          "11 CTN",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("5 Stars small"),
                    Row(
                      children: [
                        Text(
                          "97 Box",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Choco Choco"),
                    Row(
                      children: [
                        Text(
                          "51 CTN",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            // onExpansionChanged: (bool expanded) {},
          ),
          //-----------------------------------------------------------------------------------------------------------------------------------------------------
          // From Here Bottle Group Starts
          ExpansionTile(
            title: Text('Bottles'),
            collapsedBackgroundColor: Color.fromARGB(255, 223, 242, 255),
            children: [
              //From here, the Product name unit left is started
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bottles"),
                    Row(
                      children: [
                        Text(
                          "1100 Pcs",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Plate"),
                    Row(
                      children: [
                        Text(
                          "2000 Pcs",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            // onExpansionChanged: (bool expanded) {},
          ),
          // --------------------------------------------------------------------------------------------------------------------------------
          // From Here, Cosmetics Items Start.
          ExpansionTile(
            title: Text('Lipstick'),
            collapsedBackgroundColor: Color.fromARGB(255, 223, 242, 255),
            children: [
              //From here, the Product name unit left is started
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Red Velvet"),
                    Row(
                      children: [
                        Text(
                          "115 Pcs",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dark Pink"),
                    Row(
                      children: [
                        Text(
                          "61 Pcs",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            // onExpansionChanged: (bool expanded) {},
          ),
          // --------------------------------------------------------------------------------------------------------------------------------
          // From Here, Creams Items Start.
          ExpansionTile(
            title: Text('Cream'),
            collapsedBackgroundColor: Color.fromARGB(255, 223, 242, 255),
            children: [
              //From here, the Product name unit left is started
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("BB Cream"),
                    Row(
                      children: [
                        Text(
                          "33 Pcs",
                          style: TextStyle(
                              color: Color.fromARGB(255, 59, 179, 63)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Foundation"),
                    Row(
                      children: [
                        Text(
                          "45 Pcs",
                          style: TextStyle(
                            color: Color.fromARGB(255, 59, 179, 63),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.error),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            // onExpansionChanged: (bool expanded) {},
          ),
        ],
      ),
    );
  }
}
