import 'package:flutter/material.dart';

import 'apresentacao.dart';
import 'login.dart';
import 'cadastro.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Apresentacao(),
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
        '/cadrastro': (_) => const Cadastro(),
      },
    );
  }
}
