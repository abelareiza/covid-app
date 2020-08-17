import 'package:flutter/material.dart';
import 'floating_action_button_add_fav.dart';

class CountryCard extends StatelessWidget {
  String name;
  String totalCases;

  CountryCard(this.name, this.totalCases);

  @override
  Widget build(BuildContext context) {
    final countryName = Container(
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
      ),
    );

    final countryInfo = Container(
      child: Text(
        totalCases,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
      ),
    );

    final countryDetails = Column(
      children: <Widget>[countryName, countryInfo],
    );

    final countryFlag = Container(
      margin: EdgeInsets.all(10.0),
      child: CircleAvatar(
        radius: 30.0,
        backgroundImage:
            NetworkImage("https://www.countryflags.io/co/flat/64.png"),
      ),
    );

    final countryView = Row(
      children: <Widget>[countryFlag, countryDetails],
    );

    final countryCard = Container(
      height: 90.0,
      width: 400.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child: countryView,
    );

    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[countryCard, FloatingActionButtonAddFav()],
    );
  }
}
