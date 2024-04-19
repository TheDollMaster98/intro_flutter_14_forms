import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  // crei i 2 "telecomandi" per manipolare gli input
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswController = TextEditingController();

  LoginForm({super.key});

  void onLogin() {
    // accedo al valore del controller:
    // tolgo gli spazi con trim:
    final email = emailController.text.trim();
    final psw = pswController.text.trim();

    print("Email: $email");
    print("Password: $psw");

    emailController.clear();
    pswController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4)),
            child: TextField(
              controller: emailController,
              // sto dicendo di mostrare una tastiera adatta per le mail
              keyboardType: TextInputType.emailAddress,
              //definisco lo stile del testo:
              // style: ,
              // definisco lo stile dell'input:
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                // icona all'inizio dell'input:
                prefixIcon: Icon(Icons.email),
                // placeholder classico, scompare appena clicchi:
                // hintText: "Email",
                // si comporta come hint, solo che invece di sparire, va sopra.
                labelText: "Email",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4)),
            child: TextField(
              controller: pswController,
              keyboardType: TextInputType.visiblePassword,
              // oscuro il testo:
              obscureText: true,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(Icons.lock),
                labelText: "Passwrd",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onLogin,
              child: const Text(
                "login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
