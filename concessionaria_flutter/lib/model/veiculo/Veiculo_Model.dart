class Veiculo {
  int id;
  String fabricante;
  String modelo;
  String ano;

  Veiculo({
    required this.id,
    required this.fabricante,
    required this.modelo,
    required this.ano,
  });

  Veiculo.fromMap(Map<String, dynamic> veiculo)
      : id = veiculo['id'],
        fabricante = veiculo['fabricante'],
        modelo = veiculo['modelo'],
        ano = veiculo['ano'];

  Map<String, Object> toMap() {
    return {'id': id, 'fabricante': fabricante, 'modelo': modelo, 'ano': ano};
  }
}
