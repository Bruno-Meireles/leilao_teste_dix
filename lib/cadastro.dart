import 'package:flutter/material.dart';
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
      backgroundColor: const Color(0xff222222),
      appBar: AppBar(
        backgroundColor: const Color(0xff262629),
        title: const Center(
          child: Text(
            "Criar Conta",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Color(0xffFFFFFF),
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
                        color: Color(0xffAE841A),
                      ),
                      Text(
                        "  Ao criar sua conta você concorda com os ",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Text(
                        "        Termos de Uso e Politica de Privacidade",
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
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
                  backgroundColor: const Color(0xff008800),
                ),
                onPressed: () {
                  
                },
                child: const Text(
                  "Criar Conta",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
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
