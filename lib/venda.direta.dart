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
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_alt_rounded),
            ),
          ],
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
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 6, right: 6),
          child: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 2, mainAxisExtent: 351, mainAxisSpacing: 25),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.miniIcon),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                margin: const EdgeInsets.all(1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "image/imageNovilha/novilha.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      "Lote Novilha B021...",
                      style: TextStyle(color: AppColors.white, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33, top: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "image/assets/icons/iconFemeas.png",
                            color: AppColors.miniIcon,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Fêmeas",
                            style: TextStyle(color: AppColors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33, top: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "image/assets/icons/iconPeso.png",
                            color: AppColors.miniIcon,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "194 KG / 6.46@",
                            style: TextStyle(color: AppColors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33, top: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            "image/assets/icons/iconLocation.png",
                            color: AppColors.miniIcon,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Pium - TO",
                            style: TextStyle(color: AppColors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33, top: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                    ),
                                    side: const BorderSide(color: AppColors.yellow),
                                    backgroundColor: AppColors.backgoundColor),
                                child: const Text(
                                  "Compartilhar",
                                  style: TextStyle(color: AppColors.yellow),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 30,
                            ),
                            child: Positioned(
                              bottom: 50,
                              left: 10,
                              right: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                    ),
                                    backgroundColor: AppColors.green),
                                child: const Text(
                                  "Compartilhar",
                                  style: TextStyle(color: AppColors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
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
