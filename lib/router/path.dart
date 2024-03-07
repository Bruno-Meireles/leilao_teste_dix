enum Routers {
  cadastro(name: 'cadastro'),
  login(name: 'login'),
  apresentacao(name: 'apresentacao');

  const Routers({required this.name});
  final String name;
}
