
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Muestra icono "<" 
      child: Container(
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: <Widget>[
            SizedBox(width:10.0),
            IconButton(icon: Icon(FontAwesomeIcons.angleLeft), onPressed: null)
          ],),
      )
    );
  }
}