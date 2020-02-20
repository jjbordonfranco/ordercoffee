import 'package:flutter/material.dart';
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
    return Scaffold(
       body: SafeArea(  //No dibuja zona superior del dispositivo segun el sistema operativo 
          child: Stack(  //permite dibujar widgets apilados
            children: <Widget> [
              FondoPantalla(), //dibuja fondo principal blanco con fondo gris encima
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TopAppBar(),  //barra de navegacion superior
                  Header(),  //Titulo en cabecera de pantalla
                  SingleChildScrollView(  // iconos desplazables en horizontal
                    scrollDirection: Axis.horizontal,
                    child: BotonesDesplazables(),
                  ),
                  Container(  //muestra todos los artículos desplazables en vertical
                    height: 400,
                    child: ListView(
                      children: <Widget>[
                        ListaArticulos(),
                      ],
                      ),
                  ),
                ],
              ),
            ] 
          ),
       ),
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

