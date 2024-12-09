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
      body: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            backgroundBlendMode: BlendMode.difference,
            gradient: LinearGradient(
                colors: [
                  Colors.orange,
                  Colors.green
                ]
            )
            // image: DecorationImage(image: AssetImage('images/image01.jpg'))
          ),

      // ClipRRect(
      //   borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        // ClipOval( // ovalizza il widget

        // Transform
          // .scale(
          //    scale: 0.7,

          // .rotate( // ruota il widget
          //   angle: 35,
        child: Container(
          height: 300,
          // color: Colors.blue,
        ),
      // Opacity(
      //   opacity: 0.2,
      //   child: Container(
      //     height: 300,
      //     color: Colors.blue,
      //   ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
