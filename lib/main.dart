import 'dart:async';
import 'dart:io';
import 'package:campusell_v2/data/data.dart';
import 'package:campusell_v2/screens/landingPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:campusell_v2/screens/splash_screen.dart';
import 'package:campusell_v2/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Future<void> main()async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: new(),
//       debugShowCheckedModeBanner: false,
//       routes: <String, WidgetBuilder>{
//         '/screens/splash_screen.dart': (BuildContext context) => new SplashScreen()
//       },
//     );
//   }
// }

// class AuthenticationWrapper extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: new Home(),
//     );
//   }
// }


Future<void> main () async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  await Firebase.initializeApp();
  runApp(MaterialApp(home: email == null ? Home() : HomeScreen() )) ;
}