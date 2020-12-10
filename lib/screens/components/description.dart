import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      child: Text(
        "Horario de atencion de la farmacia seleccionada u otra informacion, ademas puede contenr ",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}