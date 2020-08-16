import 'package:flutter/material.dart';

import 'covid_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid App',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: CovidApp()
    );
  }
}