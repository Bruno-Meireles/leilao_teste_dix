import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/leilao.dart';
import 'package:leilao_teste_dix/resultados.dart';

class VendaDireta extends StatefulWidget {
  const VendaDireta({super.key});

  @override
  State<VendaDireta> createState() => _VendaDiretaState();
}

class _VendaDiretaState extends State<VendaDireta> {
  int currentIndex = 0;
  final screens = [const Leilao(), const VendaDireta(), const Resultados()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff262629),
          selectedItemColor: const Color(0xffAE841A),
          unselectedItemColor: const Color(0xffFFFFFF),
          iconSize: 30,
          selectedFontSize: 12,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.av_timer_sharp),
              label: "Leilões",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.av_timer_sharp),
              label: "Venda Direta",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: "Resultados",
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text(
            "Venda Direta",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xffFFFFFF),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xff000000),
                  Color(0xff262629),
                ],
              ),
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.filter_alt,
                color: Color(0xFfFFFFFF),
              ),
              tooltip: 'Open shopping cart',
              onPressed: () {},
            ),
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
