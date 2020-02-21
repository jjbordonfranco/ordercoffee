import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraNavegacion extends StatelessWidget {
  const BarraNavegacion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: <Widget>[
            SizedBox(width: 30.0,),
            Stack(
              children: <Widget>[
                IconButton(
                    icon: Icon(  FontAwesomeIcons.home),
                    iconSize: 18.0,
                    color: Colors.grey,  
                    onPressed: () {},
                  ),
                Positioned(left:10,top:37,child: Text('Home',style: TextStyle(fontSize: 10.0, color: Colors.grey))),
              ],
            ),
            Spacer(),  //introduce un espacio flexible entre dos widgets
            Stack(
              children: <Widget>[
                IconButton(
                  icon: Icon( FontAwesomeIcons.shoppingBag),
                  iconSize: 20.0,
                  color: Colors.grey,  
                  onPressed: () {},
                ),
              Positioned(left:12,top:37,child: Text('Bag',style: TextStyle(fontSize: 10.0, color: Colors.grey))),
              ],
            ),
            Spacer(),
            Stack(
              children:<Widget>[ 
                IconButton(
                  icon: Icon( FontAwesomeIcons.userAlt),
                  iconSize: 20.0,
                  color: Colors.grey,  
                  onPressed: () {},
            ),
            Positioned(left:10,top:37,child: Text('Profile',style: TextStyle(fontSize: 10.0, color: Colors.grey))),
            ],
            ),
            SizedBox(width: 30.0,),
          ],
        )
      );
  }
}

