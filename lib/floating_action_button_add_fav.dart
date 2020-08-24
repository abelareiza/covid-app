import 'package:flutter/material.dart';

class FloatingActionButtonAddFav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonAddFav();
  }
}

class _FloatingActionButtonAddFav extends State<FloatingActionButtonAddFav> {
  bool pressed = false;

  void onPressedFav() {
    setState(() {
      pressed = !pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(pressed ? 0xFF5f6caf : 0xFF5b5656),
      mini: true,
      onPressed: onPressedFav,
      child: Icon(pressed ? Icons.bookmark : Icons.bookmark_border),
    );
  }
}