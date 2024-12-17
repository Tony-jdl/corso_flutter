import 'package:flutter/material.dart';

class CardVideo extends StatelessWidget {
  const CardVideo({super.key, required this.numero});
  final int numero;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.orange[900],
      height: 100,
      alignment: Alignment.center,
      child: Text('$numero'),
    );
  }
}