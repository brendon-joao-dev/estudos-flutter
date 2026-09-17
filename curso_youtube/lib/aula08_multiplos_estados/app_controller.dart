import 'package:flutter/material.dart';

// Controlador de estados pra aplicação
// Classe para gerenciar e notificar Widgets sobre estados
class AppController extends ChangeNotifier {
  // Design Pattern: Singleton - Instanciar uma classe estática dentro
  // dela mesmo para usar uma instância única
  static AppController instance = AppController();

  bool isDarkTheme = false;
  void changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
