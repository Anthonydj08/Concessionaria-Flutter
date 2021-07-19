import 'package:floor/floor.dart';

import 'entity_base.dart';

@Entity(tableName: 'Veiculo')
class VeiculoEntity extends EntityBase {
  VeiculoEntity({ int? id, required String createdAt, required String updatedAt, required  this.fabricante, required this.modelo,required this.ano})
       : super(id, createdAt, updatedAt);
  
  final String fabricante;
  final String modelo;
  final String ano;

}