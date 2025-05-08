import 'package:flutter/material.dart';
import 'package:saucedorutas/pagina_uno.dart';
import 'package:saucedorutas/pagina_rangeslider.dart';
import 'package:saucedorutas/pagina_row.dart';
import 'package:saucedorutas/pagina_sizebox.dart';
import 'package:saucedorutas/pagina_silveropacity.dart';
import 'package:saucedorutas/pagina_stepper.dart';

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
        '/pantallarangeslider': (context) => const Pantallarangeslider(),
        '/pantallarow': (context) => const Pantallarow(),
        '/pantallasizebox': (context) => const Pantallasizebox(),
        '/pantallasilveropacity': (context) => const Pantallasilveropacity(),
        '/pantallastepper': (context) => const Pantallastepper(),
      },
    );
  }
}
