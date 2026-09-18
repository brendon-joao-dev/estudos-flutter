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
      body: Center(child: CustomSwitch()),
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
