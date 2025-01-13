import 'package:corso_flutter/screens/SecondaPagina.dart';
import 'package:flutter/material.dart';

class Primapagina extends StatelessWidget {
  const Primapagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotApp'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Prima Pagina',
              style: TextStyle(fontSize: 45, fontStyle: FontStyle.italic),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,
                      '/seconda', arguments: 'qwerty'); // questa modalità si usa col routing impostato nel main.dart
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute<void>(
                  //         builder: (context) => Secondapagina(data: 'ciao',)));
                },
                child: const Text('Vai a Pagina 2'))
          ],
        ),
      ),
    );
  }
}
