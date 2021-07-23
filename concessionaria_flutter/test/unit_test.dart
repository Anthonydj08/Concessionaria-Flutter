import 'package:concessionaria_flutter/model/veiculo/VeiculoModel.dart';
import 'package:concessionaria_flutter/size_config.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('verificar se a lista inicializa vazia', (){
  final List<VeiculoModel> veiculos = [];
    expect( veiculos.length, 0);
  }
  );
  test('Calcular a proporção certa', (){
    // var sizeConfig = SizeConfig;
    expect(getProportionateScreenHeight(100), 93.5064935064935);
  });
  
}