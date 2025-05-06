import 'package:flutter/material.dart';

class Pantallaselecttable extends StatefulWidget {
  const Pantallaselecttable({Key? key}) : super(key: key);

  @override
  State<Pantallaselecttable> createState() => _PantallaselecttableState();
}

class _PantallaselecttableState extends State<Pantallaselecttable> {
  String selectedText = '';

  @override
  Widget build(BuildContext context) {
    const String _selectableText = 'This is a selectable text';
    const TextStyle _stylePurple = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurple,
    );
    const TextStyle _style = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('SelectableText')),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // Corregido "spaceEvenly"
          children: [
            Text(
              selectedText,
              style: _stylePurple,
            ),
            TextSelectionTheme(
              data: const TextSelectionThemeData(
                selectionColor: Colors.yellow,
              ),
              child: SelectableText(
                _selectableText,
                style: _style,
                onSelectionChanged: (selection, cause) {
                  setState(() {
                    selectedText = _selectableText.substring(
                      selection.start,
                      selection.end,
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
