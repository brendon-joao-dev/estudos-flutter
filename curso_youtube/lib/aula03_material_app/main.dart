import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(title: "Eu estou dentro de um Material App"));
}

class AppWidget extends StatelessWidget {
  // Declaração de uma propriedade
  final String title;

  // Criação do construtor da classe
  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Container(
        child: Center(
          child: Text(title)),
      ),
    );
  }
}