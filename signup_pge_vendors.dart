import 'package:flutter/material.dart';

class VendorSignUp extends StatefulWidget {
  const VendorSignUp({super.key});

  @override
  State<VendorSignUp> createState() => _VendorSignUpState();
}

class _VendorSignUpState extends State<VendorSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //controller: controller,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset('assets/images/arch1.png')),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Register As Vendor',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box_rounded),
                    hintText: 'Business Name',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 82, 78, 78))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.account_box_rounded),
                    hintText: 'Email',
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
              SizedBox(
                height: 15,
              ),
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
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.account_box_rounded),
                    hintText: 'Business Location (city/state/country)',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 82, 78, 78))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.account_box_rounded),
                    hintText: 'GPS',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 82, 78, 78))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.account_box_rounded),
                    hintText: 'Business Type (e.g. farm, market, etc.)',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 82, 78, 78))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.account_box_rounded),
                    hintText: 'Products/Services Offered',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 82, 78, 78)),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.teal,
                          size: 20,
                        ))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.account_box_rounded),
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 82, 78, 78))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.account_box_rounded),
                    hintText: 'Business Registration Certifications',
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(255, 82, 78, 78)),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.teal,
                          size: 20,
                        ))),
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
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Already Have An Account?  Login',
                      style: TextStyle(
                        color: Colors.teal,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                      ),
                    ),
                  )),
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset('assets/images/arch2.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
