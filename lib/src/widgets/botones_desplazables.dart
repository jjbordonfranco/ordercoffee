import 'package:flutter/material.dart';

class BotonesDesplazables extends StatelessWidget{
  const BotonesDesplazables({Key key}) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
  
    return Row(
      children: <Widget>[
        SizedBox(width: 15.0),
        _dibujaBoton('All'),
        SizedBox(width: 5.0),
        _dibujaBoton('Coffee'),
        SizedBox(width: 5.0),
        _dibujaBoton('Tea'),
        SizedBox(width: 5.0),
        _dibujaBoton('Juice'),
      ],
    );
  }

  Widget _dibujaBoton(String texto) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(color: Colors.grey)
      ),
      textColor: Colors.grey,
      child: Text(texto),
        // color: Colors.transparent,
      color: Colors.white,
      onPressed: (){},
    );


  }
}

