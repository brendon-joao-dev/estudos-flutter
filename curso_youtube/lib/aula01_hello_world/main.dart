import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.white70,
    child: Center(
      child: Text(
      "Hello World Flutter!",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.black,
        fontSize: 50.0,
      ),
      ),
    ),
  ));
}