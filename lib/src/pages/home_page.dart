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
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TopAppBar(),
                    _Header(),
                  ],
                  )
                ),

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

