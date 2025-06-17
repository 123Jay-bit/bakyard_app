import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [

          Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/arch1.png',
                scale: 30,
              )),
              
          Text('Welcome',
       // textAlign: TextAlign.center,
          style: 
          TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),),

          Align(
            alignment: Alignment.center,
            child: Text('LogOn As',
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
            ),),
            
          ),

          Align(
            alignment: Alignment.center,
            child: 
            Column(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                      'assets/images/vegetablesforwelcomescreen.webp'),
                ),

                SizedBox(
                  height: 50,
                ),

                 SizedBox(
                  height: 35,
                  width: 350,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text('Customer')),
                ),

                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 35,
                  width: 350,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text('Vendor')),
                ),

                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 35,
                  width: 350,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text('Farmer')),
                )

               
                
                

              ],
            ),
          )

          

          



        ],
      ),
    );
  }
}






















// import 'package:flutter/material.dart';

// class OnBoardScreen extends StatelessWidget {
//   const OnBoardScreen({super.key});

//   Widget _buildRoleButton(BuildContext context, String role) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.teal,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//             ),
//           ),

//           child: 
//           Text('role',
//           style: 
//           TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.normal,
//             color: Colors.black
//           ),
//           )),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           SizedBox(
//             height: 30,
//           ),
//           Text(
//             'Welcome',
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Align(
//               alignment: Alignment.center,
//               child: Text(
//                 'Sign Up As',
//                 style: TextStyle(
//                     fontWeight: FontWeight.w100,
//                     fontSize: 15,
//                     letterSpacing: 2.5),
//               )),
//           SizedBox(
//             height: 20,
//           ),
//           Expanded(
//               child: Stack(
//             children: [
//               Positioned.fill(
//                   child: Image.asset(
//                 'assets/images/vegetablesforwelcomescreen.webp',
//                 fit: BoxFit.cover,
//               )),
//               Positioned(
//                   child: Container(
//                 color: Colors.grey.withOpacity(2.5),
//               )),
//               Center(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       _buildRoleButton(context, 'Customer'),
                      
//                       SizedBox(height: 20,),

//                       _buildRoleButton(context, 'Vendor'),

//                       SizedBox(height: 20,),

//                       _buildRoleButton(context, 'Farmer'),

//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ))
//         ],
//       )),
//     );
//   }
// }
