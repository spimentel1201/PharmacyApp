import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 140),
      /*child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        ],
      ),*/
      child: Container(
        height:120,
        width:120,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 80,
        ),
      ),
    );
  }
}