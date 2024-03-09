import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/apresentacao.dart';
import 'package:leilao_teste_dix/cadastro.dart';
import 'package:leilao_teste_dix/router/path.dart';

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
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const Text("Informe os dados para acessar", style: TextStyle(color: Colors.white)),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              " Email",
              style: TextStyle(
                color: Color(0xffFFFFFF),
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
                hintText: "Informe seu E-mail",
                hintStyle: TextStyle(
                  color: Color(0xff2D2D2D),
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
                color: Color(0xffFFFFFF),
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
                fillColor: Color(0xffFFFFFF),
                filled: true,
                hintText: "********",
                hintStyle: TextStyle(
                  color: Color(0xff2D2D2D),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Esqueceu sua senha ?",
                  style: TextStyle(fontSize: 13, color: Color(0xff659AFF)),
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
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                padding: const EdgeInsets.all(20),
                backgroundColor: const Color(0xffAE841A),
              ),
              child: const Text(
                "Entrar",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Cadastro()));
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                backgroundColor: const Color(0xff222222),
                side: const BorderSide(
                  color: Color(0xffFFFFFF),
                ),
              ),
              child: const Text(
                "Criar Conta",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
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
                    color: Color(0xffFFFFFF),
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
