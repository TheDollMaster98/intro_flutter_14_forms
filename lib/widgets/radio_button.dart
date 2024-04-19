import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  //variabili di stato che tengono traccia del valore selezionato:
  CardVariant cardVariantChosen = CardVariant.basic;
  CardVariant cardVariantChosenList = CardVariant.basic;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("Radio:"),
      Row(
        children: [
          Radio<CardVariant>(
            value: CardVariant.basic,
            groupValue: cardVariantChosen,
            onChanged: (value) => setState(
              () => cardVariantChosen = value!,
            ),
          ),
          const Text("Basic")
        ],
      ),
      Row(
        children: [
          Radio<CardVariant>(
            value: CardVariant.normal,
            groupValue: cardVariantChosen,
            onChanged: (value) => setState(
              () => cardVariantChosen = value!,
            ),
          ),
          const Text("Normal")
        ],
      ),
      Row(
        children: [
          Radio<CardVariant>(
            value: CardVariant.pro,
            groupValue: cardVariantChosen,
            onChanged: (value) => setState(
              () => cardVariantChosen = value!,
            ),
          ),
          const Text("Pro")
        ],
      ),
      const Text("Radio List tile:"),
      RadioListTile<CardVariant>(
        value: CardVariant.basic,
        title: const Text("Basic"),
        groupValue: cardVariantChosenList,
        onChanged: (value) => setState(
          () => cardVariantChosenList = value!,
        ),
      ),
      RadioListTile<CardVariant>(
        value: CardVariant.normal,
        title: const Text("Normal"),
        groupValue: cardVariantChosenList,
        onChanged: (value) => setState(
          () => cardVariantChosenList = value!,
        ),
      ),
      RadioListTile<CardVariant>(
        value: CardVariant.pro,
        title: const Text("Pro"),
        groupValue: cardVariantChosenList,
        onChanged: (value) => setState(
          () => cardVariantChosenList = value!,
        ),
      ),
    ]);
  }
}

enum CardVariant {
  basic,
  normal,
  pro,
}
