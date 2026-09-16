import 'package:flutter/material.dart';

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
    // Scaffold e Material são Widgets usados para ter um app base
    return Scaffold(
      // Dentro do Scaffold é recomendado que os itens sejam criados na ordem
      // que aparecem na tela para manter consistência e facilitar manutenção

      // AppBar seria um equivalente ao header do HTML, uma barra no alto da tela
      appBar: AppBar(title: Center(child: Text("Página do contador"))),
      // Body também como o body do HTML, onde fica a construção do app
      body: Center(
        child: GestureDetector(
          child: Text(
            "Eu sou um contador, clique em mim: $counter",
            style: TextStyle(fontSize: 30),
          ),
          onTap: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
      // Além dos elementos acima, existe várias outras argumentos que podem ser
      // passados pro Widget Scaffold para gerar elementos já formatados no app

      // floatingActionButton como indica o nome gera um botão de ação flutuante
      floatingActionButton: FloatingActionButton(
        // Icons assim como Colors é uma classe q funciona como dicionário de elementos padrão
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
