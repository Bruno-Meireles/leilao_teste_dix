import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/utils/app.colors.dart';
import 'components/form.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    final nameControler = TextEditingController();
    final emailControler = TextEditingController();
    final celularControler = TextEditingController();
    final senhaControler = TextEditingController();
    final confirmarSenhaControler = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.backgoundColor,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("image/appbar.png"), fit: BoxFit.cover),
          ),
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(15),
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
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              key: UniqueKey(),
              labelText: "Senha",
              hintText: "Confirmar senha",
              controller: confirmarSenhaControler,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Column(
                children: [
                  Wrap(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        color: AppColors.yellow,
                      ),
                      Text(
                        "  Ao criar sua conta você concorda com os ",
                        style: TextStyle(color: AppColors.white, fontSize: 13),
                      ),
                      Text(
                        "         Termos de Uso ",
                        style: TextStyle(color: AppColors.blue, fontSize: 13),
                      ),
                      Text(
                        "e",
                        style: TextStyle(color: AppColors.white, fontSize: 13),
                      ),
                      Text(
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
                onPressed: () {},
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
    );
  }
}
