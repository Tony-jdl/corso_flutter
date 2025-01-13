import 'package:corso_flutter/screens/PaginaErrore.dart';
import 'package:corso_flutter/screens/PrimaPagina.dart';
import 'package:corso_flutter/screens/SecondaPagina.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/prima':
        return MaterialPageRoute(builder: (context) => Primapagina());
      case '/seconda':
        if (args is String) {
          return MaterialPageRoute(
              builder: (context) => Secondapagina(data: args));
        }
        return MaterialPageRoute(builder: (context) => PaginaErrore());
      default:
        return MaterialPageRoute(builder: (context) => PaginaErrore());
    }
  }
}
