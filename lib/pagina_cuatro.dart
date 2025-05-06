import 'package:flutter/material.dart';

//! AnimatedAlign

class Pantallacuatro extends StatefulWidget {
  const Pantallacuatro({Key? key}) : super(key: key);

  @override
  State<Pantallacuatro> createState() => _Widget006State();
}

class _Widget006State extends State<Pantallacuatro> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Cuatro'),
        backgroundColor: Colors.blueGrey, // Para que combine con el Container
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}
