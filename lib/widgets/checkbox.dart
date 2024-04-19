import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? isChecked;
  bool? isCheckedTile = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Checkbox(
              // la checkbox accetta 3 valori:
              // true, false, null
              // per accettare anche null aggiunto tristate
              tristate: true,
              // 'value' determina se la checkbox è selezionata o meno.
              value: isChecked,
              // 'onChanged' è una funzione chiamata quando il valore della checkbox cambia.
              onChanged: (value) => setState(() {
                isChecked = value;
                print("Stato checkbox => $isChecked");
              }),
            ),
            const Text("Checkbox"),
          ],
        ),
        // CheckboxListTile è un widget che combina una Checkbox con un ListTile.
        CheckboxListTile(
          tristate: true,
          value: isCheckedTile,
          title: const Text("Checkbox List Tile"),
          onChanged: (value) => setState(() {
            isCheckedTile = value;
            print("Stato checkbox => $isCheckedTile");
          }),
        )
      ],
    );
  }
}
