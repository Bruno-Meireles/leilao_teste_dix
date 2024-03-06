import 'package:flutter/material.dart';

import 'apresentacao.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color(0xff091409), Color(0xff262629), Color(0xff000000)],
          ),
        ),
        // color: Colors.white,
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
            const Text(
              "Email",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: Text(
                  "email@example.com",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                fillColor: Color(0xfD9D9D9f),
                filled: true,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Senha",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text(
                  "********",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                fillColor: Color(0xfD9D9D9f),
                filled: true,
                labelStyle: TextStyle(
                  color: Colors.white,
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
              onPressed: () {},
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
              onPressed: () {},
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
