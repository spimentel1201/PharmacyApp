/*import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'package:pharmacyapp/model/pharmacy.dart';
import 'package:pharmacyapp/screens/details_screen.dart';

class Listpharmacy extends StatefulWidget {
  @override
  _ListpharmacyState createState() => _ListpharmacyState();
}

final pharmacyReference = FirebaseDatabase.instance.reference().child('Farmacias');

class _ListpharmacyState extends State<Listpharmacy> {
  
  List<Pharmacy> farmacias;
  //StreamSubscription<Event> _onProductAddedSusc
  
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmacia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Información de Farmacia'),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: farmacias.length,
            padding: EdgeInsets.only(top:12.0),
            itemBuilder: (context,position){
              return Column(
                children: <Widget>[
                  Divider(height: 7.0),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                          title: Text('${farmacias[position].name}',style: TextStyle(color: Colors.blueAccent,fontSize: 21.0) ,),
                          subtitle: Text('${farmacias[position].descripcion}',style: TextStyle(color: Colors.blueAccent,fontSize: 21.0),),
                          onTap: () => _navigateToProductInformation(context,farmacias[position])
                        ), 
                      )
                    ],
                  )
                ],
              )
            }
          ),
        ),
      )
    )
  }
  
}

void _navigateToProductInformation(BuildContext context, Pharmacy farmacia) async{
  await Navigator.push(context,
      MaterialPageRoute(builder: (context) => DetailScreen())
  );
}*/