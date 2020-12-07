import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SplashScreen(
          seconds: 5,
          navigateAfterSeconds: 'typeuser',
          title: new Text('Pharmacy App'),
          image: new Image.asset('assets/logo.png'),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(color: Colors.blueAccent),
          photoSize: 100.0,
          loaderColor: Colors.blueAccent, 
        ),
      ),
    );
  }
}