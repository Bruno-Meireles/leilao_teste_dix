import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff222222),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("image/hamburguer.png"),
              const SizedBox(
                width: 115,
              ),
              const Text(
                "Sobre nós",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ],
          ),
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Depoimentos",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffAE841A),
                    fontSize: 16,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Eu nunca imaginei que seria tão fácil e prático comprar e vender gado. Com a plataforma LN, eu consegui fazer bons negócios de forma simples e descomplicada. Estou muito satisfeito com a tecnologia e praticidade oferecidas pela empresa.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
