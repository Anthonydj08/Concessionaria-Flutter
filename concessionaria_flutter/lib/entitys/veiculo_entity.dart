import 'package:floor/floor.dart';

import 'entity_base.dart';

@Entity(tableName: 'Veiculos')
class VeiculoEntity extends EntityBase {
  VeiculoEntity({ int? id, required String createdAt, String? updatedAt, required  this.fabricante, required this.modelo,required this.ano})
       : super(id, createdAt, updatedAt != null? updatedAt : '');
  
  final String fabricante;
  final String modelo;
  final String ano;

}