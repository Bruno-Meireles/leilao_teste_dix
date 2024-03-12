import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/apresentacao.dart';
import 'package:leilao_teste_dix/cadastro.dart';
import 'package:leilao_teste_dix/router/path.dart';
import 'package:leilao_teste_dix/utils/app.colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/degrade.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              width: 124,
              height: 135,
              child: Image.asset("image/logo.cadastro.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Entrar",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Informe os dados para acessar",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              " Email",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
            ),
            TextFormField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                fillColor: Color(0xffFFFFFF),
                filled: true,
                hintText: "email@example.com",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: AppColors.hintText,
                  fontWeight: FontWeight.w300,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              " Senha",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
            ),
            TextFormField(
              onChanged: (text) {
                password = text;
              },
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                fillColor: AppColors.white,
                filled: true,
                hintText: "********",
                hintStyle: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 2, color: AppColors.hintText, fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
              ),
            ),
            Container(
              height: 35,
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Esqueceu sua senha ?",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (email == 'fabioln@ldix.com' && password == '1234567o') {
                  Navigator.pushNamed(context, Routers.cadastro.name);
                }
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                backgroundColor: AppColors.yellow,
              ),
              child: const Text(
                "Entrar",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Cadastro(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                backgroundColor: AppColors.backgoundColor,
                side: const BorderSide(
                  color: AppColors.white,
                ),
              ),
              child: const Text(
                "Criar Conta",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Apresentacao(),
                      ),
                    );
                  },
                  child: Image.asset("image/Logo-dix_branca.png"),
                ),
                const Text(
                  "V 2.0.0.1",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 10,
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
