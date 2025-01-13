import 'package:corso_flutter/screens/PrimaPagina.dart';
import 'package:flutter/material.dart';

class Secondapagina extends StatelessWidget {
  const Secondapagina({super.key, required this.data});

  final String data;

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
              'Seconda Pagina',
              style: TextStyle(fontSize: 45, fontStyle: FontStyle.italic),
            ),
            Text(
              data,
              style: const TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/prima');
                  // Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute<void>(
                  //   builder: (context) => Primapagina()
                  // ));
                },
                child: const Text('Vai a Pagina 1'))
          ],
        ),
      ),
    );
  }
}
