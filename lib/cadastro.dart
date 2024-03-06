import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xff222222),
      home: Scaffold(
        backgroundColor: const Color(0xff222222),
        appBar: AppBar(
          backgroundColor: const Color(0xff262629),
          title: const Center(
              child: Text(
            "Criar Conta",
            style: TextStyle(color: Color(0xffFFFFFF)),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Nome completo",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffFFFFFF),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  hintText: "Informe seu Nome completo",
                  hintStyle: TextStyle(
                    color: Color(0xff2D2D2D),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Email",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                ),
              ),
              TextFormField(
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
                      Radius.circular(3),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Senha",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  hintText: "Digite sua senha",
                  hintStyle: TextStyle(
                    color: Color(0xff2D2D2D),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.black26,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Confirme sua senha",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  hintText: "Confirme sua senha",
                  hintStyle: TextStyle(
                    color: Color(0xff2D2D2D),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.black26,
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
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
                    // Lógica para criar conta
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
      ),
    );
  }
}
