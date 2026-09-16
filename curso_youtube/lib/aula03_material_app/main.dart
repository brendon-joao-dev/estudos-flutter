import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(title: "Eu estou dentro de um Material App"));
}

// StatelessWidget serve para criar Widgets que não mudam de estado
class AppWidget extends StatelessWidget {
  // Declaração de uma propriedade
  final String title;

  // Criação do construtor da classe
  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // MaterialApp é o Widget base de qualquer aplicação em flutter 
    // pois permite várias configurações genéricas pro aplicativo
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