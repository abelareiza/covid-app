import 'package:flutter/material.dart';
import 'covid_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(body: CovidApp()), debugShowCheckedModeBanner: false);
  }
}
