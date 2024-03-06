import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//     ),
//   );
// }

class Apresentacao extends StatefulWidget {
  const Apresentacao({super.key});

  @override
  State<Apresentacao> createState() => ApresentacaoState();
}

class ApresentacaoState extends State<Apresentacao> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
    ).then(
      (_) => Navigator.of(context).pushReplacementNamed('/Login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff224225),
        ),
        padding: const EdgeInsets.only(
          top: 200,
          left: 49,
          right: 40,
        ),
        child: ListView(
          children: [
            SizedBox(
              width: 293,
              height: 149,
              child: Image.asset("image/logo.apresentacao.png"),
            ),
            const SizedBox(
              height: 130,
            ),
            const Padding(
              padding: EdgeInsets.all(60),
              child: Text(
                "Leilões online para rematar seu gado com praticidade",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                ),
              ),
            ),
            Column(
              children: [
                const CircularProgressIndicator(
                  color: Colors.white38,
                ),
                // Image.asset("image/CircularSpinner.png"),
                TextButton(
                  onPressed: () {},
                  child: Image.asset("image/Logo-dix_branca.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "V 2.0.0.1",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 10,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}