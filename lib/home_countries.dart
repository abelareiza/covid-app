import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'description_country.dart';
import 'package:intl/intl.dart';

var formatter = NumberFormat('##,###,#00', 'fr');

class HomeCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Country>> _getCountries() async {
    var data = await http.get("https://api.covid19api.com/summary");
    var jsonData = json.decode(data.body);

    List<Country> countries = [];

    for (var x in jsonData["Countries"]) {
      Country country = Country(x["Country"], x["CountryCode"],
          x["TotalConfirmed"], x["TotalDeaths"], x["TotalRecovered"]);
      countries.add(country);
    }
    return countries;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFf2efeb)),
        child: FutureBuilder(
            future: _getCountries(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                      child: CircularProgressIndicator(
                          backgroundColor: Color(0xFF41444b),
                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFf6ac07)
                          )
                      )
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CountryCard(
                        snapshot.data[index].name,
                        formatter
                            .format(snapshot.data[index].totalConfirmed)
                            .toString(),
                        snapshot.data[index].countryCode.toLowerCase());
                  },
                );
              }
            }),
      ),
    );
  }
}

class Country {
  final String name;
  final String countryCode;
  final int totalConfirmed;
  final int totalDeaths;
  final int totalRecovered;

  Country(this.name, this.countryCode, this.totalConfirmed, this.totalDeaths,
      this.totalRecovered);
}
