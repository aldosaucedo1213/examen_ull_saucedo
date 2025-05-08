import 'package:flutter/material.dart';

class Pantallarangeslider extends StatefulWidget {
  const Pantallarangeslider({Key? key}) : super(key: key);

  @override
  State<Pantallarangeslider> createState() => _PantallarangesliderState();
}

class _PantallarangesliderState extends State<Pantallarangeslider> {
  RangeValues _currentRange = const RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RangeSlider Demo'),
      ),
      body: Center(
        child: RangeSlider(
          values: _currentRange,
          min: 0.0,
          max: 1.0,
          divisions: 10,
          labels: RangeLabels(
            _currentRange.start.toStringAsFixed(1),
            _currentRange.end.toStringAsFixed(1),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRange = values;
            });
          },
        ),
      ),
    );
  }
}
