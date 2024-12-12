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
  // fonte di questi link: https://pravatar.cc/
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

  String testo = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

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
      body: CustomScrollView( // Gli slivers si trovano dentro una CustoScrollView
        slivers: [
          const SliverAppBar(
            // floating: true,  // rende visibile la bar anche dal fondo
            // pinned: true,  // pinna la bar
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 120,
              title: Text('StoCazzo'),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 50,
                  (context, index) {
                    return ListTile(
                      trailing: Icon(Icons.add),
                      title: Text('Ciao $index'),
                    );
                  }
              )
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                  (context, index) {
                    return GridTile(
                      child: Container(
                        height: 100,
                        color: Colors.red,
                        child: Text('$index'),
                      ),
                    );
                  }
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8
              )
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
