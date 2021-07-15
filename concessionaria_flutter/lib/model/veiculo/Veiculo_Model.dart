class Veiculo {
  int id;
  String fabricante;
  String modelo;
  String ano;

  Veiculo({
    this.id,
    this.fabricante,
    this.modelo,
    this.ano,
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
