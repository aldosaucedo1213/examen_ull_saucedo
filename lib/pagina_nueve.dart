import 'package:flutter/material.dart';

class Pantallanueve extends StatelessWidget {
  const Pantallanueve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Nueve'),
        backgroundColor:
            const Color(0xff7a0808), // Color que combina con el Container
        centerTitle: true,
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              // Acción adicional si la necesitas
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: const Color(0xff7a0808),
            padding: const EdgeInsets.all(20),
            child: const Center(
              heightFactor: 2,
              child: Text(
                'Flutter Mapp',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7a0808),
              foregroundColor: Colors.white,
            ),
            child: const Text('Acción'),
          ),
        ],
      ),
    );
  }
}
