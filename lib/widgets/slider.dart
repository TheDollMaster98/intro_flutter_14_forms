import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderButton extends StatefulWidget {
  const SliderButton({super.key});

  @override
  State<SliderButton> createState() => _SliderState();
}

class _SliderState extends State<SliderButton> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: 0,
      min: 0,
      max: 40000,
      onChanged: (value) => print(value),
    );
  }
}
