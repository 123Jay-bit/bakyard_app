import 'package:flutter/material.dart';

class SignupPge extends StatefulWidget {
  const SignupPge({super.key});

  @override
  State<SignupPge> createState() => _SignupPgeState();
}

class _SignupPgeState extends State<SignupPge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          
          children: [
            Positioned(
                top: 0, right: 0, child: Image.asset('assets/images/arch1.png')),

                Align(alignment: Alignment.center,
                child: Text('Create Your Account',
                style: 
                TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),),
                ),

                SizedBox(height: 15),
                
                TextFormField(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box_rounded),
                  hintText: 'Full Name',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 82, 78, 78)
                  )),),

                  SizedBox(height: 15,),

                  TextFormField(
              decoration: InputDecoration(
                  //prefixIcon: Icon(Icons.account_box_rounded),
                  hintText: 'Phone Number / Email',
                  hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: const Color.fromARGB(255, 82, 78, 78))),
            ),

                  SizedBox(height: 15),

                  TextFormField(
                    decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: const Color.fromARGB(255, 82, 78, 78),
                ),
                //prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

               SizedBox(height: 15,),

               TextFormField(
              decoration: InputDecoration(
                hintText: "Confirm Password",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: const Color.fromARGB(255, 82, 78, 78),
                ),
                //prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ), 

            SizedBox(
              height: 25,
              width: 350,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),

            SizedBox(height: 50),

            Align(alignment: Alignment.bottomCenter,
            child: TextButton(onPressed: (){},
             child: Text('Already Have An Account?  Login',
             style: TextStyle(
              color: Colors.teal,
              fontStyle: FontStyle.normal,
              fontSize: 20,
             ),),
                )
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: 
              Image.asset('assets/images/arch2.png'),
            ),

                
                
                  
                
        
                
          ],
        ),
      ),
      

    );
  }
}