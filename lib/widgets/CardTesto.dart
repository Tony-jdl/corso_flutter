import 'package:flutter/material.dart';

class CardTesto extends StatefulWidget {
  CardTesto({super.key, required this.numero});
  var numero;

  @override
  State<CardTesto> createState() => _CardTestoState();
}

class _CardTestoState extends State<CardTesto> {
  @override
  Widget build(BuildContext context) {
    return Theme( // in questo modo posso usare un Theme personalizzato per il widget
      data: ThemeData(),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        color: Colors.orange[200],
        height: 100,
        alignment: Alignment.center,
        child: Text(widget.numero.toString()),
      ),
    );
  }
}