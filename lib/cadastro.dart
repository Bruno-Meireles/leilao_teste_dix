import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/leilao.dart';
import 'package:leilao_teste_dix/utils/app.colors.dart';
import 'components/form.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    final nameControler = TextEditingController();
    final emailControler = TextEditingController();
    final celularControler = TextEditingController();
    final senhaControler = TextEditingController();
    final confirmarSenhaControler = TextEditingController();
    bool isChecked = false;
    bool showPassword = false;
    return Scaffold(
      backgroundColor: AppColors.backgoundColor,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: const Center(
          child: Text(
            "Criar Conta",
            style: TextStyle(
              fontFamily: "Poppins",
              color: AppColors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  key: UniqueKey(),
                  labelText: "Nome Completo",
                  hintText: "Informe seu Nome completo",
                  keyboardType: TextInputType.text,
                  controller: nameControler,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  key: UniqueKey(),
                  labelText: "E-mail",
                  hintText: "Informe seu E-mail",
                  controller: emailControler,
                ),
                CustomTextFormField(
                  key: UniqueKey(),
                  labelText: "Celular",
                  hintText: "Informe seu Celular",
                  controller: celularControler,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  key: UniqueKey(),
                  labelText: "Senha",
                  hintText: "Informe sua Senha",
                  controller: senhaControler,
                  showPassword: !showPassword,
                  // suffixIcon: IconButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       showPassword = !showPassword;
                  //     });
                  //   },
                  //   icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
                  // ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  key: UniqueKey(),
                  labelText: "Confirmar senha",
                  hintText: "Confirmar senha",
                  controller: confirmarSenhaControler,
                  showPassword: !showPassword,
                  // suffixIcon: IconButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       showPassword = !showPassword;
                  //     });
                  //   },
                  //   icon: Icon(showPassword ? Icons.visibility_off : Icons.visibility_off),
                  // ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  isChecked = !isChecked;
                                },
                              );
                            },
                            child: const Icon(
                              Icons.check_box_outline_blank,
                              color: AppColors.yellow,
                            ),
                          ),
                          const Text(
                            "  Ao criar sua conta você concorda com os ",
                            style: TextStyle(color: AppColors.white, fontSize: 13),
                          ),
                          const Text(
                            "         Termos de Uso ",
                            style: TextStyle(color: AppColors.blue, fontSize: 13),
                          ),
                          const Text(
                            "e",
                            style: TextStyle(color: AppColors.white, fontSize: 13),
                          ),
                          const Text(
                            " Politica de Privacidade",
                            style: TextStyle(color: AppColors.blue, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 56),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                      ),
                      padding: const EdgeInsets.all(20),
                      backgroundColor: AppColors.green,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Leilao(),
                        ),
                      );
                    },
                    child: const Text(
                      "Criar Conta",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
