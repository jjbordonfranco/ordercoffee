import 'package:flutter/material.dart';
import 'package:ordercoffee/src/widgets/botones_desplazables.dart';
import 'package:ordercoffee/src/widgets/cabecera.dart';

import 'package:ordercoffee/src/widgets/fondo_pantalla.dart';
import 'package:ordercoffee/src/widgets/top_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
          child: Stack(
            children: <Widget> [
              FondoPantalla(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TopAppBar(),
                  Header(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: BotonesDesplazables(),
                  ),
                  ListaArticulos(),
                ],
              )
            ] 
          ),
       ),
    );
  }
}

class ListaArticulos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          SizedBox(width: 20.0),
          imagenRedondeada('assets/capuccino.jpeg'),
          SizedBox(width:10.0),
          producto('Expresso'),
          Expanded(
            flex:1, 
            child: 
              Container(color: Colors.white,)
          ),
          cantidadProducto(),
          SizedBox(width:20.0),
        ],
      ),
    );
    }

  //iconos para seleccionar la cantidad del producto
  Widget cantidadProducto(){
    return Row(
      children: <Widget>[
        SizedBox( //dibuja botón "-"
          width: 20.0,
          height: 25.0,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
            color: Colors.grey[300],
            onPressed: (){}, 
            child:  Text("-",textAlign: TextAlign.right,style: TextStyle(color: Colors.grey),)  //Center alinea texto en vertical
          ),
        ),
        Container(
          width: 25.0,
          height: 25.0,
          color: Colors.grey[300],
          child: Center(child: Text("0", textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),)),
        ),
        SizedBox( //dibuja botón "+"
          width: 20.0,
          height: 25.0,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            color: Colors.grey[300],
            onPressed: (){}, 
            child:  Text("+",textAlign: TextAlign.right,style: TextStyle(color: Colors.grey),),  //Center alinea texto en vertical
          ),
        ),
      ],
    );
  }


  Widget imagenRedondeada(String enlace){
    return CircleAvatar(
          radius: 15.0,
          backgroundImage:   AssetImage(enlace),
        );
  }

  Widget producto(String descripcion){
    return Column(
      children: <Widget>[
        Text(descripcion),
        SizedBox(height:5.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: <Widget>[
            icono('S', true),
            icono('M', false),
            icono('L', false),
          ],
        ),
      ],
    );
  }

  Widget icono(String texto, bool seleccionado){
    return Container(
      width: 20.0,
      decoration: BoxDecoration(
        color: seleccionado ? Colors.grey : Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey)
      ),
      child: Text('$texto', textAlign: TextAlign.center, style: TextStyle(fontSize:10, color: seleccionado ? Colors.white : Colors.black38)),
    );

  }
}

//esta lista se puede utilizar para incluir en children en un ListView. El ListView no se puede incluir en un Column.
// List<Widget> _botonesDesplazables(){
//     List<Widget> botones = [];

//     for (var i = 0; i < 10; i++) {
//       botones.add(
//         Column(
//           children: <Widget>[
//            _dibujaBoton('All'),
//           ],
//         ),
 
//       );
//     }
//     return botones;
// }

