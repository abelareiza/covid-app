import 'package:flutter/material.dart';
import 'home_countries.dart';
import 'search_countries.dart';
import 'fav_countries.dart';

class CovidApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CovidApp();
  }
}

class _CovidApp extends State<CovidApp> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeCountries(),
    SearchCountries(),
    FavCountries()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white, primaryColor: Colors.grey),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.public),
              title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections_bookmark),
                title: Text("")
            )
          ],
        ),
      ),
    );
  }
}