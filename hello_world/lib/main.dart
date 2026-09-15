import 'package:flutter/material.dart';

main() {
  runApp(Container(
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
    color: Colors.white70
  ));
}