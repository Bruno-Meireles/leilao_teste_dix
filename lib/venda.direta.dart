import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/leilao.dart';
import 'package:leilao_teste_dix/login.dart';
import 'package:leilao_teste_dix/utils/app.colors.dart';

class VendaDireta extends StatefulWidget {
  const VendaDireta({super.key});

  @override
  State<VendaDireta> createState() => _VendaDiretaState();
}

class _VendaDiretaState extends State<VendaDireta> {
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
            "Venda Direta",
            style: TextStyle(color: AppColors.white, fontSize: 20),
          ),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt_rounded))],
        ),
        // inicio menu hamburguer
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

        // fim menu hamburguer drawer

        // inicio gridview com imagems e titulos do leilão
        body: GridView.builder(
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white),
                borderRadius: const BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              width: 351,
              height: 269,
              margin: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Expanded(
                      child: Image.asset(
                        "image/imageNovilha/novilha.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Text(
                    "Lote Novilha B021...",
                    style: TextStyle(color: AppColors.white, fontSize: 14),
                  ),
                  const Column(
                    children: [
                      ListTile(
                        leading: ImageIcon(
                          AssetImage("image/assets/icons/iconFemeas.png"),
                        ),
                        title: Text("Fêmeas"),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
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
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "image/assets/icons/leiloes.png",
                ),
                color: AppColors.white,
              ),
              label: "Leilões",
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "image/assets/icons/vendaDireta.png",
                  ),
                  color: AppColors.white,
                ),
                label: "Venda Direta",
                backgroundColor: AppColors.white),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("image/assets/icons/resultados.png"),
                color: AppColors.white,
              ),
              label: "Resultados",
            ),
          ],
        ),
      ),
    );
  }
}
