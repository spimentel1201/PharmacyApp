import 'package:flutter/material.dart';
import 'package:pharmacyapp/profile/components/profile_details.dart';
import 'package:pharmacyapp/profile/components/comentario.dart';
import 'package:pharmacyapp/profile/components/description.dart';

/*import 'comentario.dart';
import 'description.dart';
import 'profile_details.dart';*/

class Body extends StatelessWidget {

  const Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.2),
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    left: 20,
                    right: 20,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      //SizedBox(height: 10),
                      Description(),
                      SizedBox(height: 20 / 2),
                      //SizedBox(height: 20 / 2),
                      Comentario()
                    ],
                  ),
                ),
                ProfileDetails()
              ],
            ),
          )
        ],
      ),
    );
  }
}