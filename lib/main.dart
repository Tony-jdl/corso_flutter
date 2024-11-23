import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'NotApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(widget.title),
        centerTitle: true,
        // Lista di icone
        actions: [
          const Icon(Icons.note_alt_outlined),
          IconButton(
              onPressed: () => print('IconButton: timeline'),
              icon: const Icon(Icons.timeline))
        ],
        // Colore del font
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        // Ombreggiatura
        elevation: 10,
        shadowColor: Colors.grey,
        // Altezza Navbar
        toolbarHeight: 60,
      ),
      body: Container(
        color: Colors.blue,
        //child: Row(
          // textDirection: TextDirection.ltr, // direziona il contenuto da left a right o viceversa
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.blueGrey,
              child: const Column(
                // dimensione della colonna, si può adattare al contenuto
                // mainAxisSize: MainAxisSize.min,
                // mainAxisSize: MainAxisSize.max,
                // definisce l'allineamento del contenuto secondo i criteri classici
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.timeline),
                  Icon(Icons.ac_unit_outlined),
                  Icon(Icons.account_balance),
              ],
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: const Column(
                // dimensione della colonna, si può adattare al contenuto
                // mainAxisSize: MainAxisSize.min,
                // mainAxisSize: MainAxisSize.max,
                // definisce l'allineamento del contenuto secondo i criteri classici
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.timeline),
                  Icon(Icons.ac_unit_outlined),
                  Icon(Icons.account_balance),
                ],
              ),
            ),
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
