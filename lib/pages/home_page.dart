import 'package:flutter/material.dart';
import 'package:intro_flutter_14_forms/widgets/checkbox.dart';
import 'package:intro_flutter_14_forms/widgets/login_form.dart';
import 'package:intro_flutter_14_forms/widgets/radio_button.dart';
import 'package:intro_flutter_14_forms/widgets/slider.dart';
import 'package:intro_flutter_14_forms/widgets/switch_button.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Center(child: Text("Forms in Flutter 3")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginForm(),
            const CheckBox(),
            const RadioButton(),
            const SwitchButton(),
            const SliderButton()
          ],
        ),
      ),
    );
  }
}
