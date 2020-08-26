import 'package:flutter/material.dart';
import 'floating_action_button_add_fav.dart';

class CountryCard extends StatelessWidget {
  String name;
  String totalCases;
  String countryCode;

  CountryCard(this.name, this.totalCases, this.countryCode);

  @override
  Widget build(BuildContext context) {
    final countryName = Container(
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            fontFamily: "Nunito",
            color: Color(0xFF273d66)),
      ),
    );

    final countryInfo = Container(
      child: Text(
        totalCases,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            fontFamily: "Nunito",
            color: Color(0xFF48629b)),
      ),
    );

    final countryDetails = Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[countryName, countryInfo],
    ));

    final countryFlag = Container(
      margin: EdgeInsets.all(13.0),
      child: CircleAvatar(
          radius: 31.0,
          backgroundColor: Color(0xFFF2F2F2),
          child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  'https://flagpedia.net/data/flags/normal/$countryCode.png'
              )
          )
      ),
    );

    final countryView = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[countryFlag, countryDetails],
    );

    final countryCard = Container(
      height: 90.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          shape: BoxShape.rectangle,
          gradient: LinearGradient(
              colors: [Color(0xFFFFFFFF), Color(0xFFF2F2F2)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.05, 0.5]),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color(0xFF828b93),
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ]),
      child: countryView,
    );

    return Stack(
      alignment: Alignment(0.9, 0.05),
      children: <Widget>[countryCard, FloatingActionButtonAddFav()],
    );
  }
}
