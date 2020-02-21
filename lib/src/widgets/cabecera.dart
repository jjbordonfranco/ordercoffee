import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 30.0),
        Text('Order Coffee', style: TextStyle(fontWeight:FontWeight.bold, fontSize:20)),
      ],
    );
    // return Container(
    //   //Muestra un texto en cabecera con un espacio de separación por todos sus lados
    //   padding: EdgeInsets.all(5.00),
    //   child:Text('Order Coffee', style: TextStyle(fontWeight:FontWeight.bold, fontSize:20))
    // );
  }
}
