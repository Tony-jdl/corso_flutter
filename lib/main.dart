import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
        // primarySwatch: Colors.indigo,
        // textTheme: const TextTheme(
        //   bodyMedium: TextStyle(
        //       fontWeight: FontWeight.w400,
        //       fontSize: 50.0,
        //       fontStyle: FontStyle.italic,
        //       color: Colors.pink),
        // ),
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.teal
        // ),
        // scaffoldBackgroundColor: Colors.deepPurpleAccent,
        // brightness: Brightness.dark
        // primarySwatch: Colors.indigo, // insieme di colori predefiniti
        // colorScheme: ColorScheme.fromSwatch(
        //   primarySwatch: Colors.orange,
        //   accentColor: Colors.teal,
        //   backgroundColor: Colors.pinkAccent,
        // ), // schema colore
      ),
      // darkTheme: ThemeData.dark(), // temadark
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
  // final lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
         backgroundColor: Theme.of(context).colorScheme.primary, // in questo modo ovrascrivo il tema applicato sopra in ThemeData()
      ),
      body: const Center(
        child: Text('Google Fonts'),
      ),
    );
  }
}
