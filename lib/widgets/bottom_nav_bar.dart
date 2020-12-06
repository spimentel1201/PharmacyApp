import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmacyapp/screens/details_screen.dart';
import 'package:pharmacyapp/src/pages/location_page.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 90,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottonNavItem(
            title: "Inicio",
            svgSrc: "assets/images/home-page.svg",
            isActive: true,
          ),
          BottonNavItem(
            title: "Ubicacion",
            svgSrc: "assets/images/location-pin.svg",
            press: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context){
                          return LocationPage();
                      }),
                  );
            },                
            //isActive: true,
          ),
          BottonNavItem(
            title: "Menu",
            svgSrc: "assets/images/home-page.svg",
            press: (){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context){
                                      return DetailsScreen();
                                    }),
                                  );
                                },
          ),
          BottonNavItem(
            title: "Menu",
            svgSrc: "assets/images/home-page.svg",
          ),
        ],
      ),
    );
  }
}

class BottonNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottonNavItem({
    Key key, 
    this.svgSrc, 
    this.title, 
    this.press, 
    this.isActive=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgSrc,color: isActive ? Color(0xFFE68342) : Color(0xFF222B45)),
          //Icon(Icons.home, size: 28.0),
          Text(title, style: TextStyle(color: isActive ? Color(0xFFE68342) : Color(0xFF222B45))),
        ],
      ),
    );
  }
}
