import 'package:flutter/material.dart';

class FondoPantalla extends StatelessWidget {
  const FondoPantalla({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Stack(
          children: <Widget>[
            fondoPrincipal(), //muestra un fondo de color blanco en todo el fondo
            // fondoBlanco(size),
            fondoGris(size), //muestra un fondo gris dimensionado un % de la dimension del dispositivo sobre el fondo principal
          ],
    );
  }
}

fondoGris(Size size) {
  return Positioned(
    left: 16,
    top: 10,
    child: Container( //
    width: size.width * 0.9, //% del ancho del dispositivo
    height: size.height * 0.8, //% del alto del dispositivo
    decoration: BoxDecoration(
      color: Color.fromRGBO(245, 245, 245, 1.00),
      borderRadius: BorderRadius.circular(30), //container con bordes redondeados
    ),

    ),
  );
}

fondoBlanco(Size size) {
  //este fondo se utilizaba entre el fondo principal que era gris oscuro en principio, y el fondo gris
  //no lo utilizamos
  return Positioned(
    left: 5,
    top:5,
    child: Container(
    width: size.width * 0.97,
    height: size.height * 0.935,
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 1.00),
      borderRadius: BorderRadius.circular(30)
    ),

    ),
  );
}

fondoPrincipal() {
  return Container(
    // color: Color.fromRGBO(140, 138, 138, 1.00) //fondo gris
    color: Color.fromRGBO(255, 255, 255, 1.00), //fondo blanco
  );
}

