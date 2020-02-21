import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ordercoffee/src/widgets/barra_navegacion.dart';
import 'package:ordercoffee/src/widgets/botones_desplazables.dart';
import 'package:ordercoffee/src/widgets/cabecera.dart';

import 'package:ordercoffee/src/widgets/fondo_pantalla.dart';
import 'package:ordercoffee/src/widgets/lista_articulos.dart';
import 'package:ordercoffee/src/widgets/top_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Scaffold(
       body: SafeArea(  //No dibuja zona superior del dispositivo segun el sistema operativo 
          child: Stack(  //permite dibujar widgets apilados
            children: <Widget> [
              FondoPantalla(), //dibuja fondo principal blanco con fondo gris encima
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:20.0),
                  TopAppBar(),  //barra de navegacion superior
                  Header(),  //Titulo en cabecera de pantalla
                  SizedBox(height: 7.0),
                  SingleChildScrollView(  // iconos desplazables en horizontal
                    scrollDirection: Axis.horizontal,
                    child: BotonesDesplazables(),
                  ),
                  Container(  //muestra todos los artículos desplazables en vertical
                    height: size.height * 0.55, //si no introducimos ListView en un containes con height da error al most
                    child: ListView(
                      children: <Widget>[
                        ListaArticulos(),
                      ],
                      ),
                  ),
                  SizedBox(height:10.0),
                  BarraNavegacion(),
                ],
              ),
            ] 
          ),
       ),
    );
  }
}

