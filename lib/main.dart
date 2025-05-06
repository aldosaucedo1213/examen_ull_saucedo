import 'package:flutter/material.dart';
import 'package:saucedorutas/pagina_uno.dart';
import 'package:saucedorutas/pagina_stack.dart';
import 'package:saucedorutas/pagina_raw.dart';
import 'package:saucedorutas/pagina_cliprrect.dart';
import 'package:saucedorutas/pagina_switches.dart';
import 'package:saucedorutas/pagina_wrap.dart';
import 'package:saucedorutas/pagina_selecttable.dart';
import 'package:saucedorutas/pagina_draggable.dart';
import 'package:saucedorutas/pagina_cascade.dart';

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
        '/pantalla4': (context) => const Pantallacliprrect(),
        '/pantalla5': (context) => const Pantallasswitches(),
        '/pantalla6': (context) => const Pantallawrap(),
        '/pantalla7': (context) => const Pantallaselecttable(),
        '/pantalla8': (context) => const Pantalladraggable(),
        '/pantalla9': (context) => const Pantallacascade(),
      },
    );
  }
}
