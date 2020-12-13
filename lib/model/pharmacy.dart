//import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Pharmacy{
  String _usuario;
  String _password;
  String _nombre;
  String _direccion;
  String _descripcion;
  String _horario;
  /*List<String> _informacion;
  List<String> _medicamentos;
  List<String> _ubicacion;*/
  String _valoracion;

  Pharmacy(this._usuario,this._password,this._nombre,this._direccion,this._horario,this._valoracion,this._descripcion);
  Pharmacy.map(dynamic obj){
    //this._usuario=obj[''];
    this._password=obj['Password'];
    this._nombre=obj['Dombre'];
    this._direccion=obj['Direccion'];
    this._descripcion=obj['Descripcion'];
    this._horario=obj['Horario'];
    this._usuario=obj[''];
    this._valoracion=obj['Valoracion'];
  }

  String get id => _usuario;
  String get password => _password;
  String get name => _nombre;
  String get direccion => _direccion;
  String get descripcion => _descripcion;
  String get horario => _horario;
  String get valoracion => _valoracion;

  Pharmacy.fromSnapShot(DataSnapshot snapshot){
    _usuario=snapshot.key;
    _nombre=snapshot.value['Nombre'];
    _direccion=snapshot.value['Direccion'];
    _descripcion=snapshot.value['Descripcion'];
    _valoracion=snapshot.value['Valoracion'];
    _password=snapshot.value['Password'];
    _horario=snapshot.value['Horario'];
  }

}