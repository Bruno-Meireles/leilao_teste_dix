import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/leilao.dart';
import 'package:leilao_teste_dix/router/path.dart';
import 'apresentacao.dart';
import 'login.dart';
import 'cadastro.dart';
import 'venda.direta.dart'; // Importe a classe VendaDireta

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Cadastro(),
      // initialRoute: Routers.vendaDireta.name, //Definir a tela de venda direta como inicial
      // initialRoute: Routers.apresentacao.name, // Definir a tela de apresentação como inicial
      routes: {
        Routers.apresentacao.name: (_) => const Apresentacao(),
        Routers.login.name: (_) => const Login(),
        Routers.cadastro.name: (_) => const Cadastro(),
        Routers.vendaDireta.name: (_) => const VendaDireta(),
        Routers.leilao.name: (_) => const Leilao(),
      },
    );
  }
}
