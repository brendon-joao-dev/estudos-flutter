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
      home: HomePage(),
    );
  }

}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        // GestureDetector: Detecta clique nos elementos filhos.
        child: GestureDetector(
          child: Text("Eu estou dentro de um estado de um StatefulWidget, contando: $counter"),
          // onTap: O que fazer quando detectar o clique
          onTap: () {
            // Recarrega/define novo estado
            setState(() {
              counter++;
            });
          }
          )
        )
      );
  }
}