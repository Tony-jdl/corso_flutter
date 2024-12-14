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
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onDoubleTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
              print('onDoubleTap');
            },
            child: SizedBox(
              height: 250,
              child: Card(
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(children: [
                  Image.asset(
                    'images/image01.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: (isFavorite ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_outline,)),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
