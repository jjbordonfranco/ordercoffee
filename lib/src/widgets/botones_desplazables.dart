import 'package:flutter/material.dart';

class BotonesDesplazables extends StatefulWidget{
  const BotonesDesplazables({Key key}) : super(key : key);

  @override
  _BotonesDesplazablesState createState() => _BotonesDesplazablesState();
}

class _BotonesDesplazablesState extends State<BotonesDesplazables> {
  List<bool> presionado = [true,false,false,false,false,false,false,false];
  @override
  void initState() { 
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
  
    return Row(
      children: <Widget>[
        SizedBox(width: 30.0), //separador horizontal para los botones
        _dibujaBoton('All',0),
        SizedBox(width: 5.0),
        _dibujaBoton('Coffee',1),
        SizedBox(width: 5.0),
        _dibujaBoton('Tea',2),
        SizedBox(width: 5.0),
        _dibujaBoton('Juice',3),
        SizedBox(width: 15.0), //separador horizontal para los botones
        _dibujaBoton('All2',4),
        SizedBox(width: 5.0),
        _dibujaBoton('Coffee2',5),
        SizedBox(width: 5.0),
        _dibujaBoton('Tea2',6),
        SizedBox(width: 5.0),
        _dibujaBoton('Juice2',7),
      ],
    );
  }

  Widget _dibujaBoton(String texto, int pos) {
    //muestra un botón redondo con un texto. presionado[pos] es un booleano que indica si el botón
    //en la posicion pos se presiona. Si es así cambia su apariencia y la de los botones no presionados
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0), //borde del botón redondeado
        side: BorderSide(color: Colors.grey)  //color del borde del botón gris
      ),
      textColor: presionado[pos] ? Colors.white: Colors.grey, //texto en botón presionado blanco. boton no presionado gris
      child: Text(texto),  //texto a mostrar
        // color: Colors.transparent,
      color: presionado[pos] ? Colors.grey : Colors.white, //color de fondo del botón gris si presionado y blanco si no
      // color: Colors.white,
      onPressed: (){  // cambia estado del botón que se presiona a true y a false del resto
        setState(() {
          for (var i=0; i<8; i++) {
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

