import 'package:flutter/material.dart';

class Pantallauno extends StatelessWidget {
  const Pantallauno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pantallauno', textAlign: TextAlign.center),
        centerTitle: true, // Centra el título
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallarangeslider');
              },
              child: const Text("ver pantalla rangeslider"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallarow');
              },
              child: const Text("ver pantalla row"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallasizebox');
              },
              child: const Text("ver pantalla sizebox"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallasilveropacity');
              },
              child: const Text("ver pantalla silveropacity"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantallastepper');
              },
              child: const Text("ver pantalla stepper"),
            ),
          ),
        ],
      ),
    );
  }
}
