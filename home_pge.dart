import 'package:bakyard/products.dart';
import 'package:flutter/material.dart';
import 'basket.dart';
import 'profile.dart';
import 'package:bakyard/home_pge.dart';
import 'vendors.dart';
import 'farmers.dart';

class HomePge extends StatefulWidget {
  const HomePge({super.key});

  @override
  State<HomePge> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

   int currentSelectedIndex = 0;

  void selectedScreen(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final List<Map<String, dynamic>> screens = [
    {"screen":  Basket(), "title": "Basket"},
    {"screen": const HomePge(), "title": "Home"},
    {"screen": const Profile(), "title": "Profile"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_circle_left_sharp,
              color: Colors.black,
            )),
            
            title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                  Icons.search_rounded,
                  size: 30,
                  color: Colors.black,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
        centerTitle: true,


        bottom: TabBar(controller: tabController, 
        //isScrollable: true,
        indicatorColor: Colors.black,
        tabs: [
           Text(
                "Products",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),

               Text(
                "Vendors",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),


        
               Text(
                "Farmers",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
        ]
        ),
        elevation: 5.0,
        scrolledUnderElevation: 5.0,
        shadowColor: Colors.grey,
      ),


      body:
      Expanded(
        child: TabBarView(
          controller: tabController,
          children: [Products(), Vendors(), Farmers()],
        ),
      ),

      
       
      
       //screens[currentSelectedIndex]["screen"],

      bottomNavigationBar: 
      SizedBox(
        height: 120,
        child:
        BottomNavigationBar(
              backgroundColor: Colors.teal,
              
              selectedLabelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              unselectedLabelStyle: TextStyle(fontSize: 15),
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.black,
              currentIndex: currentSelectedIndex,
              onTap: selectedScreen,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_basket_outlined,
                      size: 30,
                    ),
                    label: "Basket"),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_pin, size: 30), label: "Profile"),
              ]),
      )
      
    );
  }
}
