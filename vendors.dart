import 'package:flutter/material.dart';

class Vendors extends StatelessWidget {
  final List<Map<String, dynamic>> vendors = [
    {
      'vendor': 'K.Badu AgroChemical',
      'location': 'Tanokrom',
      'GPS': 'GPS-001-001',
      '': '',
      'Phone': '0256782365',
      'image': 'assets/images/v1.png',
    },
    {
      'vendor': 'Anaji Choice Mart',
      'location': 'Anaji',
      'GPS': 'GPS-002-002',
      '': '',
      'Phone': '0553236754',
      'image': 'assets/images/v2.png',
    },
    {
      'vendor': 'Chop Enterprise',
      'location': 'Kojokrom',
      'GPS': 'GPS-003-003',
      '': '',
      'Phone': '0246798679',
      'image': 'assets/images/v3.png',
    },
    {
      'vendor': 'Nkunim Farm Accessories',
      'location': 'Apowa',
      'GPS': 'GPS-004-004',
      '': '',
      'Phone': '0557823451',
      'image': 'assets/images/v2.png',
    },
    {
      'vendor': 'Sika Stores',
      'location': 'Agona',
      'GPS': 'GPS-005-005',
      '': '',
      'Phone': '0204117659',
      'image': 'assets/images/v2.png',
    },
    {
      'vendor': 'Micah Veges',
      'location': 'Chapel Hill',
      'GPS': 'GPS-006-006',
      '': '',
      'Phone': '050381264',
      'image': 'assets/images/v2.png',
    },
    {
      'vendor': 'GodLove Ventures',
      'location': 'Essipong',
      'GPS': 'GPS-007-007',
      '': '',
      'Phone': '054742890',
      'image': 'assets/images/v2.png',
    },
    {
      'vendor': 'Auntie Kesewa',
      'location': 'Market Circle',
      'GPS': 'GPS-008-008',
      '': '',
      'Phone': '024815009',
      'image': 'assets/images/v2.png',
    },
  ];
  Vendors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.teal,
        //   centerTitle: true,
        //   title: Text('Vendors'),
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back_ios),
        //     onPressed: () => Navigator.pop(context),
        //   ),
        //   actions: [
        //     Icon(
        //       Icons.search,
        //       size: 40,
        //     )
        //   ],
        // ),
        body: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: vendors.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              childAspectRatio: .5,
            ),
            itemBuilder: (context, index) {
              final vendor = vendors[index];
              return Card(
                  elevation: 0.05,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12),
                                ),
                                child: Image.asset(
                                  vendor['image'],
                                  fit: BoxFit.contain,
                                  width: 100,
                                  height: 100,
                                  alignment: Alignment.center,
                                ))),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            vendor['vendor'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            vendor['location'],
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            vendor['GPS'],
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Divider(
                            thickness: 2,
                            color: Colors.teal,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              vendor['Phone'],
                              style: TextStyle(color: Colors.grey),
                            ))
                      ]));
            }));
  }
}


