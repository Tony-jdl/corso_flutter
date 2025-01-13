import 'package:flutter/material.dart';

class PaginaErrore extends StatelessWidget {
  const PaginaErrore({super.key});

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
                  Navigator.pushNamed(context, '/seconda');
                },
                child: const Text('Vai a Pagina 2'))
          ],
        ),
      ),
    );
  }
}
