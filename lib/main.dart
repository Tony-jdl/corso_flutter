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
      body: SizedBox(
        height: 420,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          //color: Colors.orange,
          //shadowColor: Colors.red,
          //elevation: 50,
          margin: const EdgeInsets.all(20),
          clipBehavior: Clip.hardEdge, // fa clip dell'immagina (taglia il contenuto in base alla card)
          child: Column(
            children: [
              Image.asset('images/image01.jpg'),
              const Text('Del banale testo'),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=68"),
                ),
                title: Text('Nome Del Tizio'),
                subtitle: Text('Descrizione del tizio'),
                trailing: Icon(Icons.favorite),
              )
            ],
          ),
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
