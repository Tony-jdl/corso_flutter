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
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  Map<int, String> listaMap = {
    1: 'https://i.pravatar.cc/150?img=12',
    2: 'https://i.pravatar.cc/150?img=24',
    3: 'https://i.pravatar.cc/150?img=25',
    4: 'https://i.pravatar.cc/150?img=68',
    5: 'https://i.pravatar.cc/150?img=12',
    6: 'https://i.pravatar.cc/150?img=24',
    7: 'https://i.pravatar.cc/150?img=25',
    8: 'https://i.pravatar.cc/150?img=68',
    9: 'https://i.pravatar.cc/150?img=12',
    10: 'https://i.pravatar.cc/150?img=24',
    11: 'https://i.pravatar.cc/150?img=25',
    12: 'https://i.pravatar.cc/150?img=68',
  };
  Map<int, Map<String, String>> listaMap2 = {
    1: {'Luca Rossi': 'https://i.pravatar.cc/150?img=12'},
    2: {'Rosa Verdi': 'https://i.pravatar.cc/150?img=24'},
    3: {'Rossa Gialli': 'https://i.pravatar.cc/150?img=25'},
    4: {'Mario Blu': 'https://i.pravatar.cc/150?img=68'},
    5: {'Luca Rossi': 'https://i.pravatar.cc/150?img=12'},
    6: {'Rosa Verdi': 'https://i.pravatar.cc/150?img=24'},
    7: {'Rossa Gialli': 'https://i.pravatar.cc/150?img=25'},
    8: {'Mario Blu': 'https://i.pravatar.cc/150?img=68'},
  };

  String src = 'https://i.pravatar.cc/150?img=68';

  void _incrementCounter() {
    setState(() {});
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
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          for (var i in listaMap.keys)
            GridTile(
                header: Container(
                  color: Colors.white38,
                  child: const Text('Ciao'),
                ),
                footer: Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.bottomRight,
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                child: Image.network(
                  src,
                  fit: BoxFit.cover,
                ))
        ],
      ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ListView(
      //     children: [
      //       for (var i in listaMap.keys)
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: ListTile(
      //             tileColor: Colors.grey,
      //             trailing: const Icon(Icons.drag_handle),
      //             leading: CircleAvatar(
      //               radius: 30,
      //               backgroundImage: NetworkImage('${listaMap[i]}'),
      //             ),
      //             title: const Text('Luca Rossi'),
      //             subtitle: const Text('Ciao sono sempre io'),
      //           ),
      //         ),
      // Container(
      //   margin: const EdgeInsets.only(bottom: 8),
      //   height: 100,
      //   color: Colors.grey,
      //   alignment: Alignment.center,
      //   child: Row(
      //     children: [
      //       Image.network('${listaMap[i]}'),
      //       const Column(
      //         children: [
      //           Text('Luca Rossi'),
      //           Text('Ciao sono un testo di prova')
      //         ]
      //       ),
      //     ],
      //   ),
      // )
      // ],
      // ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
