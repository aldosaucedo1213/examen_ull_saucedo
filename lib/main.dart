import 'package:flutter/material.dart';
import 'package:saucedorutas/pagina_uno.dart';
import 'package:saucedorutas/pagina_stack.dart';
import 'package:saucedorutas/pagina_raw.dart';
import 'package:saucedorutas/pagina_cuatro.dart';
import 'package:saucedorutas/pagina_cinco.dart';
import 'package:saucedorutas/pagina_seis.dart';
import 'package:saucedorutas/pagina_siete.dart';
import 'package:saucedorutas/pagina_ocho.dart';
import 'package:saucedorutas/pagina_nueve.dart';

void main() => runApp(MirutasApp());

class MirutasApp extends StatelessWidget {
  const MirutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita el debug banner
      title: "entre paginas routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const Pantallauno(),
        '/pantalla2': (context) => const Pantallastack(),
        '/pantalla3': (context) => const Pantallaraw(),
        '/pantalla4': (context) => const Pantallacuatro(),
        '/pantalla5': (context) => const Pantallacinco(),
        '/pantalla6': (context) => const Pantallaseis(),
        '/pantalla7': (context) => const Pantallasiete(),
        '/pantalla8': (context) => const Pantallaocho(),
        '/pantalla9': (context) => const Pantallanueve(),
      },
    );
  }
}
