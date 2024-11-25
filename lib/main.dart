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
      body: Column(
        children: [
          // Box con limiti specifici
          ConstrainedBox(
            //constraints: BoxConstraints(minHeight: 50, minWidth: 50), // determina il le dimensioni minime
            constraints: BoxConstraints(maxHeight: 50, maxWidth: 50), // determina le dimensioni massime
            child: Container(height: 500,color: Colors.red,),
          ),
          // SizedBox usata per cose molto semplici
          /*const SizedBox(
            height: 100,
            width: double.infinity,
          ),*/
          // Expanded si espando occupando tutto la spazio disponibile
          //Expanded(child: Text('Ciao')),
          /*Expanded(
              child: Container(
                color: Colors.green,
                alignment: Alignment.bottomCenter,
                child: const Text('ciao'),
          )),*/
          // Container usato per cose più complesse e versatili
          Container(
            height: 200,
            color: Colors.orange,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
