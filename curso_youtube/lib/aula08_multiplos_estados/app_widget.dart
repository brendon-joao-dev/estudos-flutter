import 'package:flutter/material.dart';

import 'package:curso_youtube/aula08_multiplos_estados/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // Faz o AppWidget ficar escutando o AppController
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            // Usando operador ternário para definir tema
            brightness: AppController.instance.isDarkTheme
                // Se isDarkTheme
                ? Brightness.dark
                // Caso contrário
                : Brightness.light,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
