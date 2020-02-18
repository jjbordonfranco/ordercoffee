import 'package:flutter/material.dart';

class BotonesDesplazables extends StatefulWidget{
  const BotonesDesplazables({Key key}) : super(key : key);

  @override
  _BotonesDesplazablesState createState() => _BotonesDesplazablesState();
}

class _BotonesDesplazablesState extends State<BotonesDesplazables> {
  List<bool> presionado = [true,false,false,false];

  @override
  Widget build(BuildContext context) {
  
    return Row(
      children: <Widget>[
        SizedBox(width: 15.0),
        _dibujaBoton('All',0),
        SizedBox(width: 5.0),
        _dibujaBoton('Coffee',1),
        SizedBox(width: 5.0),
        _dibujaBoton('Tea',2),
        SizedBox(width: 5.0),
        _dibujaBoton('Juice',3),
      ],
    );
  }

  Widget _dibujaBoton(String texto, int pos) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(color: Colors.grey)
      ),
      textColor: presionado[pos] ? Colors.white: Colors.grey,
      child: Text(texto),
        // color: Colors.transparent,
      color: presionado[pos] ? Colors.grey : Colors.white,
      // color: Colors.white,
      onPressed: (){
        setState(() {
          for (var i=0; i<4; i++) {
            if (i==pos)  
              presionado[pos] = true;
            else
              presionado[i]=false;
          }
        });
      },
    );


  }
}

