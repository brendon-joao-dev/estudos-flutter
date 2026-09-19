import 'package:flutter/material.dart';

import 'package:curso_youtube/aula08_multiplos_estados/app_controller.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Página do contador")),
        actions: [CustomSwitch()],
      ),
      // É necessário usar um elemento como SizedBox ou Container como pai
      // da Column pois ela não possui atributos de controle de tamanho
      body: SizedBox(
        // Define todo o espaço horizontal
        width: double.infinity,
        // Define todo o espaço vertical
        height: double.infinity,
        // Como o nome sugere, ordena os widgets filhos em coluna, verticalmente
        child: Column(
          // Alinhamento principal
          mainAxisAlignment: MainAxisAlignment.center,
          // Alinhamento de cada elemento
          crossAxisAlignment: CrossAxisAlignment.center,
          // Array de elementos na coluna
          children: [
            Text(
              "Eu sou um contador, clique em mim: $counter",
              style: TextStyle(fontSize: 30),
            ),
            CustomSwitch(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

// A componentização serve para deixar o código mais organizado e legível
// mas também tornar ele reutilizável se necessário

// Transformando o Switch usado na aula anterior em um Widget separado
class CustomSwitch extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
