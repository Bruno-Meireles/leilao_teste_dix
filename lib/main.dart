import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/cadastro.dart';

import 'apresentacao.dart';
import 'login.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Cadastro(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Apresentacao(),
      initialRoute: '/ apresentacao',
      routes: {
        '/apresentacao': (_) => const Apresentacao(),
        '/login': (_) => const Login(),
      },
    );
  }
}
