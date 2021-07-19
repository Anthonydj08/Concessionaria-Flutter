import 'package:concessionaria_flutter/entitys/veiculo_entity.dart';
import 'package:concessionaria_flutter/repositories/repository_dao_interface.dart';
import 'package:floor/floor.dart';

@dao
abstract class VeiculoRepositoryDao extends IRepositoryDaoInterface<VeiculoEntity> {
  @Query('SELECT * FROM Veiculos WHERE id = :id')
  Stream<VeiculoEntity?> getById(int id);

  @Query('SELECT * FROM Veiculos')
  Future<List<VeiculoEntity>> getAll();
}