import 'package:flutter/material.dart';
import 'components/app.bar.dart';

class Sobre extends StatefulWidget {
  const Sobre({
    super.key,
  });

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon: (Icons.search))
        // ]),
        backgroundColor: const Color(0xff222222),
        appBar: CustomAppBar(
          image: Image.asset("image/hamburguer.png"),
          text: "Sobre nós",
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
                Column(
                  children: [
                    Text(
                      "Eu nunca imaginei que seria tão fácil e prático comprar e vender gado. Com a plataforma LN, eu consegui fazer bons negócios de forma simples e descomplicada. Estou muito satisfeito com a tecnologia e praticidade oferecidas pela empresa.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Eu sempre tive receio de vender meu lote de gado e assumir todo o risco sozinho. Mas com a LN, não precisei me preocupar com isso. A empresa assumiu o risco junto comigo e só paguei a comissão após a comercialização. Foi uma experiência muito positiva..",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
