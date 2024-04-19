import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSwitched = false;
  bool isSwitchedTile = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: isSwitched,
          onChanged: (value) => setState(
            () => isSwitched = value,
          ),
        ),
        SwitchListTile(
          value: isSwitchedTile,
          title: const Text("Switch List tile"),
          onChanged: (value) => setState(
            () => isSwitchedTile = value,
          ),
        )
      ],
    );
  }
}
