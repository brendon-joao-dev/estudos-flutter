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
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Página do contador"))),
      body: Container(
        height: 250,
        width: 250,
        color: Colors.black,
        // Se o container roxo fosse filho direto do outro container eles
        // iriam se sobrepor pois ambos usariam o mesmo Render
        // Já usando um elemento Align (e outros elementos de alinhamento)
        // resolvemos esse problema já que eles usam renderizadores diferentes
        // por estenderem da classe SingleChildRenderObjectWidget
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 125,
            width: 125,
            color: Colors.purple,
          ),
        )
      ) ,
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
