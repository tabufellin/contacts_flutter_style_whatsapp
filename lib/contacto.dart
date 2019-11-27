import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Contacto extends StatelessWidget {

  final String nameContact;
  final int howMuchTime;
  final String pathImage;
  String colorBkIcon2 = "0xFFD13333";
  String colorBkIcon1 = "0xFFEF0F0F";
  final String colorIcon = "0xFFFFFFFF";


  Contacto(this.nameContact, this.howMuchTime, this.pathImage);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          bottom: 10.0,
      ),

      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle, // esto le da la forma de circulo
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          )
      ),

    );

    final informacionUsuario = Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 10.0,
          right: 50.0,
        ),
        child: Container(
          padding: EdgeInsets.only(
            bottom: 40.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                nameContact,
                style: TextStyle(
                    fontFamily: "Lato-Light",
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                  "Lo conoces hace $howMuchTime años",
                  style: TextStyle(
                      fontFamily: "Lato-Light",
                      fontSize: 15.0,
                      color: Colors.black54
                  )
              ),


            ],
          ),
        )


    );

    InkWell buttonMessage = InkWell(
      onTap: () {
        colorBkIcon1 = colorIcon;
        colorBkIcon2 = colorIcon;

      },
      child: Container(
          margin: EdgeInsets.only(
              left: 20.0,
              right: 20.0
          ),
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                  colors: [
                    Color(int.parse(colorBkIcon1)),
                    Color(int.parse(colorBkIcon2))
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp
              )
          ),
          child: Center(
              child: Icon(
                  Icons.email
              ),

          )

      ),
    );
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          photo,
          informacionUsuario,
          buttonMessage
        ],
      ),
      decoration: BoxDecoration (
        border: Border.all(
          width: 1
        )
      ),
    );
  }
}