
import 'package:flutter/material.dart';

class ListaArticulos extends StatelessWidget {
  const ListaArticulos({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[ //se asigna tipo artículo e imagen (debe llamarse igual en assets) a cada item de la lista
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
    padding: const EdgeInsets.all(8.0), //separa un item de la lista (datos articulo) de otro
    child: Container(
      height: 45.0,
      color: Colors.white, //el color de fondo del item articulo
      child: Row(
        children: <Widget>[
          SizedBox(width: 20.0),
          imagenRedondeada('assets/$articulo.jpeg'), //muestra la imagen del artículo - icono articulo
          SizedBox(width:10.0),
          producto(articulo), //muestra nombre del producto e iconos categorias: S/M/L
          Expanded( // crea una zona vacía entre los elementos anteriores y los siguientes. Se utiliza para mostrar seleccion de cantidad al final del row
            flex:1, 
            child: 
              Container(color: Colors.white,)
          ),
          cantidadProducto(), // botones -/+ y cantidad a solicitar
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
        Container(  //muestra la cantidad
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
    //muestra la imagen redondeada
    return CircleAvatar(
          radius: 15.0,
          backgroundImage:   AssetImage(enlace),
        );
  }

  Widget producto(String descripcion){
  //muestra nombre del producto (descripcion) e iconos categorias: S/M/L
    return Column(
      children: <Widget>[
        Text(descripcion),
        SizedBox(height:5.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: <Widget>[
            icono('S', true), //muestra un icono redondeado con un texto centrado en horizontal y vertical
            icono('M', false),
            icono('L', false),
          ],
        ),
      ],
    );
  }

  Widget icono(String texto, bool seleccionado){
    //muestra un icono redondeado con un texto centrado en horizontal y vertical
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
