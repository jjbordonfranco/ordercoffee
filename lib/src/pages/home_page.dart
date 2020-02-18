import 'package:flutter/material.dart';
import 'package:ordercoffee/src/widgets/botones_desplazables.dart';
import 'package:ordercoffee/src/widgets/cabecera.dart';

import 'package:ordercoffee/src/widgets/fondo_pantalla.dart';
import 'package:ordercoffee/src/widgets/top_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
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
              ],
              )
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

