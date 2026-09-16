import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(title: "Eu fui escrito numa variável"));
}

// StatelessWidget serve para criar Widgets que não mudam de estado
class AppWidget extends StatelessWidget {
  // Declaração de uma propriedade
  final String title;

  // Criação do construtor da classe
  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 50.0),
        ),
      ),
    );
  }
}