import 'package:flutter/material.dart';

class PharmacyDetails extends StatelessWidget {
  const PharmacyDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Nombre de Farmacia ##",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Direccion\n"),
                    TextSpan(
                      text: "Direccion de Farmacia",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              /*Expanded(
                child: Hero(
                  tag: null,
                  child: Image.asset(
                    "assets/images/phar.png",
                    fit: BoxFit.fill,
                  ),
                ),
              )*/
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Ubicacion\n"),
                    TextSpan(
                      text: "Lugar donde Esta",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Image.asset(
                    "assets/images/phar.png",
                    fit: BoxFit.fill,
                  ),
              )
            ],
          )
        ],
      ),
    );
  }
}