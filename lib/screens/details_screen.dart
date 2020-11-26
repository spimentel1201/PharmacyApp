import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          /*Container(
            height: size.height * .45,
            decoration: BoxDecoration(),
          )*/
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.05,
                    ),
                  Text(
                    "Farmacia1", 
                    style: Theme.of(context)
                        .textTheme
                        // ignore: deprecated_member_use
                        .display1
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Calle Saint #", 
                    style:  TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: size.width * .6,
                    child: Text(
                      "Arequipa, Arequipa "
                    ),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
  
}