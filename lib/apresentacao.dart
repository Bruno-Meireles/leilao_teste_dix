import 'dart:async';
import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/utils/app.colors.dart';

class Apresentacao extends StatefulWidget {
  const Apresentacao({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ApresentacaoState createState() => _ApresentacaoState();
}

class _ApresentacaoState extends State<Apresentacao> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed('login');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/background.logo.png"),
            fit: BoxFit.cover,
          ),
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
                  color: AppColors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Column(
              children: [
                const CircularProgressIndicator(
                  color: AppColors.circular,
                ),
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
                    color: AppColors.white,
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
