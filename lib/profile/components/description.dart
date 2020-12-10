import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Farmacia Pepito",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.blue, fontWeight: FontWeight.normal,fontSize: 28),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Direccion\n"),
                    TextSpan(
                      text: "Avenida Brasil #321",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.blue, fontWeight: FontWeight.w300,fontSize: 18),
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
                          color: Colors.blue, fontWeight: FontWeight.w300,fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              /*Expanded(
                  child: Image.asset(
                    "assets/images/phar.png",
                    fit: BoxFit.fill,
                  ),
              )*/
            ],
          )
        ],
      ),
    );
  }
}