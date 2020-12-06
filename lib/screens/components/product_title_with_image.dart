import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
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
            "Farmacia #ASD#",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
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
                          color: Colors.white, fontWeight: FontWeight.bold),
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
          )
        ],
      ),
    );
  }
}