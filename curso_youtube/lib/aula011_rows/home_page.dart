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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Eu sou um contador, clique em mim: $counter",
              style: TextStyle(fontSize: 30),
            ),
            Container(height: 50,),
            CustomSwitch(),
            // Pode se usar um Container com tamanho para dar 
            // espaçamento entre dois elementos específicos
            // se esses não tiverem margin como atributo
            // Também pode se usar spacing no Column ou Row
            // se quiser o mesmo espaçamento entre todos os elementos
            Container(height: 50,),
            // É necessário usar um elemento como SizedBox ou Container
            // como pai (seja direta ou indiretamente) da Row pois ela
            // não possui atributos de controle de tamanho

            // Como o nome sugere, ordena os widgets filhos em linha, horizontalmente
            Row(
              // MainAxisAligment:
              // spaceAround: espaçamento em volta dos widgets
              // spaceBetween: espaçamento entre os widgets
              // spaceEvenly: Espaçamento entre os widgets e das extremidades 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              // Array de elementos na linha
              children: [
                Container(width: 50, height: 50, color: Colors.yellow),
                Container(width: 50, height: 50, color: Colors.yellow),
                Container(width: 50, height: 50, color: Colors.yellow),
                Container(width: 50, height: 50, color: Colors.yellow),
                Container(width: 50, height: 50, color: Colors.yellow),
                Container(width: 50, height: 50, color: Colors.yellow),
                Container(width: 50, height: 50, color: Colors.yellow),
              ],
            ),
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
