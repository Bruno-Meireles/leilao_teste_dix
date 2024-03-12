import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/login.dart';
import 'package:leilao_teste_dix/resultados.dart';
import 'package:leilao_teste_dix/utils/app.colors.dart';
import 'package:leilao_teste_dix/venda.direta.dart';

class Leilao extends StatefulWidget {
  const Leilao({super.key});

  @override
  State<Leilao> createState() => _LeilaoState();
}

class _LeilaoState extends State<Leilao> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgoundColor,
        appBar: AppBar(
          backgroundColor: AppColors.black,
          foregroundColor: AppColors.white,
          title: const Text(
            "Leilão",
            style: TextStyle(color: AppColors.white, fontSize: 20),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("image/degrade.png"), fit: BoxFit.cover),
            ),
            child: ListView(
              padding: EdgeInsets.zero, // Removendo o padding
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 250),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const UserAccountsDrawerHeader(
                  accountName: Text("Pedro Lucas"),
                  accountEmail: Text("lucaspedro312@email.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("image/avatar.png"),
                  ),
                  decoration: BoxDecoration(color: AppColors.black),
                ),
                const SizedBox(
                  height: 40,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Leilao(),
                      ),
                    );
                  },
                  leading: Image.asset(
                    "image/assets/icons/leiloes.png",
                    color: AppColors.white,
                  ),
                  title: const Text(
                    "Leilão",
                    style: TextStyle(color: AppColors.white, fontSize: 16),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VendaDireta(),
                      ),
                    );
                  },
                  leading: Image.asset(
                    "image/assets/icons/vendaDireta.png",
                    color: AppColors.white,
                  ),
                  title: const Text(
                    "Venda Direta",
                    style: TextStyle(color: AppColors.white, fontSize: 16),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Resultados(),
                      ),
                    );
                  },
                  leading: Image.asset(
                    "image/assets/icons/resultados.png",
                    color: AppColors.white,
                  ),
                  title: const Text(
                    "Resultados",
                    style: TextStyle(color: AppColors.white, fontSize: 16),
                  ),
                ),
                ExpansionTile(
                  leading: Image.asset(
                    "image/assets/icons/settings.png",
                    color: AppColors.white,
                  ),
                  title: const Text(
                    "Configurações",
                    style: TextStyle(color: AppColors.white, fontSize: 16),
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: AppColors.white,
                  ),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 47),
                      child: ListTile(
                        title: const Text(
                          "Perfil",
                          style: TextStyle(color: AppColors.white, fontSize: 18),
                        ),
                        onTap: () {
                          // Ação quando a Opção 1 é selecionada
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 47),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: const Text(
                              "Políticas de ",
                              style: TextStyle(color: AppColors.white, fontSize: 18),
                            ),
                            onTap: () {
                              // Ação quando a Opção 2 é selecionada
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 14),
                            child: const Text(
                              "privacidade",
                              style: TextStyle(color: AppColors.white, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 47),
                      child: ListTile(
                        title: const Text(
                          "Ajuda",
                          style: TextStyle(color: AppColors.white, fontSize: 18),
                        ),
                        onTap: () {
                          // Ação quando a Opção 1 é selecionada
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 47),
                      child: ListTile(
                        title: const Text(
                          "Sair",
                          style: TextStyle(color: AppColors.white, fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Conteúdo existente do corpo
            SizedBox(
              width: 351,
              height: 171.14,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset("image/gadoCorte.png"),
                          ),
                          SizedBox(
                            child: Expanded(
                              child: Row(
                                children: [
                                  Image.asset("image/assets/icons/iconLocation.png"),
                                  const Text("LEILÃO GADO CORTE 174"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Nova seção abaixo do corpo existente
            const Padding(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Próximos Leilões',
                  style: TextStyle(fontSize: 16, color: AppColors.white),
                ),
              ),
            ),
            Center(
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(6),
                    bottom: Radius.circular(6),
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset("image/leilaoGado.png"),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                          fixedSize: const Size(281, 57),
                          backgroundColor: AppColors.yellow),
                      child: const Text(
                        "10 FEV.2023 às 19:00",
                        style: TextStyle(color: AppColors.white, fontSize: 14.43),
                      ),
                    ),
                    SizedBox(
                      width: 281,
                      height: 55,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(6),
                                  ),
                                ),
                                fixedSize: const Size(281, 57),
                                backgroundColor: AppColors.black),
                            child: const Text(
                              "LEILÃO VIRTUAL GADO DE CORTE - Lote 175",
                              style: TextStyle(color: AppColors.white, fontSize: 14.43),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.white,
          selectedItemColor: AppColors.yellow,
          currentIndex: currentIndex,
          onTap: (index) => setState(
            () => currentIndex = index,
          ),
          backgroundColor: AppColors.appBar,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Leilao(),
                    ),
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Leilao(),
                      ),
                    );
                  },
                  child: const ImageIcon(
                    AssetImage(
                      "image/assets/icons/leiloes.png",
                    ),
                    color: AppColors.white,
                  ),
                ),
              ),
              label: "Leilões",
            ),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VendaDireta(),
                      ),
                    );
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VendaDireta(),
                        ),
                      );
                    },
                    child: const ImageIcon(
                      AssetImage(
                        "image/assets/icons/vendaDireta.png",
                      ),
                      color: AppColors.white,
                    ),
                  ),
                ),
                label: "Venda Direta",
                backgroundColor: AppColors.white),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: const ImageIcon(
                  AssetImage("image/assets/icons/resultados.png"),
                  color: AppColors.white,
                ),
              ),
              label: "Resultados",
            ),
          ],
        ),
      ),
    );
  }
}
