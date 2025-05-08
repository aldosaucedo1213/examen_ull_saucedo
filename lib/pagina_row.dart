import 'package:flutter/material.dart';

class Pantallarow extends StatefulWidget {
  const Pantallarow({Key? key}) : super(key: key);

  @override
  State<Pantallarow> createState() => _PantallarowState();
}

class _PantallarowState extends State<Pantallarow> {
  // Contenido de tu pantalla Row aquí
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo Row',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blue, // Cambié el color para diferenciar
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          // Cambié Column por Row para que sea coherente
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text('Item 1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text('Item 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text('Item 3'),
            ),
          ],
        ),
      ),
    );
  }
}
