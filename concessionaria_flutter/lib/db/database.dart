import 'dart:async';
import 'package:concessionaria_flutter/entitys/veiculo_entity.dart';
import 'package:concessionaria_flutter/repositories/interfaces/veiculo_repository_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [VeiculoEntity])
abstract class AppDatabase extends FloorDatabase {
    
    VeiculoRepositoryDao get veiculoRepositoryDao;
}

