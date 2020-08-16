import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final countryName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        'Name',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w800
        ),
      ),
    );

    final countryInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        'TotalCases',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400
        ),
      ),
    );

    final countryDetails = Column(
      children: <Widget>[
        countryName,
        countryInfo
      ],
    );

    final countryFlag = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      child: CircleAvatar(
        radius: 40.0,
        backgroundImage: NetworkImage("https://www.countryflags.io/be/flat/64.png"),
      ),
    );

    return Row(
      children: <Widget>[
        countryFlag,
        countryDetails
      ],
    );
  }
}