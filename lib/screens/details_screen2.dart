import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmacyapp/screens/components/body.dart';
import 'package:pharmacyapp/widgets/bottom_nav_bar.dart';

class DetailsScreen2 extends StatelessWidget {

  const DetailsScreen2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Color(0xff64b5f6),
      appBar: buildAppBar(context),
      //bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff64b5f6),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/images/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        /*IconButton(
          icon: SvgPicture.asset("assets/images/back.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/images/back.svg"),
          onPressed: () {},
        ),*/
        SizedBox(width: 20 / 2)
      ],
    );
  }
}