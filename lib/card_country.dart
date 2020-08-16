import 'package:flutter/material.dart';
import 'floating_action_button_add_fav.dart';
import 'description_country.dart';

class CardCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 120.0,
      width: 400.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonAddFav()
      ],
    );
  }
}
