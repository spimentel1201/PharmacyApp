import 'package:flutter/material.dart';
import 'package:pharmacyapp/src/pages/home_page.dart';
import 'package:pharmacyapp/src/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharmacy App',
      initialRoute: 'splash',
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        'splash': (BuildContext context) => SplashPage(),
        'home': (BuildContext context) => HomePage(),
      },
    );
  }
}