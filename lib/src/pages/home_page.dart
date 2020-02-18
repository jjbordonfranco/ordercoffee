import 'package:flutter/material.dart';

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
                _Header(),
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

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.00),
      child:Text('Order Coffee', style: TextStyle(fontWeight:FontWeight.bold, fontSize:20))
    );
  }
}

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

class BotonesDesplazables extends StatelessWidget{
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

