enum Routers {
  cadastro,
  login,
  apresentacao,
  vendaDireta // Adicionando a rotas para a telas
}

extension RoutersExtension on Routers {
  String get name {
    switch (this) {
      case Routers.cadastro:
        return 'cadastro';
      case Routers.login:
        return 'login';
      case Routers.apresentacao:
        return 'apresentacao';
      case Routers.vendaDireta: // Definindo o nome da rota para as telas
        return 'vendaDireta';
    }
  }
}
