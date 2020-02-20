
import 'package:flutter/material.dart';

class ListaArticulos extends StatelessWidget {
  const ListaArticulos({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          listaArticulo('Expresso'),
          listaArticulo('Americano'),
          listaArticulo('Mocchiato'),
          listaArticulo('Borbone'),
          listaArticulo('Descafeinado'),
          listaArticulo('Irlandes'),
          listaArticulo('Capuccino'),
          listaArticulo('Expresso'),
          listaArticulo('Americano'),
          listaArticulo('Mocchiato'),
          listaArticulo('Borbone'),
          listaArticulo('Descafeinado'),
          listaArticulo('Irlandes'),
          listaArticulo('Capuccino'),
        ],
      )
    );
  }
}

Widget listaArticulo(String articulo) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 45.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          SizedBox(width: 20.0),
          imagenRedondeada('assets/$articulo.jpeg'),
          SizedBox(width:10.0),
          producto(articulo),
          Expanded(
            flex:1, 
            child: 
              Container(color: Colors.white,)
          ),
          cantidadProducto(),
          SizedBox(width:20.0),
        ],
      ),
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
