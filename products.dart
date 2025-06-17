import 'package:flutter/material.dart';
import 'package:bakyard/fruits.dart';
import 'package:bakyard/vegetable.dart';
import 'package:bakyard/cereals.dart';
import 'package:bakyard/crops.dart';
import 'package:bakyard/fish.dart';
import 'package:bakyard/meat.dart';
import 'spices.dart';
import 'tubers.dart';
import 'brewitems.dart';


class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 9, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
        
      //   backgroundColor: Colors.teal,
        

      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.arrow_circle_left_sharp, color: Colors.black,
      //     size: 50,),
      //   ),

      //   centerTitle: true,
      //   title: Text('Products',
      //   style: 
      //   TextStyle(
      //     fontSize: 25,
      //     fontWeight: FontWeight.bold,
      //   ),),

      //   elevation: 5.0,
      //   scrolledUnderElevation: 5.0,
      //   shadowColor: Colors.grey,
      //   ),
      appBar: AppBar(
        toolbarHeight: 10,
        bottom: 
        TabBar(
                    controller: tabController,
                    isScrollable: true,
                    indicatorColor: Colors.teal,
                    tabs: [
                      
                      Text(
                        "Vegetables",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Fruits",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Creals",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Spices",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Crops",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Tubers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Fish",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Meat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "Brew Items",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      
                    ],
                  ),
      ),

        body: 
         Expanded(
        child: TabBarView(
          controller: tabController,
          children: [
            Vegetable(),
             Fruits(),
              Cereals(),
              Spices(),
              Crops(),
              Tubers(),
              Fish(),
              Meat(),
              Brewitems(),
            
          ],
        ),
      ),
        
       
      
    );
  }
}
