import 'package:flutter/material.dart';

class FondoPantalla extends StatelessWidget {
  const FondoPantalla({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Stack(
          children: <Widget>[
            fondoPrincipal(),
            // fondoBlanco(size),
            fondoGris(size),
          ],
    );
  }
}

fondoGris(Size size) {
  return Positioned(
    left: 16,
    top: 10,
    child: Container(
    width: size.width * 0.9,
    height: size.height * 0.8,
    decoration: BoxDecoration(
      color: Color.fromRGBO(245, 245, 245, 1.00),
      borderRadius: BorderRadius.circular(30),
    ),

    ),
  );
}

fondoBlanco(Size size) {
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

