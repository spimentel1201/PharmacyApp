import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "Descripcion de una Farmacia",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}