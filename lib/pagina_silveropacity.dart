import 'package:flutter/material.dart';

class Pantallasilveropacity extends StatefulWidget {
  const Pantallasilveropacity({Key? key}) : super(key: key);

  @override
  State<Pantallasilveropacity> createState() => _PantallasilveropacityState();
}

class _PantallasilveropacityState extends State<Pantallasilveropacity> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverOpacity Demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _visible = !_visible;
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child:
                    Text(_visible ? 'Ocultar contenido' : 'Mostrar contenido'),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverOpacity(
              opacity: _visible ? 1.0 : 0.0,
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      title: Text('Elemento $index'),
                      subtitle: const Text('Puedes ocultarme'),
                      leading: const Icon(Icons.visibility),
                    ),
                  ),
                  childCount: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
