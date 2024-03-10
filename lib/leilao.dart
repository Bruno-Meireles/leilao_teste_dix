import 'package:flutter/material.dart';
import 'package:leilao_teste_dix/utils/app.colors.dart';

class Leilao extends StatefulWidget {
  const Leilao({super.key});

  @override
  State<Leilao> createState() => _LeilaoState();
}

class _LeilaoState extends State<Leilao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leilão"),
      ),
      drawer: Drawer(
        child: ListView(children: [
          
        ],),
      ),
    );
  }
}
