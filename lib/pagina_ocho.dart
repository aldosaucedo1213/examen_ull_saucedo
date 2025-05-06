import 'package:flutter/material.dart';

class Pantallaocho extends StatelessWidget {
  const Pantallaocho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alineación con Baseline'),
        backgroundColor:
            const Color(0xff2e84be), // Mismo color que el contenedor
        centerTitle: true,
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              // Puedes añadir alguna acción aquí
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: const Color(0xff2e84be),
          child: const Baseline(
            baseline: 50,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(size: 50),
          ),
        ),
      ),
    );
  }
}
