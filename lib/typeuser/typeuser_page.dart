import 'package:flutter/material.dart';
import 'package:pharmacyapp/src/pages/login_page.dart';

class Typeuser extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 300),
        color: Colors.blue.shade100,
        width: size.height * .50,
        child: Column(
          children: <Widget>[
            Text(
              "Por favor escoja el tipo de usuario.",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 20,
                fontWeight: FontWeight.bold 
              ),
            ),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            Container(
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
                      return LoginPage();
                      }
                    ),                  
                  );
                },
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Usuario",
                  style: TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.w800,
                    color: Colors.white,
                    //letterSpacing: 3,
                  ),
                ),
              ),
            ),
            Container(
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
                      return LoginPage();
                      }
                    ),
                  );
                },
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Farmacia",
                  style: TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.w800,
                    color: Colors.white,
                    //letterSpacing: 3,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}