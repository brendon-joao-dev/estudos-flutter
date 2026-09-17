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
      appBar: AppBar(title: Center(child: Text("Página do contador"))),
      body: Center(
        child: Switch(
          // Chama o atributo "isDarkTheme" como valor do Switch
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            // Quando mudar, chama o método changeTheme
            AppController.instance.changeTheme();
          },
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
