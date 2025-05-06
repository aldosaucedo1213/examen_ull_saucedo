import 'package:flutter/material.dart';

class Pantallasiete extends StatelessWidget {
  const Pantallasiete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Siete'),
        backgroundColor:
            Colors.orangeAccent, // Para que combine con el Container
        centerTitle: true,
        elevation: 4,
      ),
      body: Center(
        child: Container(
          color: Colors.orangeAccent,
          alignment: Alignment.center,
          width: double.infinity,
          height: 300,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
