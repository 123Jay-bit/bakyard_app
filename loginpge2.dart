import 'package:flutter/material.dart';

class UsersLoginPge extends StatefulWidget {
  const UsersLoginPge({super.key});

  @override
  State<UsersLoginPge> createState() => _UsersLoginPgeState();
}

class _UsersLoginPgeState extends State<UsersLoginPge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/arch1.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 170,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(width: 2.5),
                              // shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Colors.black,
                                  )),
                            ),
                            child: Text(
                              'Phone',
                              style: TextStyle(
                                //fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 3),
                        SizedBox(
                          height: 50,
                          width: 170,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                //fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box_rounded),
                        hintText: "Please Enter Email",
                        hintStyle: TextStyle(
                          //fontSize: 10,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 82, 78, 78),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 82, 78, 78),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Checkbox(value: false, onChanged: (value) {}),
                      // Text(
                      //   'Keep me logged in?',
                      //   style: TextStyle(
                      //     fontStyle: FontStyle.italic,
                      //     //fontSize: 10,
                      //     color: Colors.black,
                      //   ),
                      // ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationThickness: 2,

                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            //fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 35,
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
                  SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        iconColor: WidgetStateColor.transparent,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.fingerprint_rounded,
                        size: 40,
                        color: Colors.black,
                      ),
                      label: Text(''),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up as New User',
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset('assets/images/arch2.png'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
