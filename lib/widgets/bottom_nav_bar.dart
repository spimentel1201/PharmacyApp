import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottonNavItem(
            title: "Inicio",
            svgSrc: "assets/images/home-page.svg",
          ),
          BottonNavItem(
            title: "Ubicacion",
            svgSrc: "assets/images/home-page.svg",
            isActive: true,
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
