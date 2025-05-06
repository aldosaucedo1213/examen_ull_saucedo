import 'package:flutter/material.dart';

class Pantallacliprrect extends StatelessWidget {
  const Pantallacliprrect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect - Imagen recortada'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(70.0),
            topLeft: Radius.circular(170.0),
            bottomRight: Radius.circular(270.0),
            bottomLeft: Radius.circular(270.0),
          ),
          child: Image.asset(
            'assets/nachodesierto.jpg', // Ruta desde la carpeta 'lib'
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
