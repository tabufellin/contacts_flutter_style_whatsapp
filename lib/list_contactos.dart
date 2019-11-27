import 'package:flutter/material.dart';
import 'contacto.dart';

class ListContactos extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:   Column(
          children: <Widget>[
            Contacto("Cesar", 4, "asset/img/cesar.jpg"),
            Contacto("Alex", 5, "asset/img/alex.jpg"),
            Contacto("Denise", 5, "asset/img/denise.jpg"),
            Contacto("Byron", 10, "asset/img/byron.jpg"),
            Contacto("Luis", 10, "asset/img/luis.jpg")
          ]

      )

    );


  }

}