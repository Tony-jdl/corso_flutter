import 'package:corso_flutter/RouteGenerator.dart';
import 'package:corso_flutter/screens/PrimaPagina.dart';
import 'package:corso_flutter/screens/SecondaPagina.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const data = 'data';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NotApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
      ),
      home: const MyHomePage(),
      onGenerateRoute: RouteGenerator.generateRoute, // generatore dinamico route
      // routes: {
      //   '/prima': (context) => Primapagina(),
      //   '/seconda': (context) => Secondapagina(data: data),
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Primapagina(),
    );
  }
}
