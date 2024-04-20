import 'package:flutter/material.dart';

class SliderButton extends StatefulWidget {
  const SliderButton({super.key});

  @override
  State<SliderButton> createState() => _SliderState();
}

class _SliderState extends State<SliderButton> {
  double ralValue = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: ralValue,
      min: 0,
      max: 40000,
      // valore fra i vari step:
      divisions: 1000,
      //valore visualizzato:
      label: ralValue.toStringAsFixed(0),
      onChanged: (value) => setState(() => ralValue = value),
    );
  }
}
