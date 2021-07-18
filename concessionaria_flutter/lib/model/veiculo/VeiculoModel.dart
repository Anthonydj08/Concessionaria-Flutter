class VeiculoModel {
  int id;
  String fabricante;
  String modelo;
  String ano;
  bool vidrosEletricos;

  VeiculoModel(
      {this.id,
      this.fabricante,
      this.modelo,
      this.ano,
      this.vidrosEletricos = false});

  VeiculoModel.fromMap(Map<String, dynamic> veiculo)
      : id = veiculo['id'],
        fabricante = veiculo['fabricante'],
        modelo = veiculo['modelo'],
        ano = veiculo['ano'],
        vidrosEletricos = veiculo['vidrosEletricos'];

  Map<String, Object> toMap() {
    return {
      'id': id,
      'fabricante': fabricante,
      'modelo': modelo,
      'ano': ano,
      'vidrosEletricos': vidrosEletricos,
    };
  }
}
