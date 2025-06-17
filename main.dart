import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bakyard/main.dart';
import 'package:bakyard/splashscreen.dart';
import 'package:bakyard/products.dart';
import 'package:bakyard/vegetable.dart';
import 'package:bakyard/welcomescreen.dart';
import 'package:bakyard/signup_pge.dart';
import 'package:bakyard/loginpge.dart';
import 'package:bakyard/loginpge2.dart';
import 'package:bakyard/vendors.dart';
import 'package:bakyard/signup_pge_vendors.dart';
import 'package:bakyard/signup_pge_farmers.dart';
import 'package:bakyard/profile.dart';
import 'package:bakyard/home_pge.dart';
import 'package:bakyard/fruits.dart';
import 'package:bakyard/farmers.dart';
import 'package:bakyard/basket.dart';
import 'package:bakyard/d.dart';


Future<void> main() async {
  runApp(
    DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(
    
  )));
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAtyrfXfAaBS5aQlIjHb_0JVE_JayNc51c',
          appId: 'bakyard-5abd2',
          messagingSenderId: '42896342606',
          projectId: 'bakyard-5abd2'));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomePge(), // Change this to Welcomescreen() to see the welcome screen
      debugShowCheckedModeBanner: false,
    );
  }
}


// download these dependencies
// firebase_auth
// firebase_core
// cloud_firestore