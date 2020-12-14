import 'package:flutter/material.dart';
import 'package:pharmacyapp/src/pages/home_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'package:pharmacyapp/model/pharmacy.dart';

final pharmacyReference = FirebaseDatabase.instance.reference().child('Farmacias');
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return MaterialApp(
      title: "TypeUser" ,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.blue.shade100,
          width: double.infinity,
          child: Column(
            children: [
              _logo(),
              _logoText(),
              _inputField(Icon(Icons.person_outline,size: 30,color: Color(0xffA6B0DB)),"Nombre de Usuario", false),
              _inputField(Icon(Icons.lock_outline,size: 30,color: Color(0xffA6B0DB)),"Contraseña", true),
              _loginBtn(context),
              _registerBtn(context),
            ],
          ),
          )
      )
    );
  }
}

Widget _logo(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 50,vertical: 70),
    child: Stack(
      children: [
        Positioned(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff00bfdb),
            )
          )
        ),
        Positioned(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            )
          )
        )
      ],
    ),
  );
}

Widget _logoText(){
  return Container(
    margin: EdgeInsets.only(bottom: 50),
    child: Text(
      "PharmacyApp",
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w800,
        color: Color(0xff000912),
        //letterSpacing: 5, 
      ),

    )
  );
}

Widget _inputField(Icon prefixIcon, String hintText, bool isPassword){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 10,
          offset: Offset(5,5),
          spreadRadius: -20, 
        )
      ]
    ),
    margin: EdgeInsets.only(bottom: 20),
    child: TextField(
      obscureText: isPassword,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xff000912)
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 25),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xffA6b0BD),
        ),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: prefixIcon,
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50)
          ),
          borderSide: BorderSide(
            color: Colors.white
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),  
          ),
          borderSide: BorderSide(
            color: Colors.white
          )
        )
      ),
    )
  );
}

Widget _loginBtn(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 20),
    width:  double.infinity,
    decoration: BoxDecoration(
      color: Color(0xff008FFF),
      borderRadius: BorderRadius.all(Radius.circular(50)),
      boxShadow: [BoxShadow(
        color: Color(0x60008FFF),
        blurRadius: 10,
        offset: Offset(0,5),
        spreadRadius: 0,
      ),]
    ),
    child: FlatButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context){
            return HomePage();
          }
        ),                          );
      },
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Text(
        "Iniciar Sesion",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          letterSpacing: 2,
        ),
      ),
    ),
  );
}

Widget _registerBtn(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 20),
    width:  double.infinity,
    decoration: BoxDecoration(
      color: Color(0xff008FFF),
      borderRadius: BorderRadius.all(Radius.circular(50)),
      boxShadow: [BoxShadow(
        color: Color(0x60008FFF),
        blurRadius: 10,
        offset: Offset(0,5),
        spreadRadius: 0,
      ),]
    ),
    child: FlatButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context){
            return HomePage();
          }
        ),                          );
      },
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Text(
        "Registrarse",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          letterSpacing: 2,
        ),
      ),
    ),
  );
}