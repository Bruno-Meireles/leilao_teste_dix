import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/utils/app.colors.dart';

class VendaDireta extends StatefulWidget {
  const VendaDireta({super.key});

  @override
  State<VendaDireta> createState() => _VendaDiretaState();
}

class _VendaDiretaState extends State<VendaDireta> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgoundColor,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Container(
            color: Colors.amberAccent,
          ),
        ),
        appBar: AppBar(
          backgroundColor: AppColors.black,
          centerTitle: true,
          title: const Text(
            "Venda Direta",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(12),
                width: 173,
                height: 285,
                child: Column(
                  children: [
                    Image.asset("image/imageNovilha/novilha.png"),
                    const Text("oi"),
                  ],
                ),
              );
            }),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              // icon: Icon(Icons.ac_unit_sharp),
              // label: "Leilões",
              icon: ImageIcon(
                AssetImage("image/assets/icons/leiloes.png"),
              ),
              label: "Leilões",
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.ac_unit_sharp),
              // label: "Venda Direta",
              // backgroundColor: Colors.amber,
              icon: ImageIcon(
                AssetImage("image/assets/icons/venda_direta.png"),
              ),
              label: "Venda Direta",
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.ac_unit_sharp),
              // label: "Resultados",
              icon: ImageIcon(
                AssetImage("image/assets/icons/resultados.png"),
              ),
              label: "Resultados",
            ),
          ],
        ),
      ),
    );
  }
}
