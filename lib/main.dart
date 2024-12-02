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
  List<int> lista = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
        // body: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Column(
        //       children: [
        //         for(var i in lista)
        //           Container(
        //             alignment: Alignment.center,
        //             color: Colors.pinkAccent,
        //             width: double.infinity,
        //             height: 100,
        //             margin: EdgeInsets.only(bottom: 8),
        //             child: Text('$i'),
        //           )
        //       ],
        //     ),
        //   ),
        // ),
        // Versione compatta di quella sopra
        body: SizedBox(
          height: 100,
          child: ListView(
            //scrollDirection: Axis.horizontal, se questo è attivo non può essere
            // attivo anche width: double.infinity in quanto avrei elementi di
            // largezza infinita in una lista di largezza infinita. Per farlo devo
            // rendere finita la width del container
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              children: [
                for (var i in lista)
                  Container(
                    alignment: Alignment.center,
                    color: Colors.pinkAccent,
                    //height: 100,
                    //width: double.infinity,
                    width: 100,
                    height: double.infinity,
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('$i'),
                  ),
              ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
  }
}
