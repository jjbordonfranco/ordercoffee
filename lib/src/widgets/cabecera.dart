import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.00),
      child:Text('Order Coffee', style: TextStyle(fontWeight:FontWeight.bold, fontSize:20))
    );
  }
}
