import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/router/path.dart';

import 'apresentacao.dart';
import 'login.dart';
import 'cadastro.dart';

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
      home: const Apresentacao(),
      initialRoute: 'apresentacao',
      routes: {
        Routers.apresentacao.name: (_) => const Apresentacao(),
        Routers.login.name: (_) => const Login(),
        Routers.cadastro.name: (_) => const Cadastro(),
      },
    );
  }
}
